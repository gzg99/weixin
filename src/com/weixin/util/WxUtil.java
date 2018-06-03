package com.weixin.util;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;
import org.apache.log4j.Logger;
import com.weixin.entity.WeixinUserInfo;

public class WxUtil extends StringUtil {
	
	private static Logger log = Logger.getLogger(WxUtil.class);

	public static Map<String, Object> oppen_id(HttpServletRequest request, HttpSession session) {
		String oppen_id = "";
		String code="";
		String access_token="";
		StringUtil st = new StringUtil();
//		if (session.getAttribute("oppen_id") == null) {

			code = (String) request.getParameter("code");// 获取code值
			System.out.println("------------------------------------");
			System.out.println("code=" + code);
			System.out.println("------------------------------------");
			if (code != null) {
				String token_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="
						+ st.getSetting().getAppid()
						+ "&secret="
						+ st.getSetting().getAppsecret()
						+ "&code="
						+ code
						+ "&grant_type=authorization_code";
				// 获取用户的openid
				JSONObject json = new JSONObject();
				json = CommonUtil.httpsRequest(token_url, "GET", null);
				if (json != null) {
					oppen_id = json.getString("openid");
					access_token=json.getString("access_token");
					log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
					log.info(json);
				}
			}
//		} else {
//			oppen_id = (String) session.getAttribute("oppen_id");
//		}
		Map<String, Object> map = new HashMap<>();
		map.put("code",code);
		map.put("oppen_id",oppen_id);
		map.put("access_token",access_token);
		log.info("code=="+code);
		return map;
	}
	

	
	public static Map<String, Object> oppenIdInfo(HttpServletRequest request,
			HttpSession session) {
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			if (session.getAttribute("oppen_id") == null) {
				
				Map<String, Object> map2  = WxUtil.oppen_id(request, session);
			//	String code  = (String) map2.get("code");
				String oppen_id = (String) map2.get("oppen_id");
				String access_token  = (String) map2.get("access_token");
				WeixinUserInfo wxi = new WeixinUserInfo();

				log.info("--------------------");
				log.info("oppen_id====" + oppen_id+"......accessToken====" + access_token);
				wxi = AdvancedUtil.getUserInfo(access_token, oppen_id);
				// username = URLEncoder.encode(wxi.getNickname(), "utf-8");
				String realname = wxi.getNickname();
				String head_img = wxi.getHeadImgUrl();
				log.info("realname==" + realname+"....head_img_url=" + head_img);
//				session.setAttribute("realname", realname);
//				session.setAttribute("head_img", head_img_url);
//				session.setAttribute("oppen_id", oppen_id);
				map.put("realname", realname);
				map.put("head_img", head_img);
				map.put("oppen_id", oppen_id);
			}
			return map;
		} catch (Exception e) {
			e.getStackTrace();
			return null;
		}

	}
	
	/**
	 * 发起https请求并获取结果
	 * 
	 * @param requestUrl 请求地址
	 * @param requestMethod 请求方式（GET、POST）
	 * @param outputStr 提交的数据
	 * @return JSONObject(通过JSONObject.get(key)的方式获取json对象的属性值)
	 */
	public static JSONObject httpRequest(String requestUrl, String requestMethod, String outputStr) {
		JSONObject jsonObject = null;
		StringBuffer buffer = new StringBuffer();
		try {
			// 创建SSLContext对象，并使用我们指定的信任管理器初始化
			TrustManager[] tm = { new MyX509TrustManager() };
			SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
			sslContext.init(null, tm, new java.security.SecureRandom());
			// 从上述SSLContext对象中得到SSLSocketFactory对象
			SSLSocketFactory ssf = sslContext.getSocketFactory();

			URL url = new URL(requestUrl);
			HttpsURLConnection httpUrlConn = (HttpsURLConnection) url.openConnection();
			httpUrlConn.setSSLSocketFactory(ssf);

			httpUrlConn.setDoOutput(true);
			httpUrlConn.setDoInput(true);
			httpUrlConn.setUseCaches(false);
			// 设置请求方式（GET/POST）
			httpUrlConn.setRequestMethod(requestMethod);

			if ("GET".equalsIgnoreCase(requestMethod))
				httpUrlConn.connect();

			// 当有数据需要提交时
			if (null != outputStr) {
				OutputStream outputStream = httpUrlConn.getOutputStream();
				// 注意编码格式，防止中文乱码
				outputStream.write(outputStr.getBytes("UTF-8"));
				outputStream.close();
			}

			// 将返回的输入流转换成字符串
			InputStream inputStream = httpUrlConn.getInputStream();
			InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
			BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

			String str = null;
			while ((str = bufferedReader.readLine()) != null) {
				buffer.append(str);
			}
			bufferedReader.close();
			inputStreamReader.close();
			// 释放资源
			inputStream.close();
			inputStream = null;
			httpUrlConn.disconnect();
			jsonObject = JSONObject.fromObject(buffer.toString());
		} catch (ConnectException ce) {
			log.error("Weixin server connection timed out.");
		} catch (Exception e) {
			log.error("https request error:{}", e);
		}
		return jsonObject;
	}
	
}

