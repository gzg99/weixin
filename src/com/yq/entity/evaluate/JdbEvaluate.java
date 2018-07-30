package com.yq.entity.evaluate;

import java.util.Date;

public class JdbEvaluate {
    private String id;

    private String grade;

    private String userId;

    private String commodityId;

    private String evaluateContent;

    private String pictureFirst;

    private String pictureSecond;

    private String pictureThird;
    
    private Date evaluateDate;
    
    private String sellerId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(String commodityId) {
        this.commodityId = commodityId;
    }

    public String getEvaluateContent() {
        return evaluateContent;
    }

    public void setEvaluateContent(String evaluateContent) {
        this.evaluateContent = evaluateContent;
    }

    public String getPictureFirst() {
        return pictureFirst;
    }

    public void setPictureFirst(String pictureFirst) {
        this.pictureFirst = pictureFirst;
    }

    public String getPictureSecond() {
        return pictureSecond;
    }

    public void setPictureSecond(String pictureSecond) {
        this.pictureSecond = pictureSecond;
    }

    public String getPictureThird() {
        return pictureThird;
    }

    public void setPictureThird(String pictureThird) {
        this.pictureThird = pictureThird;
    }

	public Date getEvaluateDate() {
		return evaluateDate;
	}

	public void setEvaluateDate(Date evaluateDate) {
		this.evaluateDate = evaluateDate;
	}

	public String getSellerId() {
		return sellerId;
	}

	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}

    
}