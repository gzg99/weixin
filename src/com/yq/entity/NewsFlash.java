package com.yq.entity;

public class NewsFlash {

	private Long id;
	
	private String content;
	
	private String head_img;
	
	private Long review_count;
	
	private Long praise_count;
	
	private Integer status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getHead_img() {
		return head_img;
	}

	public void setHead_img(String head_img) {
		this.head_img = head_img;
	}

	public Long getReview_count() {
		return review_count;
	}

	public void setReview_count(Long review_count) {
		this.review_count = review_count;
	}

	public Long getPraise_count() {
		return praise_count;
	}

	public void setPraise_count(Long praise_count) {
		this.praise_count = praise_count;
	}
	
	
}
