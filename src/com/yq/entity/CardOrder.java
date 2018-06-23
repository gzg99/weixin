package com.yq.entity;

public class CardOrder {

	private Long id;
	
	private String userName;
	
	private String cardName;
	
	private Long cardNum;
	
	private Long userPhone;
	
	private float cardPrice;
	
	private String userAddr;
	
	private String addTime;
	
	private String updateTime;
	
	private String lrName;
	private String lrPhone;
	private String lrSfzh;
	
	private String  type;
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLrName() {
		return lrName;
	}

	public void setLrName(String lrName) {
		this.lrName = lrName;
	}

	public String getLrPhone() {
		return lrPhone;
	}

	public void setLrPhone(String lrPhone) {
		this.lrPhone = lrPhone;
	}

	public String getLrSfzh() {
		return lrSfzh;
	}

	public void setLrSfzh(String lrSfzh) {
		this.lrSfzh = lrSfzh;
	}

	public String getLrRelatetion() {
		return lrRelatetion;
	}

	public void setLrRelatetion(String lrRelatetion) {
		this.lrRelatetion = lrRelatetion;
	}

	private String lrRelatetion;
	
	//是否付款 0：未付 1：已付款
	private Integer status;
	
	private String comment;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public Long getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(Long userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getAddTime() {
		return addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	public String getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	public Long getCardNum() {
		return cardNum;
	}

	public void setCardNum(Long cardNum) {
		this.cardNum = cardNum;
	}

	public float getCardPrice() {
		return cardPrice;
	}

	public void setCardPrice(float cardPrice) {
		this.cardPrice = cardPrice;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
}
