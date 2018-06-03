package com.weixin.util;

import com.weixin.entity.Button;
import com.weixin.entity.ViewButton;

import net.sf.json.JSONException;
import net.sf.json.JSONObject;

public class MenuManager {

	// 获取access_token的接口地址（GET） 限200（次/天）
	public final static String access_token_url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";

	// 菜单创建（POST） 限100（次/天）
	public static String menu_create_url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN";
	
	public static void create() {
		
		String appId = "wx436069c527edf514";
		
		String appSecret = "821e0fd24c826d9347903fb4c22160af";
		
		AccessToken token = getAccessToken(appId, appSecret);

		if (null != token) {
			createMenu(getMenu(), token.getAccessToken());
		}
	}
	
	/**
	 * 获取access_token
	 * 
	 * @param appid 凭证
	 * @param appsecret 密钥
	 * @return
	 */
	public static AccessToken getAccessToken(String appid, String appsecret) {
		AccessToken accessToken = null;

		String requestUrl = access_token_url.replace("APPID", appid).replace("APPSECRET", appsecret);
		JSONObject jsonObject = WxUtil.httpRequest(requestUrl, "GET", null);
		// 如果请求成功
		if (null != jsonObject) {
			try {
				accessToken = new AccessToken();
				accessToken.setAccessToken(jsonObject.getString("access_token"));
				accessToken.setExpiresIn(jsonObject.getInt("expires_in"));
			} catch (JSONException e) {
				accessToken = null;
				// 获取token失败
				//log.error("获取token失败 errcode:{} errmsg:{}", jsonObject.getInt("errcode"), jsonObject.getString("errmsg"));
			}
		}
		return accessToken;
	}
	
	public static int createMenu(Menu menu, String accessToken) {
		int result = 0;

		// 拼装创建菜单的url
		String url = menu_create_url.replace("ACCESS_TOKEN", accessToken);
		// 将菜单对象转换成json字符串
		String jsonMenu = JSONObject.fromObject(menu).toString();
		// 调用接口创建菜单
		JSONObject jsonObject = WxUtil.httpRequest(url, "POST", jsonMenu);

		if (null != jsonObject) {
			if (0 != jsonObject.getInt("errcode")) {
				result = jsonObject.getInt("errcode");
				//log.error("创建菜单失败 errcode:{} errmsg:{}", jsonObject.getInt("errcode"), jsonObject.getString("errmsg"));
			}
		}

		return result;
	}
	
	/**
	 * 
	 * @return
	 */
	private static Menu getMenu() {
		ViewButton btn11 = new ViewButton();
		btn11.setName("微信商城");
		btn11.setType("view");
		btn11.setUrl("http://www.bjjkkj.com/page/index.html");
//		ComplexButton mainBtn1 = new ComplexButton();
//		mainBtn1.setName("微信商城");
//		mainBtn1.setSub_button1(new Button[] { btn11});

		Menu menu = new Menu();
		menu.setButton(new Button[] { btn11});

		return menu;
	}


}
