package com.weixin.pay.action;

import com.weixin.pay.util.GetWxOrderno;
import com.weixin.pay.util.RequestHandler;
import com.weixin.pay.util.Sha1Util;
import com.weixin.pay.util.TenpayUtil;
import com.weixin.util.WxUtil;
import com.yq.entity.Order;
import com.yq.entity.indent.JdbIndent;

import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;

public class TopayServlet {
	private static Logger log = Logger.getLogger(TopayServlet.class);

	public static String getPackage(List<Order> list, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	    String goods_name = ((Order)list.get(0)).getGoods_name();
	    if (goods_name.contains("-=")) {
	      goods_name = goods_name.replace("-=", "");
	    }
	    String body = "家滴帮" + goods_name;
	    String orderNo = list.get(0).getOrder_id() + "";
	    float money = ((Order)list.get(0)).getGoods_total().floatValue();
	    int price = (int)(money * 100.0F);
	    String totalFee = price + "";
	
	    String openId = (String)session.getAttribute("oppen_id");
	    String notify_url = WxUtil.link + "/page/noticeOrder.html";
	
	    String currTime = TenpayUtil.getCurrTime();
	
	    String strTime = currTime.substring(8, currTime.length());
	
	    String strRandom = TenpayUtil.buildRandom(4) + "";
	
	    String strReq = strTime + strRandom;
	
	    String mch_id = "1293224901";
	
	    String nonce_str = strReq;
	
	    String out_trade_no = orderNo;
	
	    String spbill_create_ip = "120.27.11.164";
	
	    String trade_type = "JSAPI";
	    String openid = openId;
	
	    String timestamp = Sha1Util.getTimeStamp();
	
	    SortedMap<String, String> packageParams = new TreeMap<>();
	    packageParams.put("appid", WxUtil.appid);
	    packageParams.put("mch_id", mch_id);
	    packageParams.put("nonce_str", nonce_str);
	    packageParams.put("body", body);
	    packageParams.put("out_trade_no", out_trade_no);
	
	    packageParams.put("total_fee", totalFee);
	    packageParams.put("spbill_create_ip", spbill_create_ip);
	    packageParams.put("notify_url", notify_url);
	    packageParams.put("trade_type", trade_type);
	    packageParams.put("openid", openid);
	
	    RequestHandler reqHandler = new RequestHandler(request, response);
	    reqHandler.init(WxUtil.appid, WxUtil.appsecret, "Sdjdb365sdjdb365sdjdb365sdjdb365");
	
	    String sign = reqHandler.createSign(packageParams);
	    String xml = 
	      "<xml><appid>" + 
	      WxUtil.appid + "</appid>" + 
	      "<mch_id>" + mch_id + "</mch_id>" + 
	      "<nonce_str>" + nonce_str + "</nonce_str>" + 
	      "<sign>" + sign + "</sign>" + 
	      "<body><![CDATA[" + body + "]]></body>" + 
	      "<out_trade_no>" + out_trade_no + "</out_trade_no>" + 
	      "<total_fee>" + totalFee + "</total_fee>" + 
	      "<spbill_create_ip>" + spbill_create_ip + "</spbill_create_ip>" + 
	      "<notify_url>" + notify_url + "</notify_url>" + 
	      "<trade_type>" + trade_type + "</trade_type>" + 
	      "<openid>" + openid + "</openid>" + 
	      "</xml>";
	    String createOrderURL = "https://api.mch.weixin.qq.com/pay/unifiedorder";
	    String prepay_id = "";
	
	    prepay_id = GetWxOrderno.getPayNo(createOrderURL, xml);
	
	    SortedMap<String, String> finalpackage = new TreeMap<>();
	
	    String nonceStr2 = nonce_str;
	    String prepay_id2 = "prepay_id=" + prepay_id;
	    String packages = prepay_id2;
	    finalpackage.put("appId", WxUtil.appid);
	    finalpackage.put("timeStamp", timestamp);
	    finalpackage.put("nonceStr", nonceStr2);
	    finalpackage.put("package", packages);
	    finalpackage.put("signType", "MD5");
	    String finalsign = reqHandler.createSign(finalpackage);
	
	    request.setAttribute("appId", WxUtil.appid);
	    request.setAttribute("timeStamp", timestamp);
	    request.setAttribute("nonceStr", nonceStr2);
	    request.setAttribute("package", packages);
	    request.setAttribute("signType", "MD5");
	    request.setAttribute("paySign", finalsign);
	    request.setAttribute("prepay_id", prepay_id);
	    return "";
	}
	
