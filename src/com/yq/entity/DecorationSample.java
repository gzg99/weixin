package com.yq.entity;

public class DecorationSample extends Page{

	private Long id;
	
	private Long sellerId;
	
	private String decorationTitle;
	
	private String decorationDetail;
	
	private String addTime;
	
	private int status;
	
	private int order;
	
	private String type;

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

	public String getDecorationTitle() {
		return decorationTitle;
	}

	public void setDecorationTitle(String decorationTitle) {
		this.decorationTitle = decorationTitle;
	}

	public String getDecorationDetail() {
		return decorationDetail;
	}

	public void setDecorationDetail(String decorationDetail) {
		this.decorationDetail = decorationDetail;
	}

	public String getAddTime() {
		return addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}
