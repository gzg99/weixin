package com.yq.controller.jurisdiction;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.jurisdiction.role.JdbMenuRole;
import com.yq.entity.jurisdiction.role.JdbRole;
import com.yq.service.jurisdiction.MenuService;
import com.yq.service.jurisdiction.RoleService;
import com.yq.util.PageUtil;

import net.sf.json.JSONArray;

/**
 * 角色管理
 * 
 * @author 超
 *
 */
@Controller
@RequestMapping(value = "/main/role")
public class RoleController {

	@Autowired
	RoleService roleService;

	@Autowired
	MenuService menuService;

	/**
	 * 增加角色
	 * 
	 * @param record
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/addRole.html")
	public String insertSelective(JdbRole record) {
		int insert = roleService.insertSelective(record);
		return insert + "";
	}

	/**
	 * 跳转增加角色页面
	 * 
	 * @param record
	 * @return
	 */
	@RequestMapping(value = "/toaddrole.html")
	public ModelAndView toaddrole(JdbRole record) {
		ModelAndView view = new ModelAndView("main/jurisdiction/addrole");
		return view;
	}

	/**
	 * 给角色授权
	 * 
	 * @param jdbUserRole
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/deleteRoleById.html")
	public String deleteRoleById(String id) {
		int del = roleService.deleteRoleById(id);
		return del + "";
	}

	/**
	 * 角色列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/listJdbRole.html")
	public ModelAndView listJdbRole(@RequestParam(defaultValue = "1") Integer currentPage, HttpServletRequest request) {
		Map<String, Object> listRole = roleService.listJdbRole(currentPage);
		ModelAndView view = new ModelAndView();
		PageUtil.pager(currentPage, 10, Integer.parseInt(listRole.get("total").toString()), request);
		view.addObject("listRole", listRole.get("listRole"));
		view.setViewName("main/jurisdiction/role");
		return view;
	}

	/**
	 * 查询所有菜单
	 * 
	 * @return
	 */
	@RequestMapping(value = "/selectMenu.html")
	@ResponseBody
	public String selectByList() {
		List<Map<String, Object>> listMenu = menuService.selectByList();
		JSONArray jsonStrs = JSONArray.fromObject(listMenu);
		return jsonStrs.toString();

	}

	/**
	 * 给角色授权
	 * 
	 * @param jdbUserRole
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/addRoleMenu.html")
	public String addRoleMenu(JdbMenuRole jdbMenuRole) {
		int insert = roleService.insertMenuRole(jdbMenuRole);
		return insert + "";
	}
}
