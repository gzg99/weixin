package com.yq.service;

import com.yq.dao.RepairOrderDao;
import com.yq.entity.RepairOrder;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RepairOrderService
{

  @Autowired
  private RepairOrderDao repairOrderDao;

  public int insert(RepairOrder repairOrder)
  {
    return this.repairOrderDao.insert(repairOrder);
  }

  public int upstatus(Map<String, Object> map) {
    return this.repairOrderDao.upstatus(map);
  }

  public List<RepairOrder> list(RepairOrder repairOrder) {
    return this.repairOrderDao.list(repairOrder);
  }

  public int count(RepairOrder repairOrder) {
    return this.repairOrderDao.count(repairOrder);
  }

  public int delete(Integer id) {
    return this.repairOrderDao.delete(id);
  }
}