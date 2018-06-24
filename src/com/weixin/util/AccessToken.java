package com.weixin.util;

/**
* ����: Token </br>
* ����:  ƾ֤  </br>
* ������Ա�� gzg </br>
* ����ʱ�䣺  2017-03-12 </br>
* �����汾��V1.0  </br>
 */

public class AccessToken {

	// �ӿڷ���ƾ֤
    private String accessToken;
    // ƾ֤��Ч�ڣ���λ����
    private int expiresIn;

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public int getExpiresIn() {
        return expiresIn;
    }

    public void setExpiresIn(int expiresIn) {
        this.expiresIn = expiresIn;
    }

}
