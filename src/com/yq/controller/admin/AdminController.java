package com.yq.controller.admin;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yq.entity.Admin;
import com.yq.entity.Seller;
import com.yq.service.AdminService;
import com.yq.service.SellerService;
import com.yq.util.MD5Util;
import com.yq.util.StringUtil;

@Controller
@RequestMapping("/admin/")
public class AdminController extends StringUtil{
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private SellerService sellerService;
	
	Map<String, Object> map = new HashMap<String, Object>();

	@ResponseBody
	@RequestMapping(value = "isExist.html")
	public String isExist(String username, String password,HttpSession session) {
		//说明为管理员
		if("admin".equals(username)) {
			map.put("username", username);
			map.put("password",MD5Util.MD5Encode(password,""));
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			Admin admin = null;
			if("1".equals(adminService.isExist(map))) {
				admin = adminService.getAdmin(map);
				session.setAttribute("id", admin.getAdmin_id());
			}
			return adminService.isExist(map);	
		} else {                                  //说明为加盟商
			map.put("username", username);
			map.put("password",MD5Util.MD5Encode(password,""));
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			Seller seller = sellerService.getSellerByCondition(map);
			if(seller != null) {
				session.setAttribute("id", seller.getId());
				return 1+"";
			}
			return -1+"";
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value = "update.html")
	public String update(String password,String password2,HttpSession session) {
		map.put("admin_id", 1);
		String pwd = adminService.listById(map);
		String rs ="0";
		if(MD5Util.MD5Encode(password,"").equals(pwd)){
			
			map.put("password", MD5Util.MD5Encode(password2,""));
			rs= adminService.update(map);
		}
		
		return rs ;
	}
//	@ResponseBody
//	@RequestMapping(value = "update.html")
//	public String listById(){
//		map.put("admin_id", 1);
//		return adminService.listById(map);
//	}
}
