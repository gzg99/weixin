package com.yq.entity.serviceCart;

import com.yq.entity.Page;

public class JdbServiceCart extends Page{
    private String id;

    private Integer goodsId;

    private String oppenId;

    private String goodsName;

    private String goodsImg;

    private String goodsSpe;

    private Float goodsPrice;

    private Integer goodsNum;

    private Float goodsTotal;

    private String reservaTime;

    private String remark;

    private String type;

    private String createTime;

    private String updateTime;

    private String start_time ;

    private String end_time ;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getOppenId() {
        return oppenId;
    }

    public void setOppenId(String oppenId) {
        this.oppenId = oppenId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsImg() {
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
    }

    public String getGoodsSpe() {
        return goodsSpe;
    }

    public void setGoodsSpe(String goodsSpe) {
        this.goodsSpe = goodsSpe;
    }

    public Float getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Float goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Integer getGoodsNum() {
        return goodsNum;
    }

    public void setGoodsNum(Integer goodsNum) {
        this.goodsNum = goodsNum;
    }

    public Float getGoodsTotal() {
        return goodsTotal;
    }

    public void setGoodsTotal(Float goodsTotal) {
        this.goodsTotal = goodsTotal;
    }

    public String getReservaTime() {
        return reservaTime;
    }

    public void setReservaTime(String reservaTime) {
        this.reservaTime = reservaTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }
}