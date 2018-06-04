package com.yq.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Ad;
import com.yq.entity.NewsFlash;
import com.yq.service.NewsFlashService;
import com.yq.util.StringUtil;

@Controller
@RequestMapping
public class NewsFlashCtrl extends StringUtil {

	@Autowired
	private NewsFlashService newsFlashService;
	
	@RequestMapping("/main/newsFlashList.html")
	public ModelAndView newsFlashList(Integer status) {
		List<NewsFlash> list = newsFlashService.getList(status);
		ModelAndView m1 = new ModelAndView();
		m1.addObject("list", list);
		m1.setViewName("main/newsflash/list");
		return m1;
	}
	
	@RequestMapping(value = "/main/addNewsFlashjsp.html")
	public ModelAndView addjsp() {
		return new ModelAndView("main/newflash/add");
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/adNewsFlash.html") 
	public String insert(String content, String headImg) {
		NewsFlash newsFlash = new NewsFlash();
		newsFlash.setContent(content);
		newsFlash.setStatus(1);
		newsFlash.setHead_img(headImg);
		newsFlash.setPraise_count(0L);
		newsFlash.setReview_count(0L);
		return newsFlashService.add(newsFlash) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/delNewsById.html")
	public String delete(Long id) {
		return newsFlashService.deleteById(id) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/updateNewsFlash.html")
	public String updateNewsFlash(String content, String headImg, Long id) {
		return newsFlashService.update(content, headImg, id) + "";
	}
	
	@RequestMapping(value = "/main/findNewsFlashById.html")
	public ModelAndView listById(Long id) {
		NewsFlash newsFlash = newsFlashService.selectById(id);
		ModelAndView ml = new ModelAndView();
		ml.addObject("newsFlash", newsFlash);
		ml.setViewName("main/newflash/info");
		return ml;
	}
	
}
