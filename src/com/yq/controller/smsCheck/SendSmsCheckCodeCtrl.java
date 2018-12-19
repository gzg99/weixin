package com.yq.controller.smsCheck;

import com.yq.service.smsCheck.SendSmsCheckCodeService;
import com.yq.util.CodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * Created by Administrator on 2018/11/28.
 * 发送短信验证码
 */
@Controller
public class SendSmsCheckCodeCtrl {
    @Autowired
    SendSmsCheckCodeService sendSmsCheckCodeService;

    @RequestMapping(value = "/page/serviceCart/sendSmsCheckCode.html")
    @ResponseBody
    public String sendSmsCheckCode(HttpServletRequest req, HttpServletResponse res){
        String phone = req.getParameter("phone");
        HttpSession session = req.getSession();
        // 随机生成6位短信验证码
        String code = CodeUtil.generateVerifyCode(6);
        //短信验证码
        session.setAttribute(phone+"Code",code);
        // 生成验证码的时间
        session.setAttribute(phone+"Time",new Date().getTime());

        //调用service方法发送短信
        String rs = sendSmsCheckCodeService.sendPhoneMsg(phone, code);

        return rs;
    }

}
