package com.yq.entity.receiveOrder;

public class JdbReceiveOrder {
    private String id;

    private String oppendId;

    private Integer goodsId;

    private String createTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOppendId() {
        return oppendId;
    }

    public void setOppendId(String oppendId) {
        this.oppendId = oppendId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}