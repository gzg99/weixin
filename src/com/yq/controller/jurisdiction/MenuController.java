package com.yq.controller.jurisdiction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yq.service.jurisdiction.MenuService;
 

@Controller
@RequestMapping(value="/main/menu")
public class MenuController {
	
	@Autowired
	MenuService menuService;

	/**
	 * 查询所有菜单
	 * @return
	 */
//	@RequestMapping(value = "/selectMenu.html")
//	@ResponseBody
//	public String selectByList() {
//		
//		List<JdbMenu> listMenu =  menuService.selectByList();
//		JSONObject obj =  JSONObject.fromObject(listMenu);
//		return obj.toString();
//		
//	}
}
