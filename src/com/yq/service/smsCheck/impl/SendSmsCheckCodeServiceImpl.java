package com.yq.service.smsCheck.impl;

import com.yq.service.smsCheck.SendSmsCheckCodeService;
import com.yq.util.HTTPSendMsgUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/11/28.
 */
@Service
public class SendSmsCheckCodeServiceImpl implements SendSmsCheckCodeService {

    /**
     * @Description:
     * @Author: jkx
     * @Date: 2018/11/28 17:44
     */
    @Override
    public String sendPhoneMsg(String phone, String content_a, String content_b, String random) {
        String result = "短信验证码【"+random+"】已推送至"+phone.replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2");
        /*try {
            result = HTTPSendMsgUtil.LoginGo(phone, content_a, content_b, random);
            if (StringUtils.equals("true", result)) {
                result = "短信验证码已推送至" + phone.replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2");
            } else {
                result = "短信发送失败，请联系管理员";
            }
        } catch (Exception e) {
            e.printStackTrace();
            result = "短信发送异常，请联系管理员";
        }*/
        return result;
    }
}
