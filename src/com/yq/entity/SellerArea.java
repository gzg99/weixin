package com.yq.entity;

public class SellerArea {

	private Long id;
	
	private String sellerArea;
	
	private String firstLink;
	
	private String secondLink;
	
	private String sellerImg;
	
	private String sellerDetail;
	
	private String addTime;
	
	private String longitude;//经度
	
	private String latitude;//纬度
	
	private String type;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSellerArea() {
		return sellerArea;
	}

	public void setSellerArea(String sellerArea) {
		this.sellerArea = sellerArea;
	}

	public String getAddTime() {
		return addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	public String getFirstLink() {
		return firstLink;
	}

	public void setFirstLink(String firstLink) {
		this.firstLink = firstLink;
	}

	public String getSecondLink() {
		return secondLink;
	}

	public void setSecondLink(String secondLink) {
		this.secondLink = secondLink;
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

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}
