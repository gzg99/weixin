package com.weixin.controller;

import com.weixin.entity.ClickText;
import com.weixin.entity.Item;
import com.weixin.entity.RequestTextMessage;
import com.weixin.service.ClickTextService;
import com.weixin.util.ReplyMessage;
import com.weixin.util.SHA1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"/"})
public class ReplyController {
  private static final Logger log = Logger.getLogger(ReplyController.class);
  private String TOKEN = "bjjkkj";

  @Autowired
  private ClickTextService clickTextService;

  @RequestMapping({"reply.html"})
  public void repaly(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { try { request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8");
      response.setHeader("Content-Type", "text/plain;charset=UTF-8");
      String wxMsgXml = IOUtils.toString(request.getInputStream(), "utf-8");

      log.info("获取的数据信息>>>>>" + wxMsgXml);

      boolean eventType = wxMsgXml.contains("Event");
      RequestTextMessage textMsg = null;
      String returnXml = null;
      StringBuffer replyMsg = new StringBuffer();
      if (!eventType) {
        textMsg = ReplyMessage.getRequestTextMessage(wxMsgXml);
        String receive = textMsg.getContent().trim();
        ClickText clickText = this.clickTextService.selectByPrimaryKey(receive);
        if (clickText != null)
          if (clickText.getType().intValue() == 1) {
            replyMsg.append(clickText.getContent());
            returnXml = ReplyMessage.getReplyTextMessage(replyMsg.toString(), textMsg.getFromUserName(), 
              textMsg.getToUserName());
          } else if (clickText.getType().intValue() == 2) {
            List articleList = new ArrayList();
            Item item = null;
            if (clickText.getIntro().contains("-=")) {
              String[] title = clickText.getTitle().split("-=");
              String[] intro = clickText.getIntro().split("-=");
              String[] pic_url = clickText.getPic_url().split("-=");
              String[] url = clickText.getUrl().split("-=");
              for (int i = 0; i < intro.length; i++) {
                item = new Item();
                item.setTitle(title[i]);
                item.setDescription(intro[i]);
                item.setPicUrl(pic_url[i]);
                item.setUrl(url[i]);
                articleList.add(item);
              }
            } else {
              item = new Item();
              item.setTitle(clickText.getTitle());
              item.setDescription(clickText.getIntro());
              item.setPicUrl(clickText.getPic_url());
              item.setUrl(clickText.getUrl());
              articleList.add(item);
            }
            returnXml = ReplyMessage.getReplyTuwenMessage(textMsg.getFromUserName(), textMsg.getToUserName(), articleList);
          }
      }
      else {
        textMsg = ReplyMessage.getRequestFocus(wxMsgXml);
        if ("21".equals(textMsg.getEventKey())) {
          returnXml = ReplyMessage.getReplyTextMessage(getMainMenu(), textMsg.getFromUserName(), 
            textMsg.getToUserName());
        }
        if (textMsg.getEvent().equals("subscribe")) {
          ClickText clickText = this.clickTextService.selectByPrimaryKey("subscribe");
          replyMsg.append(clickText.getContent());
          log.info("关注回复->" + clickText.getContent());
          returnXml = ReplyMessage.getReplyTextMessage(replyMsg.toString(), textMsg.getFromUserName(), 
            textMsg.getToUserName());
        }
      }
      log.info("wxMsgXml>>>>>>>>>>>>>>" + wxMsgXml);
      response.getOutputStream().write(returnXml.getBytes("UTF-8"));
    } catch (Exception e) {
      log.info(e.getMessage());
    } }

  private String getMainMenu()
  {
    StringBuffer buffer = new StringBuffer();
    buffer.append("您好，如需人工服务，请联系：").append("\n\n");
    buffer.append("1  宋丕杰：18501335305").append("\n");
    buffer.append("2  张XXXX：132XXXXXXXX").append("\n");
    buffer.append("3  赵XXXX：132XXXXXXXX").append("\n");
    buffer.append("4  刘XXXX：132XXXXXXXX").append("\n");
    buffer.append("5  王XXXX：132XXXXXXXX").append("\n");
    return buffer.toString();
  }

  public void checkToken(HttpServletRequest request, HttpServletResponse response)
    throws IOException
  {
    String signature = request.getParameter("signature");

    String echostr = request.getParameter("echostr");

    String timestamp = request.getParameter("timestamp");

    String nonce = request.getParameter("nonce");

    String[] str = { this.TOKEN, timestamp, nonce };
    Arrays.sort(str);
    String bigStr = str[0] + str[1] + str[2];

    String digest = new SHA1().getDigestOfString(bigStr.getBytes()).toLowerCase();

    if (digest.equals(signature))
      response.getWriter().print(echostr);
  }
}