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
	
	private Long salesVolLow;
	
	private Long salesVolHight;
	
	private Integer pageSize;
	
	private Integer pageNo;
	
	private Integer start;
	
	private String orderStr;

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

	public Long getSellerId() {
		return sellerId;
	}

	public void setSellerId(Long sellerId) {
		this.sellerId = sellerId;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public String getOrderStr() {
		return orderStr;
	}

	public void setOrderStr(String orderStr) {
		this.orderStr = orderStr;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Long getSalesVolLow() {
		return salesVolLow;
	}

	public void setSalesVolLow(Long salesVolLow) {
		this.salesVolLow = salesVolLow;
	}

	public Long getSalesVolHight() {
		return salesVolHight;
	}

	public void setSalesVolHight(Long salesVolHight) {
		this.salesVolHight = salesVolHight;
	}
	
}
