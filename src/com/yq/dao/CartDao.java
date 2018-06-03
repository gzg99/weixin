package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.Cart;


public interface CartDao {

	public int insert(Map<String, Object> map);

	public int update(Map<String, Object> map);

	/**
	 * 从购物车中删除
	 * */
	public int delete(Map<String, Object> map);

	public List<Cart> list(Cart cart);

	public int count(Cart cart);
	
	public int goodsnum(Cart cart);
	
	/**
	 * 获取商品总价
	 * */
	public Float goodstotalprice(Cart cart);
	
	/**
	 * 根据open_id查询总数量
	 * */
	public int goodstotalnum(Cart cart);
}
