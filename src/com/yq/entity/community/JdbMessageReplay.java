package com.yq.entity.community;

import java.util.Date;

public class JdbMessageReplay {
    private Long id;

    private String openId;

    private String toOpenId;

    private Long messageId;

    private Date publishTime;

    private Byte isPraise;

    private String replayContent;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getToOpenId() {
        return toOpenId;
    }

    public void setToOpenId(String toOpenId) {
        this.toOpenId = toOpenId;
    }

    public Long getMessageId() {
        return messageId;
    }

    public void setMessageId(Long messageId) {
        this.messageId = messageId;
    }

    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    public Byte getIsPraise() {
        return isPraise;
    }

    public void setIsPraise(Byte isPraise) {
        this.isPraise = isPraise;
    }

    public String getReplayContent() {
        return replayContent;
    }

    public void setReplayContent(String replayContent) {
        this.replayContent = replayContent;
    }
}