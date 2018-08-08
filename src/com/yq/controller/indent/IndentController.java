package com.yq.controller.indent;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.weixin.pay.action.NotifyServlet;
import com.weixin.pay.action.TopayServlet;
import com.weixin.pay.util.GetWxOrderno;
import com.yq.entity.Address;
import com.yq.entity.Area;
import com.yq.entity.Cart;
import com.yq.entity.CartBuild;
import com.yq.entity.GoodsBuild;
import com.yq.entity.Order;
import com.yq.entity.User;
import com.yq.entity.indent.JdbIndent;
import com.yq.service.AddressService;
import com.yq.service.AreaService;
import com.yq.service.CartBuildService;
import com.yq.service.GoodsBuildService;
import com.yq.service.UserService;
import com.yq.service.indent.IndentService;
import com.yq.util.ExcelUtil;
import com.yq.util.PageUtil;
import com.yq.util.StringUtil;

import net.sf.json.JSONArray;

/**
 * 订单管理
 * 
 * @author 超
 *
 */
@Controller
@RequestMapping
public class IndentController extends StringUtil{

	@Autowired
	IndentService indentService;
	
	@Autowired
	private AddressService addressService;
	
	@Autowired
	private GoodsBuildService goodsBuildService;
	
	@Autowired
	private CartBuildService cartBuildService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AreaService areaService;

	/**
	 * 订单列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "main/indent/indentList.html")
	public ModelAndView indentList(HttpServletRequest request, JdbIndent jdbIndent) {

		Map<String,Object> idMap = this.getSeeion(request);
		jdbIndent.setUserId(idMap.get("id").toString());
		Map<String, Object> indentList = indentService.selectIndentByList(jdbIndent);
		PageUtil.pager(jdbIndent.getCurrentPage(), 10, Integer.parseInt(indentList.get("total").toString()), request);
		ModelAndView view = new ModelAndView("main/indent/indentList");
		view.addObject("indentList", indentList.get("listIndent"));
		view.addObject("indentState", jdbIndent.getIndentState());
		view.addObject("Lately", jdbIndent.getLately());

		return view;

	}
	
	/**
	 * 发货查询单条
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "main/indent/selJdbIndent.html")
	@ResponseBody
	public String selJdbIndent(String id) {
		JdbIndent jdbIndent = indentService.selectByPrimaryKey(id);
		JSONArray jsonStrs = JSONArray.fromObject(jdbIndent);
		return jsonStrs.toString();
	}

	/**
	 * 发货,维权
	 * 
	 * @param jdbIndent
	 * @return
	 */
	@RequestMapping(value = "main/indent/deliverGood.html")
	@ResponseBody
	public String deliverGood(JdbIndent jdbIndent) {
		String sess = "0";
		int up = indentService.updateByPrimaryKeySelective(jdbIndent);
		if (up > 0) {
			sess = "1";
		}
		return sess;
	}

	/**
	 * 概况
	 * 
	 * @return
	 */
	@RequestMapping(value = "main/indent/general.html")
	public ModelAndView general() {
		ModelAndView view = new ModelAndView("main/indent/general");
		Map<String, Object> generalSituation = indentService.generalSituation();
		view.addObject("generalSituation", generalSituation);
		return view;
	}

