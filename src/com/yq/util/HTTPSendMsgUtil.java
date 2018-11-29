package com.yq.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang.StringUtils;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class HTTPSendMsgUtil {

    //url
    private static final String URL  = "";
    //集团客户名称
    private static final String ECNAME = "稻草人";
    //用户名
    private static final String APID = "admin";
    //密码
    private static final String SECREKEY  = "admin";
    //网关签名编码
    private static final String SIGN  = "caesar";

    /**
     *  组装参数发送短信
     * @param phone  接收手机号
     * @param bcontent 内容前半段
     * @param acontent 内容后边段
     * @param random    校验码
     * @throws Exception
     */
    public static String LoginGo(String phone,String bcontent,String acontent,String random) throws Exception {
        //URL配置
        String Sent_Result = "";
        String success = "";

        for(int i = 0;i<1;i++){
            String param = GetSmsParam( phone, bcontent, acontent, random);
            Sent_Result = SentSms(URL,param);
            success = jsonToBean(Sent_Result, "success");
            Thread.sleep(300);
        }
        return success;
    }

    // SmsParam获取
    public static String GetSmsParam(String phone,String bcontent,String acontent,String random) throws Exception {
        Submit submit = new Submit();

        submit.setEcName(ECNAME);
        submit.setApId(APID);
        submit.setSecretKey(SECREKEY);
        submit.setMobiles(phone);
        submit.setSign(SIGN);
        //内容前半段 + 校验码 + 内容后半段
        submit.setContent(bcontent+random+acontent);
        submit.setAddSerial("");
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(submit.getEcName());
        stringBuffer.append(submit.getApId());
        stringBuffer.append(submit.getSecretKey());
        stringBuffer.append(submit.getMobiles());
        stringBuffer.append(submit.getContent());
        stringBuffer.append(submit.getSign());
        stringBuffer.append(submit.getAddSerial());

        //获取指定md5加密字符串
        String selfMac = encryptToMD5(stringBuffer.toString());
        submit.setMac(selfMac);
        String param = JSON.toJSONString(submit);

        //Base64加密
//        String encode = Base64.encodeBase64String(param.getBytes());
        return param;
    }



    // 短信发送SentSms
    public static String SentSms(String Url, String Param) {
        String s_SentSms = sendPost(Url, Param);
        return s_SentSms;
    }

    // 发送post请求
    public static String sendPost(String url, String param) {
        OutputStreamWriter out = null;

        BufferedReader in = null;
        String result = "";
        try {
            URL realUrl = new URL(url);
            URLConnection conn = realUrl.openConnection();
            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("contentType","utf-8");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)");
            conn.setDoOutput(true);
            conn.setDoInput(true);

            out = new OutputStreamWriter(conn.getOutputStream());
            out.write(param);
            out.flush();

            in = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += "\n" + line;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return result;
    }

    // MD5转换
    public static String encryptToMD5(String password) {
        byte[] digesta = null;
        String result = null;
        try {

            // 得到一个MD5的消息摘要
            MessageDigest mdi = MessageDigest.getInstance("MD5");
            // 添加要进行计算摘要的信息
            mdi.update(password.getBytes("utf-8"));
            // 得到该摘要
            digesta = mdi.digest();
            result = byteToHex(digesta);
        } catch (NoSuchAlgorithmException e) {

        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 将二进制转化为16进制字符串
     */
    public static String byteToHex(byte[] pwd) {
        StringBuilder hs = new StringBuilder("");
        String temp = "";
        for (int i = 0; i < pwd.length; i++) {
            temp = Integer.toHexString(pwd[i] & 0XFF);
            if (temp.length() == 1) {
                hs.append("0").append(temp);
            } else {
                hs.append(temp);
            }
        }
        return hs.toString().toLowerCase();
    }

    public static String jsonToBean(String data, String tittle) {
        try {
            JSONObject json = JSONObject.parseObject(data);
            String result = json.getString(tittle);
            return result;
        } catch (Exception e) {
            return "Json解析失败";
        }
    }

    /**
     * 生成指定长度的随机数
     *
     * @param num
     */
    public static  int createRandom(int num) {
        return (int) ((Math.random() * 9 + 1) * Math.pow(10, num - 1));
    }


    public static void main(String[] args) {
        String result = "";
        String phone = "18330808834";
        String content_a = "蒋";
        String content_b = "凯旋";
        String random = "123456";

        try {
            result = HTTPSendMsgUtil.LoginGo(phone, content_a, content_b, random);
            if (StringUtils.equals("true", result)) {
                result = "短信验证码已推送至" + phone.replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2");
            } else {
                result = "短信发送失败，请联系管理员";
            }
        } catch (Exception e) {
            e.printStackTrace();
            result = "短信发送异常，请联系管理员";
        }
    }

}

class Submit{
    String ecName;
    String apId;
    String secretKey;
    String mobiles;
    String content;
    String sign;
    String addSerial;
    String mac;
    public String getEcName() {
        return ecName;
    }
    public void setEcName(String ecName) {
        this.ecName = ecName;
    }
    public String getApId() {
        return apId;
    }
    public void setApId(String apId) {
        this.apId = apId;
    }
    public String getSecretKey() {
        return secretKey;
    }
    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }
    public String getMobiles() {
        return mobiles;
    }
    public void setMobiles(String mobiles) {
        this.mobiles = mobiles;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getSign() {
        return sign;
    }
    public void setSign(String sign) {
        this.sign = sign;
    }
    public String getAddSerial() {
        return addSerial;
    }
    public void setAddSerial(String addSerial) {
        this.addSerial = addSerial;
    }
    public String getMac() {
        return mac;
    }
    public void setMac(String mac) {
        this.mac = mac;
    }


}

