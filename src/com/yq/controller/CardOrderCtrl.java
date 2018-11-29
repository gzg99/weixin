package com.yq.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.weixin.pay.action.NotifyServlet;
import com.weixin.pay.util.GetWxOrderno;
import com.weixin.pay.util.RequestHandler;
import com.weixin.pay.util.Sha1Util;
import com.weixin.pay.util.TenpayUtil;
import com.weixin.util.WxUtil;
import com.yq.entity.Card;
import com.yq.entity.CardOrder;
import com.yq.service.CardOrderService;
import com.yq.service.CardService;
import com.yq.util.PageUtil;

import net.sf.json.JSONArray;

/**
 * 家居卡管理
 * */
@Controller
@RequestMapping("/")
public class CardOrderCtrl {

	@Autowired
	private CardOrderService service;
	
	@Autowired
	private CardService cardService;
	
	@RequestMapping(value = "main/getCardOrderList.html")
	@ResponseBody
	public ModelAndView getCardOrderList(int pageNo, ModelAndView mv, HttpServletRequest request) {
		int pageSize = 10;
		int total = service.count();
		PageUtil.pager(pageNo, pageSize, total, request);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", PageUtil.currentNum(pageNo, pageSize));
		map.put("pageSize", pageSize);
		List<CardOrder> list = service.findAll(map);
		mv.addObject("cards", list);
		mv.setViewName("main/card/cardOrderList");
		return mv;
	}
	
