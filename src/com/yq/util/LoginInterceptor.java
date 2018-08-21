package com.yq.util;

import com.google.gson.Gson;
import com.weixin.util.WxUtil;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter
{
  private Logger log = Logger.getLogger(getClass());

  private static final String[] IGNORE_URI = { "/login.jsp", "/Login/", "/reply.html", "/main/", "/admin/", "/userInsert.html", 
    "/oauth2/", "/noticeOrder.html" };

  Gson gson = new Gson();
  Map<String, Object> map = new HashMap<>();

  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
  {
//   HttpSession session = request.getSession();
//    boolean flag = false;
//
//    flag = session.getAttribute("oppen_id") != null;
//    String url = (request.getRequestURL() + "?" + request.getQueryString()).toString();
//    System.out.println(">>>: " + url);
//    for (String s : IGNORE_URI) {
//      if (url.contains(s)) {
//        flag = true;
//        break;
//      }
//    }
//    this.log.info("url>>>: " + url);
//    if (!flag) {
//      if ((request.getHeader("x-requested-with") != null) && 
//        (request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest"))) {
//        this.map.put("rs_code", Integer.valueOf(1005));
//        response.getWriter().write(this.gson.toJson(this.map));
//      } else {
//        response.sendRedirect(
//          "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + WxUtil.appid + "&redirect_uri=" + WxUtil.link + "/page/userInsert.html?url=" + 
//          url + 
//          "&response_type=code&scope=snsapi_userinfo&state=1#wechat_redirect");
//      }
//    }
//    return flag;
    return true;
 }

  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
    throws Exception
  {
    super.postHandle(request, response, handler, modelAndView);
  }
}