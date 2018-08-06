package com.yq.controller.indent;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.yq.entity.Address;
import com.yq.entity.Area;
import com.yq.entity.CartBuild;
import com.yq.entity.GoodsBuild;
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
@RequestMapping(value = "main/indent")
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
	@RequestMapping(value = "/indentList.html")
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
	@RequestMapping(value = "/selJdbIndent.html")
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
	@RequestMapping(value = "/deliverGood.html")
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
	@RequestMapping(value = "/general.html")
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
	@RequestMapping(value = "/export.html")
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
			String cps_name, @RequestParam(defaultValue = "0") Float cps_price, String oppen_id, HttpSession session) {
		ModelAndView ml = new ModelAndView();
		CartBuild cart = new CartBuild();
		GoodsBuild goods = new GoodsBuild();
		oppen_id = getOppen_id(session);
		cart.setOppen_id(oppen_id);
		GoodsBuild goodsBuild = goodsBuildService.getGoodsBuildById(goods_id); // 获取订单信息
		long userId = goodsBuild.getSellerId();
		Float goods_total = goods_num * goodsBuild.getGoodsPrice();// 总价
		Float tprice = goods_num * goodsBuild.getGoodsPrice();// 总价
		ml.addObject("price", tprice); //
		int tnum = cartBuildService.goodstotalnum(cart);// 总数量

		Address address = new Address();
		List<Address> addr = new ArrayList<Address>();
		if (addr_id == 0) {
			address.setOppen_id(oppen_id);
			addr = addressService.list(address);
		} else {
			address.setAddr_id(addr_id);
			addr = addressService.listById(address);
		}
//		if (fgt.size() > 0) {
//			if (tprice < fgt.get(0).getFree_price()) {
//				tprice = tprice + fgt.get(0).getFgt_price(); // 如果总价小于免邮价，则加上运费
//				ml.addObject("fgt_price", fgt.get(0).getFgt_price());
//			} else {
//				ml.addObject("fgt_price", 0);// 免运费
//			}
//		}
		User user = new User();
		user.setOppen_id(oppen_id);
		List<User> userList = userService.listById(user);
		Area area = new Area();
		area.setStatus(1);
		area.setLevel(0);
		List<Area> areaList = areaService.list(area);
		ml.addObject("goods", goods);
		ml.addObject("tprice", tprice);
		ml.addObject("addr", addr);
		ml.addObject("tnum", goods_num);
		ml.addObject("cps_id", cps_id);
		ml.addObject("addr_id", addr_id);
		ml.addObject("userList", userList);
		ml.addObject("goods_id", goods_id);
		ml.addObject("goods_num", goods_num);
		ml.addObject("goods_total", goods_total);
		ml.addObject("userId", userId);

		ml.addObject("tnum", tnum);
		ml.addObject("areaList", areaList);
		ml.setViewName("page/goods-build-order-sure");
		return ml;
	}
	
	/**
	 * 插入订单信息
	 * */
	@ResponseBody
	@RequestMapping(value = "/page/indentInsert.html")
	public String insert(String goods_id, String goods_name, String goods_img, String goods_spe, String goods_price,
			String goods_num, String goods_total, String goods_total_num, String cps_id, String cps_name,
			@RequestParam(defaultValue = "0") String cps_price, String addr_name, String oppen_id,
			String status,String userId, HttpSession session) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String add_time = sdf.format(new Date());
			oppen_id = getOppen_id(session);
			JdbIndent order = new JdbIndent();	
			order.setIndentCommodity(goods_id);
			order.setCommodityName(goods_name);
			//order.setGoods_img(goods_img);
			order.setIndentPrice(goods_price);
			order.setIndentQuantity(goods_num);
			order.setIndentMoney(goods_total);
			order.setIndentCommodityNum(Integer.parseInt(goods_total_num));
			order.setIndentAddress(addr_name);
			order.setUserId(userId);
			order.setOpenId(oppen_id);
			order.setIndentTime(add_time);
			order.setIndentState("1");
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
}
