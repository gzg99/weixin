package com.yq.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.NewsFlashDao;
import com.yq.entity.NewsFlash;

@Service
public class NewsFlashService {

	@Autowired
	private NewsFlashDao newFlashDao;
	
	public List<NewsFlash> getList(Integer status) {
		return newFlashDao.getList(status);
	}
	
	public boolean deleteById(Long id) {
		return newFlashDao.deleteById(id);
	}
	
	public boolean add(NewsFlash newFlash) {
		return newFlashDao.add(newFlash);
	}
	
	public boolean update(String content, String headImg, Long id) {
		Map<String, Object> map = new HashMap<>();
		map.put("content", content);
		map.put("headImg", headImg);
		map.put("id", id);
		return newFlashDao.update(map);
	}
	
	public NewsFlash selectById(Long id) {
		return newFlashDao.selectById(id);
	}
	
}