	public static String getIndentPackage(JdbIndent indent, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
	    String goodsName = indent.getCommodityName();
	    if (goodsName.contains("-=")) {
	    	goodsName = goodsName.replace("-=", "");
	    }
	    String body = "家滴帮" + goodsName;
	    String orderNo = indent.getId() + "";
	    float money = Float.parseFloat(indent.getIndentMoney());
	    int price = (int)(money * 100.0F);
	    String totalFee = price + "";
	
	    String openId = (String)session.getAttribute("oppen_id");
	    String notify_url = WxUtil.link + "/page/noticeOrderBuild.html";
	
	    String currTime = TenpayUtil.getCurrTime();
	
	    String strTime = currTime.substring(8, currTime.length());
	
	    String strRandom = TenpayUtil.buildRandom(4) + "";
	
	    String strReq = strTime + strRandom;
	
	    String mch_id = "1293224901";
	
	    String nonce_str = strReq;
	
	    String out_trade_no = orderNo;
	
	    String spbill_create_ip = "120.27.11.164";
	
	    String trade_type = "JSAPI";
	    String openid = openId;
	
	    String timestamp = Sha1Util.getTimeStamp();
	
	    SortedMap<String, String> packageParams = new TreeMap<>();
	    packageParams.put("appid", WxUtil.appid);
	    packageParams.put("mch_id", mch_id);
	    packageParams.put("nonce_str", nonce_str);
	    packageParams.put("body", body);
	    packageParams.put("out_trade_no", out_trade_no);
	
	    packageParams.put("total_fee", totalFee);
	    packageParams.put("spbill_create_ip", spbill_create_ip);
	    packageParams.put("notify_url", notify_url);
	    packageParams.put("trade_type", trade_type);
	    packageParams.put("openid", openid);
	
	    RequestHandler reqHandler = new RequestHandler(request, response);
	    reqHandler.init(WxUtil.appid, WxUtil.appsecret, "Sdjdb365sdjdb365sdjdb365sdjdb365");
	
	    String sign = reqHandler.createSign(packageParams);
	    String xml = 
	      "<xml><appid>" + 
	      WxUtil.appid + "</appid>" + 
	      "<mch_id>" + mch_id + "</mch_id>" + 
	      "<nonce_str>" + nonce_str + "</nonce_str>" + 
	      "<sign>" + sign + "</sign>" + 
	      "<body><![CDATA[" + body + "]]></body>" + 
	      "<out_trade_no>" + out_trade_no + "</out_trade_no>" + 
	      "<total_fee>" + totalFee + "</total_fee>" + 
	      "<spbill_create_ip>" + spbill_create_ip + "</spbill_create_ip>" + 
	      "<notify_url>" + notify_url + "</notify_url>" + 
	      "<trade_type>" + trade_type + "</trade_type>" + 
	      "<openid>" + openid + "</openid>" + 
	      "</xml>";
	    String createOrderURL = "https://api.mch.weixin.qq.com/pay/unifiedorder";
	    String prepay_id = "";
	
	    prepay_id = GetWxOrderno.getPayNo(createOrderURL, xml);
	
	    SortedMap<String, String> finalpackage = new TreeMap<>();
	
	    String nonceStr2 = nonce_str;
	    String prepay_id2 = "prepay_id=" + prepay_id;
	    String packages = prepay_id2;
	    finalpackage.put("appId", WxUtil.appid);
	    finalpackage.put("timeStamp", timestamp);
	    finalpackage.put("nonceStr", nonceStr2);
	    finalpackage.put("package", packages);
	    finalpackage.put("signType", "MD5");
	    String finalsign = reqHandler.createSign(finalpackage);
	
	    request.setAttribute("appId", WxUtil.appid);
	    request.setAttribute("timeStamp", timestamp);
	    request.setAttribute("nonceStr", nonceStr2);
	    request.setAttribute("package", packages);
	    request.setAttribute("signType", "MD5");
	    request.setAttribute("paySign", finalsign);
	    request.setAttribute("prepay_id", prepay_id);
	    return "";
	}
	
}