	/**
     * 导出报表
     * @return
     */
	@RequestMapping(value = "main/indent/export.html")
	//@ResponseBody
	public void export(HttpServletRequest request, HttpServletResponse response, JdbIndent jdbIndent) throws Exception {
		// 获取数据
		List<JdbIndent> downloadIndentByList = indentService.downloadIndentByList(jdbIndent);

		// excel标题
		String[] title = new String[]{ "商品", "单价", "数量", "总金额", "买家昵称", "交易状态" };

		// excel文件名
		String fileName = "订单明细表" + System.currentTimeMillis() + ".xls";

		// sheet名
		String sheetName = "订单明细表";
		String[][] content = null;
		
		

		
		content=new String[downloadIndentByList.size()][];
		for (int i = 0; i < downloadIndentByList.size(); i++) {
			content[i] = new String[title.length];
			JdbIndent indent = downloadIndentByList.get(i);
			content[i][0] = indent.getCommodityName();
			content[i][1] = indent.getIndentPrice();
			content[i][2] = indent.getIndentQuantity();
			content[i][3] = indent.getIndentMoney();
			content[i][4] = indent.getIndentNickname();
			content[i][5] = indent.getIndentState();
		}

		// 创建HSSFWorkbook
		HSSFWorkbook wb = ExcelUtil.getHSSFWorkbook(sheetName, title, content, null);

		// 响应到客户端
		try {
			this.setResponseHeader(response, fileName);
			OutputStream os = response.getOutputStream();
			wb.write(os);
			os.flush();
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 发送响应流方法
	public void setResponseHeader(HttpServletResponse response, String fileName) {
		try {
			try {
				fileName = new String(fileName.getBytes(), "ISO8859-1");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			response.setContentType("application/octet-stream;charset=ISO8859-1");
			response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
			response.addHeader("Pargam", "no-cache");
			response.addHeader("Cache-Control", "no-cache");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	/**
	 * 商品直接下订单
	 * 
	 * @param oppen_id
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/page/goodsBuildOrderSure.html")
	public ModelAndView goodsOrder(Long goods_id, Integer goods_num,
			@RequestParam(defaultValue = "0") Integer cps_id, @RequestParam(defaultValue = "0") Integer addr_id,
			String cps_name, @RequestParam(defaultValue = "0") Float cps_price, HttpSession session) {
		ModelAndView ml = new ModelAndView();
		//CartBuild cart = new CartBuild();
		String oppen_id = getOppen_id(session);
		//cart.setOppen_id(oppen_id);
		//List<Cart> list = cartBuildService.list(cart); // 获取订单信息
		//Float tprice = cartBuildService.goodstotalprice(cart);// 总价
		//int tnum = cartBuildService.goodstotalnum(cart);// 总数量
		GoodsBuild goodsBuild = goodsBuildService.getGoodsBuildById(goods_id); // 获取订单信息
		long userId = goodsBuild.getSellerId();
		Float goods_total = goods_num * goodsBuild.getGoodsPrice();// 总价
		Float tprice = goods_num * goodsBuild.getGoodsPrice() + 8;// 总价
		ml.addObject("price", tprice);

		Address address = new Address();
		List<Address> addr = new ArrayList<Address>();
		if (addr_id == 0) {
			address.setOppen_id(oppen_id);
			addr = addressService.list(address);
		} else {
			address.setAddr_id(addr_id);
			addr = addressService.listById(address);
		}
		User user = new User();
		user.setOppen_id(oppen_id);
		List<User> userList = userService.listById(user);
		Area area = new Area();
		area.setStatus(1);
		area.setLevel(0);
		List<Area> areaList = areaService.list(area);
		ml.addObject("goods", goodsBuild);
		ml.addObject("tprice", tprice);
		ml.addObject("addr", addr);
		ml.addObject("tnum", goods_num);
		ml.addObject("cps_id", cps_id);
		ml.addObject("addr_id", addr_id);
		ml.addObject("userList", userList);
		ml.addObject("goods_id", goods_id);
		ml.addObject("goods_total", goods_total);
		ml.addObject("userId", userId);

		ml.addObject("areaList", areaList);
		ml.setViewName("page/goods-build-order-sure");
		return ml;
	}
	
	/**
	 * 插入订单信息
	 * */
	@ResponseBody
	@RequestMapping(value = "page/indentInsert.html")
	public String insert(String goods_id, String goods_name, String goods_price,
			String goods_num, String goods_total, String goods_total_num, String addr_name,
			String userId, HttpSession session) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String add_time = sdf.format(new Date());
			JdbIndent order = new JdbIndent();	
			order.setId(UUID.randomUUID().toString());
			order.setIndentCommodity(goods_id);
			order.setCommodityName(goods_name);
			order.setIndentPrice(goods_price);
			order.setIndentQuantity(goods_num);
			order.setIndentMoney(goods_total);
			order.setIndentCommodityNum(goods_total_num);
			order.setIndentAddress(addr_name);
			order.setUserId(userId);
			order.setIndentTime(add_time);
			order.setIndentState("1");
			order.setOpenId(getOppen_id(session));
			order.setIndentNum(UUID.randomUUID().toString());
			
			Map<String, Object> map = new HashMap<>();
			if(indentService.insert(order) == 1) {
				if (goods_id.contains(",-=")) {
					String[] gids = goods_id.split(",-=");
					for (int i = 0; i < gids.length; i++) {
						map.put("goods_id", gids[i]);
						cartBuildService.delete(map);
					}
				} else {
					map.put("goods_id", goods_id);
					session.setAttribute("cart_num", 0);
					cartBuildService.delete(map);
				}
				return order.getId() + "";
			} else {
				return "0";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}
	}
	
	/**
	 * 确认付款-根据id查询订单
	 * 
	 * @param order_id
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/page/payOrderBuild.html")
	public ModelAndView payOrder(String id, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		JdbIndent order = indentService.selectByPrimaryKey(id);
		Map<String, Object> map = new HashMap<>();
		map.put("order", order);
		ModelAndView ml = new ModelAndView();
		if (order != null) {
			if (order.getIndentMoney() != null) {
				TopayServlet.getIndentPackage(order, request, response, session);
				ml.addObject("map", map);
				ml.setViewName("page/pay-order");
			} else {
				JdbIndent indent = new JdbIndent();
				indent.setIndentState("1");
				indent.setId(id);
				String url = indentService.updateByPrimaryKeySelective(indent) == 1 ? "redirect:orderList.html" : "error";
				ml.setViewName(url);
			}
			return ml;
		} else {
			ml.addObject("error", "payOrder无待支付订单！");
			ml.setViewName("page/error");
			return ml;
		}
	}
	
	/**
	 * 付款后微信返回信息，更改订单状态
	 */
	@RequestMapping(value = "/page/noticeOrderBuild.html")
	public void noticeOrderBuild(HttpServletRequest request) {
		String xmlStr = NotifyServlet.getWxXml(request);
		Map map2 = GetWxOrderno.doXMLParse(xmlStr);
		String return_code = (String) map2.get("return_code");
		String order_id = (String) map2.get("out_trade_no");
		JdbIndent order = indentService.selectByPrimaryKey(order_id);
		Map<String, Object> map = new HashMap<>();
		JdbIndent record = new JdbIndent();
		record.setId(order_id);
		map.put("order_id", order_id);
		record.setIndentState("1");
		if (Integer.parseInt(order.getIndentState()) == 0) {
			if (return_code.equals("SUCCESS")) {
				indentService.updateByPrimaryKeySelective(record);
				map.put("result", "订单支付成功");
				map.put("body", order.getCommodityName().replace("-=", ""));
				map.put("price", order.getIndentPrice() + "");
				map.put("oppen_id", order.getOpenId());
			}
		}
	}
}
