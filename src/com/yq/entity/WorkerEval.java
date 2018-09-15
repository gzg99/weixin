package com.yq.entity;

/**
 * 工人评价
 * */
public class WorkerEval {
	
	private Long id;
	
	private Long workerId;
	
	private String openId;
	
	private String content;
	
	private String addTime;
	
	private String score;
	
	private String headImgStr;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getWorkerId() {
		return workerId;
	}

	public void setWorkerId(Long workerId) {
		this.workerId = workerId;
	}

	public String getOpenId() {
		return openId;
	}

	public void setOpenId(String openId) {
		this.openId = openId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAddTime() {
		return addTime;
	}

	public void setAdd_time(String addTime) {
		this.addTime = addTime;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getHeadImgStr() {
		return headImgStr;
	}

	public void setHeadImgStr(String headImgStr) {
		this.headImgStr = headImgStr;
	}
	
}
