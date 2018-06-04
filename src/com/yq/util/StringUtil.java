package com.yq.util;

import javax.servlet.http.HttpSession;

public class StringUtil {

	protected Integer pagesize_1 = 10;

	public String getOppen_id(HttpSession session) {
		return (String) session.getAttribute("oppen_id");
	}
	
	public void setOppen_id(String oppen_id, HttpSession session) {
		session.setAttribute("oppen_id", "otwhkwERAfrnEXpO7Yh79vC6SX2A");
	}

	public Integer getPagesize_1() {
		return pagesize_1;
	}

	public void setPagesize_1(Integer pagesize_1) {
		this.pagesize_1 = pagesize_1;
	}

}