	@RequestMapping(value = "page/getCardOrderByPhone.html")
	public void getCardOrderByPhone(Long userPhone, HttpServletResponse response) {
		List<CardOrder> list = service.findByUserPhone(userPhone);
		JSONArray json = JSONArray.fromObject(list);
//		return gson.toJson(map);
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		try {
			response.getWriter().write(json.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "main/addCardOrderjsp.html")
	public ModelAndView addCardOrderjsp() {
		
		return new ModelAndView("main/card/add");
	}
	
	@ResponseBody
	@RequestMapping(value = "page/cardOrderInsert.html")
	public String cardInsert(Long userPhone,String userAddr,String cardName, Long cardNum, 
			float cardPrice, String comment, String code, String type, HttpSession session) throws IOException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// 短信验证码
		int phoneValideCode = (int) session.getAttribute(userPhone + "Code");
		long codeTime = (long) session.getAttribute(userPhone + "Time");
		// 当前时间
		long time = new Date().getTime();
		if((time-codeTime)/1000>60){
			return "time";
		}
		if(Integer.parseInt(code) != phoneValideCode){
			return "error";
		}

		CardOrder card = new CardOrder();
		card.setCardName(cardName);
		card.setAddTime(sdf.format(new Date()));
		card.setUserPhone(userPhone);
		card.setUserAddr(userAddr);
		card.setCardNum(cardNum);
		card.setUpdateTime(sdf.format(new Date()));
		card.setCardPrice(cardPrice);
		card.setStatus(0);
		card.setType(type);

		card.setComment(comment);
		service.insert(card);
		return card.getId() + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "page/cardOrderInsertlr.html")
	public String cardInsertlr(Long userPhone,String userAddr,String cardName, String lrName, 
			float cardPrice, String lrSfzh,String lrPhone,String lrRelatetion,String code, HttpSession session) throws IOException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// 短信验证码
		int phoneValideCode = (int) session.getAttribute(userPhone + "Code");
		long codeTime = (long) session.getAttribute(userPhone + "Time");
		// 当前时间
		long time = new Date().getTime();
		if((time-codeTime)/1000>60){
			return "time";
		}
		if(Integer.parseInt(code) != phoneValideCode){
			return "error";
		}

		CardOrder card = new CardOrder();
//		card.setCardNum(cardNum);
		card.setCardName(cardName);
		card.setAddTime(sdf.format(new Date()));
		card.setUserPhone(userPhone);
		card.setUserAddr(userAddr);
		card.setLrName(lrName);
		card.setUpdateTime(sdf.format(new Date()));
		card.setCardPrice(cardPrice);
		card.setStatus(0);
		card.setLrSfzh(lrSfzh);
		card.setLrPhone(lrPhone);
		card.setLrName(lrName);
		card.setLrRelatetion(lrRelatetion);
		return service.insert(card) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "main/cardOrderUpdate.html")
	public String cardOrderUpdate(Long cardId,String cardName, String cardImg, Float cardPrice, String cardDetail) {
		CardOrder card = new CardOrder();
		card.setCardName(cardName);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		card.setUpdateTime(sdf.format(new Date()));
		return service.update(card) + "";
	}
	
	
	/**
	 * 根据id查询详情
	 * */
	@RequestMapping(value = "/main/findCardOrderById.html")
	public ModelAndView findCardOrderById(Long id) throws Exception {
		try {
			CardOrder card = service.findById(id);
			ModelAndView ml = new ModelAndView();
			ml.addObject("card", card);
			ml.setViewName("main/card/info");
			return ml;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * 卡券列表
	 * */
	@RequestMapping(value = "/page/cardOrderList.html")
	public ModelAndView list(@RequestParam(defaultValue = "1") Integer currentPage, HttpServletRequest request) throws UnsupportedEncodingException {
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", PageUtil.currentNum(currentPage, 10));
			map.put("pageSize", 10);
			List<CardOrder> list = service.findAll(map);
			ModelAndView ml = new ModelAndView();
			ml.addObject("CardOrder", list);
			ml.setViewName("page/ajk_index");
			return ml;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * 删除卡券
	 * */
	@RequestMapping(value = "/main/deleteCardOrderById.html")
	public String deleteCardOrderById(Long id) throws Exception {
		try {
			boolean b = service.delete(id);
			return b + "";
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 确认付款
	 * 
	 * @param order_id
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/page/payCardOrder.html")
	public ModelAndView payOrder(Long id, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		ModelAndView ml = new ModelAndView();
		CardOrder order = service.findById(id);
		getPackage(order, request, response, session);
		ml.addObject("cardOrder", order);
		//获取card
		Card card = cardService.getCardByName(order.getCardName());
		ml.addObject("card", card);
		ml.setViewName("page/pay-cardOrder");
		return ml;
	}
	
	public static String getPackage(CardOrder order,HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		// 商品描述根据情况修改
		String goods_name = order.getCardName();
		String body = goods_name;
		String orderNo = order.getId() + "";
		float money = order.getCardPrice();
		int price = (int) (money*100);
		String totalFee = price+"";
		String openId = (String) session.getAttribute("oppen_id");
		String notify_url = WxUtil.link + "/page/noticeCardOrder.html";
		String currTime = TenpayUtil.getCurrTime();
		// 8位日期
		String strTime = currTime.substring(8, currTime.length());
		// 四位随机数
		String strRandom = TenpayUtil.buildRandom(4) + "";
		// 10位序列号,可以自行调整。
		String strReq = strTime + strRandom;

		// 商户号
		 String mch_id = "1293224901";
		// 随机数
		String nonce_str = strReq;
		// 附加数据
		String attach = "";
		// 商户订单号
		String out_trade_no = orderNo;

		String spbill_create_ip = "127.0.0.1";

		String trade_type = "JSAPI";
		String openid = openId;
	
		SortedMap<String, String> packageParams = new TreeMap<String, String>();
		packageParams.put("appid", WxUtil.appid);
	    packageParams.put("mch_id", mch_id);
		packageParams.put("nonce_str", nonce_str);
		packageParams.put("body", body);
		packageParams.put("attach", attach);
		packageParams.put("out_trade_no", out_trade_no);

		packageParams.put("total_fee", totalFee);
		packageParams.put("spbill_create_ip", spbill_create_ip);
		packageParams.put("notify_url", notify_url);
		packageParams.put("trade_type", trade_type);
		packageParams.put("openid", openid);

		RequestHandler reqHandler = new RequestHandler(
				request,
				response);
		reqHandler.init(WxUtil.appid, WxUtil.appsecret, "Sdjdb365sdjdb365sdjdb365sdjdb365");

		String sign = reqHandler.createSign(packageParams);
		String xml = "<xml>" + "<appid>" + WxUtil.appid + "</appid>" + "<mch_id>"
				+ mch_id + "</mch_id>" + "<nonce_str>" + nonce_str
				+ "</nonce_str>" + "<sign>" + sign + "</sign>"
				+ "<body><![CDATA[" + body + "]]></body>" + "<attach>" + attach
				+ "</attach>"
				+ "<out_trade_no>"
				+ out_trade_no
				+ "</out_trade_no>"
				+
				// 金额，这里写的1 分到时修改
				"<total_fee>"
				+ totalFee
				+ "</total_fee>"
				+
				"<spbill_create_ip>" + spbill_create_ip + "</spbill_create_ip>"
				+ "<notify_url>" + notify_url + "</notify_url>"
				+ "<trade_type>" + trade_type + "</trade_type>" + "<openid>"
				+ openid + "</openid>" + "</xml>";

		String createOrderURL = "https://api.mch.weixin.qq.com/pay/unifiedorder";
		String prepay_id = "";
		
		prepay_id = GetWxOrderno.getPayNo(createOrderURL, xml);
			
		SortedMap<String, String> finalpackage = new TreeMap<String, String>();
		
		String timestamp = Sha1Util.getTimeStamp();
		String nonceStr2 = nonce_str;
		String prepay_id2 = "prepay_id=" + prepay_id;
		String packages = prepay_id2;
		finalpackage.put("appId", WxUtil.appid);
		finalpackage.put("timeStamp", timestamp);
		finalpackage.put("nonceStr", nonceStr2);
		finalpackage.put("package", packages);
		finalpackage.put("signType", "MD5");
		String finalsign = reqHandler.createSign(finalpackage);
		finalpackage.put("appId", WxUtil.appid);
		request.setAttribute("timeStamp", timestamp);
		request.setAttribute("nonceStr", nonceStr2);
		request.setAttribute("package", packages);
		request.setAttribute("signType", "MD5");
		request.setAttribute("paySign", finalsign);
		request.setAttribute("prepay_id", prepay_id);
		return "";
	}
	
	/**
	 * 付款后微信返回信息，更改订单状态
	 */
	@RequestMapping(value = "/page/noticeCardOrder.html")
	public void noticeCardOrder(HttpServletRequest request) {
		String xmlStr = NotifyServlet.getWxXml(request);
		Map<String, Object> map = new HashMap<String, Object>();
		Map map2 = GetWxOrderno.doXMLParse(xmlStr);
		String return_code = (String) map2.get("return_code");
		String id = (String) map2.get("out_trade_no");
		CardOrder order = service.findById(Long.parseLong(id));
		map.put("id", id);
		map.put("status", 1);
		if (order.getStatus() == 0) {
			if (return_code.equals("SUCCESS")) {
				service.upstatus(map);
				map.put("result", "订单支付成功");
				map.put("body", order.getCardName());
				map.put("price", order.getCardPrice());
				map.put("oppen_id", "");
			}
		}
	}
	
}
