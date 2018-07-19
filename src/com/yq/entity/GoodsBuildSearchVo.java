package com.yq.entity;
/**
 * 建材商家商品查询bean
 * */
public class GoodsBuildSearchVo {
	
	private Long sellerId;
	
	private Long firstCategory;
	
	private Long secondCategory;
	
	private String goodsName;
	
	private Double highPrice;
	
	private Double lowerPrice;
	
	private Long salesVol;

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

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public Double getHighPrice() {
		return highPrice;
	}

	public void setHighPrice(Double highPrice) {
		this.highPrice = highPrice;
	}

	public Double getLowerPrice() {
		return lowerPrice;
	}

	public void setLowerPrice(Double lowerPrice) {
		this.lowerPrice = lowerPrice;
	}

	public Long getSalesVol() {
		return salesVol;
	}

	public void setSalesVol(Long salesVol) {
		this.salesVol = salesVol;
	}

	public Long getSellerId() {
		return sellerId;
	}

	public void setSellerId(Long sellerId) {
		this.sellerId = sellerId;
	}
	
}
