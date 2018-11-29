package com.yq.service.smsCheck;

/**
 * Created by Administrator on 2018/11/28.
 */
public interface SendSmsCheckCodeService {
    String sendPhoneMsg(String phone, String content_a, String content_b, String random);
}
