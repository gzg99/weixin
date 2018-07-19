package com.yq.entity;

public class GoodsBuild {
    private Long id;

    private Long sellerId;

    private String goodsName;

    private String goodsImg;

    private String goodsSpe;

    private Float goodsPrice;

    private String goodsBrand;

    private String goodsMaterial;

    private String goodsColor;

    private Long goodsNum;
    
    private Long goodsSales;

    private String addTime;

    private Integer order;

    private Byte status;

    private Long firstCategory;

    private Long secondCategory;

    private String goodsDetail;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSellerId() {
        return sellerId;
    }

    public void setSellerId(Long sellerId) {
        this.sellerId = sellerId;
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

    public String getGoodsBrand() {
        return goodsBrand;
    }

    public void setGoodsBrand(String goodsBrand) {
        this.goodsBrand = goodsBrand;
    }

    public String getGoodsMaterial() {
        return goodsMaterial;
    }

    public void setGoodsMaterial(String goodsMaterial) {
        this.goodsMaterial = goodsMaterial;
    }

    public String getGoodsColor() {
        return goodsColor;
    }

    public void setGoodsColor(String goodsColor) {
        this.goodsColor = goodsColor;
    }

    public Long getGoodsNum() {
        return goodsNum;
    }

    public void setGoodsNum(Long goodsNum) {
        this.goodsNum = goodsNum;
    }

    public String getAddTime() {
        return addTime;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public Long getFirstCategory() {
        return firstCategory;
    }

    public void setFirstCategory(Long firstCategory) {
        this.firstCategory = firstCategory;
    }

    public Long getSecondCategory() {
        return secondCategory;
    }

    public void setSecondCategory(Long secondCategory) {
        this.secondCategory = secondCategory;
    }

    public String getGoodsDetail() {
        return goodsDetail;
    }

    public void setGoodsDetail(String goodsDetail) {
        this.goodsDetail = goodsDetail;
    }

	public Long getGoodsSales() {
		return goodsSales;
	}

	public void setGoodsSales(Long goodsSales) {
		this.goodsSales = goodsSales;
	}
}