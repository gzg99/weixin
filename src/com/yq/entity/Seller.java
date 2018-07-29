package com.yq.entity;

public class Seller {

	private Long id;
	
	private Long sellerAreaId;
	
	private String sellerName;
	
	private String sellerImg;
	
	private String address;
	
	private String sellerDetail;
	
	private String addTime;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}

	public String getSellerImg() {
		return sellerImg;
	}

	public void setSellerImg(String sellerImg) {
		this.sellerImg = sellerImg;
	}

	public String getSellerDetail() {
		return sellerDetail;
	}

	public void setSellerDetail(String sellerDetail) {
		this.sellerDetail = sellerDetail;
	}

	public String getAddTime() {
		return addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	public Long getSellerAreaId() {
		return sellerAreaId;
	}

	public void setSellerAreaId(Long sellerAreaId) {
		this.sellerAreaId = sellerAreaId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
