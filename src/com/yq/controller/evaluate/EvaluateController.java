package com.yq.controller.evaluate;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.GoodsBuild;
import com.yq.entity.evaluate.JdbEvaluate;
import com.yq.service.GoodsBuildService;
import com.yq.service.evaluate.EvaluateService;
import com.yq.util.StringUtil;
import com.yq.util.UUIDUtils;

import net.sf.json.JSONArray;

/**
 * 评价
 * 
 * @author 超
 *
 */
@Controller
@RequestMapping(value = "page/evaluate")
public class EvaluateController extends StringUtil{

	@Autowired
	EvaluateService evaluateService;

	@Autowired
	private GoodsBuildService goodsBuildService;
	
	/**
	 * 进入评价页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toEvaluatePage.html")
	public ModelAndView toEvaluatePage(Long id) {
		GoodsBuild goods = goodsBuildService.getGoodsBuildById(id);
		ModelAndView view = new ModelAndView("page/evaluate/evaluate");
		view.addObject("goods", goods);
		view.addObject("goods_id", id);
		return view;
	}

	/**
	 * 评价
	 * 
	 * @param jdbEvaluate
	 * @return
	 */
	@RequestMapping(value = "/toevaluate.html", method = RequestMethod.POST)
	public @ResponseBody String evaluate(@RequestParam( value = "filePath", required = false ) MultipartFile files, HttpServletRequest reques,
			JdbEvaluate jdbEvaluate,HttpSession session) {
		if (files != null ) {
			MultipartFile file = files;
			// 保存文件
			String path = saveFile(reques, file);
			jdbEvaluate.setPictureFirst(path);
		}
		String suc = "0";
		jdbEvaluate.setId(UUIDUtils.getUUID());
		jdbEvaluate.setUserId(this.getOppen_id(session));
		int i = evaluateService.insertSelective(jdbEvaluate);

		if (i > 0) {
			suc = "1";
		}
		return suc;

	}

	private String saveFile(HttpServletRequest request,  MultipartFile file) {
		// 判断文件是否为空
		if (!file.isEmpty()) {
			try {
				// 保存的文件路径(如果用的是Tomcat服务器，文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\upload\\文件夹中
				// )
				String filePath = request.getSession().getServletContext().getRealPath("/") + "upload"+File.separator;
				
				
				String fileName = file.getOriginalFilename();
				String jpg = UUIDUtils.getUUID() +"."+fileName.substring(fileName.lastIndexOf(".")+1);
				File saveDir = new File(filePath,jpg);
				if (!saveDir.getParentFile().exists()){
					saveDir.getParentFile().mkdirs();
				}
				// 转存文件
				file.transferTo(saveDir);
				return filePath;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "";
	}
	
	/**
	 * 评价列表
	 * @param commodityId
	 * @return
	 */
	@RequestMapping(value="/showEvaluate.html")
	public ModelAndView showEvaluate(String commodityId) {
		ModelAndView view = new ModelAndView("page/evaluate/showEvaluate");
		Map<String,Object> map = evaluateService.showEvaluate(commodityId);
		view.addObject("showEvaluate", map);
		view.addObject("commodityId", commodityId);
		return view;
	}
	
	
	/**
	 * 评价列表
	 * @param commodityId
	 * @return
	 */
	@RequestMapping(value="/showEvaluateAj.html")
	public @ResponseBody String showEvaluateAj(String commodityId,String grade) {
		Map<String,Object> mapData = new HashMap<String,Object>();
		mapData.put("commodityId", commodityId);
		mapData.put("grade", grade);
		
		List<Map<String,Object>> map = evaluateService.showEvaluateAj(mapData);
		
		JSONArray jsonStrs = JSONArray.fromObject(map);
		return jsonStrs.toString();
		
	}
	
	
}
