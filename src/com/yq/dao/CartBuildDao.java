package com.yq.dao;

import java.util.List;
import java.util.Map;

import com.yq.entity.CartBuild;

public interface CartBuildDao {
	public int insert(Map<String, Object> map);

	public int update(Map<String, Object> map);

	/**
	 * 从购物车中删除
	 * */
	public int delete(Map<String, Object> map);

	public List<CartBuild> list(CartBuild cart);

	public int count(CartBuild cart);
	
	public int goodsnum(CartBuild cart);
	
	/**
	 * 获取商品总价
	 * */
	public Float goodstotalprice(CartBuild cart);
	
	/**
	 * 根据open_id查询总数量
	 * */
	public int goodstotalnum(CartBuild cart);

}
