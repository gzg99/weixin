package com.yq.entity;

public class RepairOrder extends Page
{
  private Long id;
  private String goodsName;
  private float goodsPrice;
  private String orderTime;
  private String userAddr;
  private String userHouseNum;
  private String userName;
  private String userTel;
  private String remark;
  private String status;
  private String createTime;
  private String updateTime;
  private String useCard;
  private String start_time;
  private String end_time;

  public Long getId()
  {
    return this.id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getGoodsName() {
    return this.goodsName;
  }

  public void setGoodsName(String goodsName) {
    this.goodsName = goodsName;
  }

  public String getOrderTime() {
    return this.orderTime;
  }

  public void setOrderTime(String orderTime) {
    this.orderTime = orderTime;
  }

  public String getUserAddr() {
    return this.userAddr;
  }

  public void setUserAddr(String userAddr) {
    this.userAddr = userAddr;
  }

  public String getUserHouseNum() {
    return this.userHouseNum;
  }

  public void setUserHouseNum(String userHouseNum) {
    this.userHouseNum = userHouseNum;
  }

  public String getUserTel() {
    return this.userTel;
  }

  public void setUserTel(String userTel) {
    this.userTel = userTel;
  }

  public String getRemark() {
    return this.remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

  public String getStatus() {
    return this.status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getCreateTime() {
    return this.createTime;
  }

  public void setCreateTime(String createTime) {
    this.createTime = createTime;
  }

  public String getUpdateTime() {
    return this.updateTime;
  }

  public void setUpdateTime(String updateTime) {
    this.updateTime = updateTime;
  }

  public String getStart_time() {
    return this.start_time;
  }

  public void setStart_time(String start_time) {
    this.start_time = start_time;
  }

  public String getEnd_time() {
    return this.end_time;
  }

  public void setEnd_time(String end_time) {
    this.end_time = end_time;
  }

  public String getUserName() {
    return this.userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public String getUseCard() {
    return this.useCard;
  }

  public void setUseCard(String useCard) {
    this.useCard = useCard;
  }

  public float getGoodsPrice() {
    return this.goodsPrice;
  }

  public void setGoodPrice(float goodsPrice) {
    this.goodsPrice = goodsPrice;
  }
}