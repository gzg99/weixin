package com.yq.entity;

/**
 * 工人评价
 * */
public class WorkerEval {
	
	private Long id;
	
	private Long worker_id;
	
	private String open_id;
	
	private String content;
	
	private String add_time;
	
	private String score;
	
	private String headImgStr;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getWorker_id() {
		return worker_id;
	}

	public void setWorker_id(Long worker_id) {
		this.worker_id = worker_id;
	}

	public String getOpen_id() {
		return open_id;
	}

	public void setOpen_id(String open_id) {
		this.open_id = open_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAdd_time() {
		return add_time;
	}

	public void setAdd_time(String add_time) {
		this.add_time = add_time;
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
