package com.yq.service;

import com.yq.dao.WorkerDao;
import com.yq.dao.receiveOrder.JdbReceiveOrderMapper;
import com.yq.entity.Worker;
import com.yq.entity.receiveOrder.JdbReceiveOrder;
import com.yq.util.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class WorkerService {
	@Autowired
	private WorkerDao workerDao;
	@Autowired
	private JdbReceiveOrderMapper jdbReceiveOrderMapper;
	
	/**
	 * 工匠添加
	 * */
	public int add(Worker worker) {
		return workerDao.add(worker);
	}
	
	/**
	 * 工匠修改
	 * */
	public int update(Worker worker) {
		return workerDao.update(worker);
	}
	
	/**
	 * 工匠删除
	 * */
	public int delete(Long id) {
		return workerDao.delete(id);
	}
	
	/**
	 * 查询所有的工匠
	 * */
	public List<Worker> getWorkerPage(Map<String, Object> map) {
		return workerDao.getWorkerPage(map);
	}
	
	public int count() {
		return workerDao.count();
	}
	
	/**
	 * 根据open_id查询
	 * */
	public Worker getWorkerByOpenId(String openId) {
		return workerDao.getWorkerByOpenId(openId);
	}
	
	/**
	 * 根据id查询
	 * */
	public Worker getWorkerById(Long id) {
		return workerDao.getWorkerById(id);
	}
	
	public List<Worker> getAllWorkerRangeCurDay(Map<String, Object> map) {
		return workerDao.getAllWorkerRangeCurDay(map);
	}

    public String workerSignIn(Worker worker) {
		String str = workerDao.workerSignIn(worker);
		return str;
    }

    /**
    * @Description: 工人接单（工人订单关联表）
    * @Author: jkx
    * @Date: 2018/11/27 15:55
    */
    public int 	workerReceiveOrder(String serviceId, String oppenId) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		JdbReceiveOrder jdbReceiveOrder = new JdbReceiveOrder();
		jdbReceiveOrder.setId(UUIDUtils.getUUID());
		jdbReceiveOrder.setOppenId(oppenId);
		jdbReceiveOrder.setServiceId(serviceId);
		jdbReceiveOrder.setCreateTime(sf.format(new Date()));
		int insert = jdbReceiveOrderMapper.insert(jdbReceiveOrder);
		return insert;
    }

    /**
    * @Description: 根据工人查询工匠信息
    * @Author: jkx
    * @Date: 2018/11/28 13:38
    */
    public Worker selWorkerByGoods(String id) {
		Worker worker = workerDao.selWorkerByGoods(id);
		return worker;
	}
}
