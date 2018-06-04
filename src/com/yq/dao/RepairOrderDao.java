package com.yq.dao;

import com.yq.entity.RepairOrder;
import java.util.List;
import java.util.Map;

public abstract interface RepairOrderDao
{
  public abstract int insert(RepairOrder paramRepairOrder);

  public abstract int upstatus(Map<String, Object> paramMap);

  public abstract List<RepairOrder> list(RepairOrder paramRepairOrder);

  public abstract int count(RepairOrder paramRepairOrder);

  public abstract int delete(Integer paramInteger);
}