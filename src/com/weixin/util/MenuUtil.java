package com.weixin.util;

import com.weixin.entity.Token;
import java.util.HashMap;
import java.util.Map;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MenuUtil extends StringUtil
{
  private static Logger log = LoggerFactory.getLogger(MenuUtil.class);

  public static Map<String, Object> createMenu(Map<String, Object> map)
  {
    boolean result = false;
    log.info("===============================" + map);
    CommonUtil commonUtil = new CommonUtil();
    Token token = commonUtil.getToken(WxUtil.appid, WxUtil.appsecret);
    String url = menu_create_url.replace("ACCESS_TOKEN", token.getAccessToken());
    String jsonMenu = JSONObject.fromObject(map).toString();
    log.info("生成需传给微信的菜单jsonStr=" + jsonMenu);
    JSONObject jsonObject = CommonUtil.httpsRequest(url, "POST", jsonMenu);
    log.info("jsonObject=" + jsonObject);
    String msg = "";
    if (jsonObject != null) {
      int errorCode = jsonObject.getInt("errcode");
      String errorMsg = jsonObject.getString("errmsg");

      if (errorCode == 0) {
        result = true;
        msg = "creat menu is OK!";
      } else {
        result = false;
        msg = "creat menu is errcode:{} errmsg:{}" + errorCode + errorMsg;
      }
    }
    Map rsMap = new HashMap();
    rsMap.put("rs", Boolean.valueOf(result));
    rsMap.put("message", msg);
    return rsMap;
  }
}