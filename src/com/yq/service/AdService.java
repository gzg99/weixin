package com.yq.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yq.dao.AdDao;
import com.yq.entity.Ad;

@Service
public class AdService {

	@Autowired
	private AdDao adDao;
	
	public boolean insert(Ad ad) {
		return adDao.insert(ad);
	}
	
	public boolean delete(Long id) {
		return adDao.delete(id);
	}
	
	public List<Ad> seleteByTime(Date currentTime,Integer status) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("currentTime", sdf.format(currentTime));
		map.put("status", status);
		return adDao.seleteByTime(map);
	}
	
	public boolean update(String content, Long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("content", content);
		map.put("id", id);
		return adDao.update(map);
	}
	
	public Ad selectById(Long id) {
		return adDao.selectById(id);
	}
	
}
