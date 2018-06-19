package com.yq.entity;

public class Card extends Page{

	private Long cardId;
	
	private String cardName;
	
	private String cardImg;
	
	private Float cardPrice;
	
	private String cardDetail;
	
	private String addTime;
	
	private String updateTime;
	
	private  int type;

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Long getCardId() {
		return cardId;
	}

	public void setCardId(Long cardId) {
		this.cardId = cardId;
	}

	public String getCardName() {
		return cardName;
	}

	public void setCardName(String cardName) {
		this.cardName = cardName;
	}

	public String getCardImg() {
		return cardImg;
	}

	public void setCardImg(String cardImg) {
		this.cardImg = cardImg;
	}

	public Float getCardPrice() {
		return cardPrice;
	}

	public void setCardPrice(Float cardPrice) {
		this.cardPrice = cardPrice;
	}

	public String getCardDetail() {
		return cardDetail;
	}

	public void setCardDetail(String cardDetail) {
		this.cardDetail = cardDetail;
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
	
	
}
