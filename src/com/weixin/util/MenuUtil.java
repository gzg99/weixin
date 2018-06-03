package com.weixin.util;

import java.util.HashMap;
import java.util.Map;

import net.sf.json.JSONObject;

import com.weixin.controller.WxSettingController;
import com.weixin.entity.Token;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * @author liufeng
 * @date 2013-10-17
 */
public class MenuUtil extends StringUtil{
	private static Logger log = LoggerFactory.getLogger(MenuUtil.class);

	// 调用接口获取凭证
	public static  Map<String,Object>  createMenu(Map<String,Object> map) {
		boolean result = false;
		
		WxSettingController wc= new WxSettingController(); //获取数据库appid等微信参数
		CommonUtil commonUtil = new CommonUtil();
		StringUtil st = new StringUtil();
		Token token = commonUtil.getToken(st.getSetting().getAppid(), st.getSetting().getAppsecret());
		String url = menu_create_url.replace("ACCESS_TOKEN", token.getAccessToken());
		String jsonMenu = JSONObject.fromObject(map).toString();
		log.info("生成需传给微信的菜单jsonStr="+jsonMenu);
		JSONObject jsonObject = CommonUtil.httpsRequest(url, "POST", jsonMenu);
		log.info("jsonObject="+jsonObject);
		String msg = "";
		if (null != jsonObject) {
			int errorCode = jsonObject.getInt("errcode");
			String errorMsg = jsonObject.getString("errmsg");
			
			if (0 == errorCode) {
				result = true;
				msg = "creat menu is OK!";
			} else {
				result = false;
				msg = "creat menu is errcode:{} errmsg:{}"+ errorCode+ errorMsg;
			}
		}
		Map<String,Object> rsMap = new HashMap<String, Object>();
		rsMap.put("rs", result);
		rsMap.put("message", msg);
		return rsMap;
	}

}