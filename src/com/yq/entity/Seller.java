package com.yq.entity;

public class Seller {

	private Long id;
	
	private String userName;
	
	private String password;
	
	private Long sellerAreaId;
	
	private String sellerName;
	
	private String sellerImg;
	
	private String address;
	
	private String sellerDetail;
	
	private String addTime;
	
	private String sellerArea;

	private String status;

	private String sellerType;
	

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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSellerArea() {
		return sellerArea;
	}

	public void setSellerArea(String sellerArea) {
		this.sellerArea = sellerArea;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSellerType() {
		return sellerType;
	}

	public void setSellerType(String sellerType) {
		this.sellerType = sellerType;
	}
}
