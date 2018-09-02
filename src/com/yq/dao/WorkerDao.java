package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Worker;

/**
 * 附近工匠Dao
 * 
 * @author gzg
 * */
public interface WorkerDao {

	/**
	 * 工匠添加
	 * */
	int add(Worker worker);
	
	/**
	 * 工匠修改
	 * */
	int update(Worker worker);
	
	/**
	 * 工匠删除
	 * */
	int delete(Long id);
	
	/**
	 * 查询所有的工匠
	 * */
	List<Worker> getWorkerPage(Map<String, Object> map);
	
	int count();
	
	/**
	 * 根据open_id查询
	 * */
	Worker getWorkerByOpenId(String openId);
	
	/**
	 * 根据id查询
	 * */
	Worker getWorkerById(Long id);
	
	List<Worker> getAllWorkerRangeCurDay(Map<String, Object> map);
}
