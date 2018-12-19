package com.yq.service.smsCheck.impl;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.weixin.controller.ReplyController;
import com.yq.service.smsCheck.SendSmsCheckCodeService;
import com.yq.util.SmsXsk;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/11/28.
 */
@Service
public class SendSmsCheckCodeServiceImpl implements SendSmsCheckCodeService {
    private static final Logger log = Logger.getLogger(SendSmsCheckCodeServiceImpl.class);

    /**
     * @Description:
     * @Author: jkx
     * @Date: 2018/11/28 17:44
     */
    @Override
    public String sendPhoneMsg(String phone, String code) {
        String result = null;
        try {
            String TemplateCode = "SMS_152440521";
            SendSmsResponse response = SmsXsk.sendSms(phone, code, TemplateCode);
            if( response.getCode().equals("OK")) {
                result = "短信验证码已推送至" + phone.replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2");
                log.info(">>>>>>>>发送手机验证码>>>>>>>>"+result);
            } else {
                result = "短信发送失败，请联系管理员";
                log.info(">>>>>>>>发送手机验证码>>>>>>>>"+result);
            }
        } catch (Exception e) {
            e.printStackTrace();
            result = "短信发送异常，请联系管理员";
        }
        return result;
    }
}
