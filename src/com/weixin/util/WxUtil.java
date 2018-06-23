package com.weixin.util;

import com.weixin.entity.WeixinUserInfo;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.ConnectException;
import java.net.URL;
import java.security.SecureRandom;
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

public class WxUtil extends StringUtil
{
  private static Logger log = Logger.getLogger(WxUtil.class);

  public static String appid = "wx5701316c42c28f35";
  public static String appsecret = "9a7453a64e84658c1b4acfecec98024d";
  public static String link = "http://i.365jdb.cn";

  public static Map<String, Object> oppen_id(HttpServletRequest request, HttpSession session)
  {
    String oppen_id = "";
    String code = "";
    String access_token = "";

    code = request.getParameter("code");
    System.out.println("------------------------------------");
    System.out.println("code=" + code);
    System.out.println("------------------------------------");
    if (code != null) {
      String token_url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + 
        appid + 
        "&secret=" + 
        appsecret + 
        "&code=" + 
        code + 
        "&grant_type=authorization_code";

      JSONObject json = new JSONObject();
      json = CommonUtil.httpsRequest(token_url, "GET", null);
      if (json != null) {
        oppen_id = json.getString("openid");
        access_token = json.getString("access_token");
        log.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        log.info(json);
      }

    }

    Map map = new HashMap();
    map.put("code", code);
    map.put("oppen_id", oppen_id);
    map.put("access_token", access_token);
    log.info("code==" + code);
    return map;
  }

  public static Map<String, Object> oppenIdInfo(HttpServletRequest request, HttpSession session)
  {
    try {
      Map map = new HashMap();
      if (session.getAttribute("oppen_id") == null)
      {
        Map map2 = oppen_id(request, session);

        String oppen_id = (String)map2.get("oppen_id");
        String access_token = (String)map2.get("access_token");
        WeixinUserInfo wxi = new WeixinUserInfo();

        log.info("--------------------");
        log.info("oppen_id====" + oppen_id + "......accessToken====" + access_token);
        wxi = AdvancedUtil.getUserInfo(access_token, oppen_id);

        String realname = wxi.getNickname();
        String head_img = wxi.getHeadImgUrl();
        log.info("realname==" + realname + "....head_img_url=" + head_img);

        map.put("realname", realname);
        map.put("head_img", head_img);
        map.put("oppen_id", oppen_id);
      }
      return map;
    } catch (Exception e) {
      e.getStackTrace();
    }return null;
  }

  public static JSONObject httpRequest(String requestUrl, String requestMethod, String outputStr)
  {
    JSONObject jsonObject = null;
    StringBuffer buffer = new StringBuffer();
    try
    {
      TrustManager[] tm = { new MyX509TrustManager() };
      SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
      sslContext.init(null, tm, new SecureRandom());

      SSLSocketFactory ssf = sslContext.getSocketFactory();

      URL url = new URL(requestUrl);
      HttpsURLConnection httpUrlConn = (HttpsURLConnection)url.openConnection();
      httpUrlConn.setSSLSocketFactory(ssf);

      httpUrlConn.setDoOutput(true);
      httpUrlConn.setDoInput(true);
      httpUrlConn.setUseCaches(false);

      httpUrlConn.setRequestMethod(requestMethod);

      if ("GET".equalsIgnoreCase(requestMethod)) {
        httpUrlConn.connect();
      }

      if (outputStr != null) {
        OutputStream outputStream = httpUrlConn.getOutputStream();

        outputStream.write(outputStr.getBytes("UTF-8"));
        outputStream.close();
      }

      InputStream inputStream = httpUrlConn.getInputStream();
      InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
      BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

      String str = null;
      while ((str = bufferedReader.readLine()) != null) {
        buffer.append(str);
      }
      bufferedReader.close();
      inputStreamReader.close();

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