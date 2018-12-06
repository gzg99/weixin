package com.yq.service;

import com.yq.dao.SellerDao;
import com.yq.entity.Seller;
import com.yq.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class SellerService {

	@Autowired
	private SellerDao sellerDao;
	
	public List<Seller> getSellerListBySellerAreaId(Long sellerAreaId) {
		return sellerDao.getSellerListBySellerAreaId(sellerAreaId);
	}
	
	
	public int insertSeller(Seller seller) {
		int i = sellerDao.insertSeller(seller);
		return i;
	}
	
	public Seller getSellerByCondition(Map<String, Object> map) {
		return sellerDao.getSellerByCondition(map);
	}
	
	/**
	 * 商家列表
	 * @param map
	 * @return
	 */
	public Map<String,Object> getSellerByList(Map<String, Object> map) {
		
		
		map.put("currentNum", PageUtil.currentNum(Integer.parseInt(map.get("currentPage").toString()), 10));
		map.put("pageSize",10);
		
		int total = sellerDao.total(map);
        map.put("status", "0");
		List<Seller> listSeller = sellerDao.getSellerByList(map);
		map.clear();
		map.put("listSeller", listSeller);
		map.put("total", total);
		return map;
	}
	/**
	 * 商家删除
	 * @param map
	 * @return
	 */
	public int deleteByPrimaryKey(Long id) {
		
		return sellerDao.deleteByPrimaryKey(id);
	}
	/**
	 * 根据ID查询
	 * @param id
	 * @return
	 */
	public Seller getSeller(String id) {
		
		return sellerDao.getSeller(id);
	}
	
	/**
	 * 修改商家 
	 * @param seller
	 * @return
	 */
	public int updateSeller(Seller seller) {
		return sellerDao.updateByPrimaryKeySelective(seller);
	}

	/**
	 * @Description:
	 * @Param: 
	 * @return: 
	 * @Author: Mr.Jiang
	 * @Date: 2018/12/6 14:47
	 */ 
    public Map<String, Object> selStreetSellerList(Map<String, Object> map) {
        map.put("currentNum", PageUtil.currentNum(Integer.parseInt(map.get("currentPage").toString()), 10));
        map.put("pageSize",10);
        int total = sellerDao.selAllCount(map);
        map.put("status", "1");
        List<Seller> listSeller = sellerDao.selStreetSellerList(map);
        map.clear();
        map.put("listSeller", listSeller);
        map.put("total", total);
        return map;
    }

    /**
     * @Description: 查询和商圈并列展示的临街店铺
     * @Param:
     * @return:
     * @Author: Mr.Jiang
     * @Date: 2018/12/6 16:36
     */
    public List<Seller> selStreetSellers() {
    	String status = "1";// 临街店铺数据状态
		List<Seller> sellers = sellerDao.selStreetSellers(status);
		return sellers;
    }
}
