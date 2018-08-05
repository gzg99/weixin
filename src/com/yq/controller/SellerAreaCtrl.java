package com.yq.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.Seller;
import com.yq.entity.SellerArea;
import com.yq.entity.evaluate.JdbEvaluate;
import com.yq.service.SellerAreaService;
import com.yq.service.SellerService;
import com.yq.util.StringUtil;
import com.yq.util.UUIDUtils;

@Controller
@RequestMapping("/")
public class SellerAreaCtrl extends StringUtil {
	
	@Autowired
	private SellerAreaService sellerAreaService;
	
	@Autowired
	private SellerService sellerService;

	@RequestMapping(value = "page/getAllSellerAreaList.html")
	public ModelAndView getAllSellerAreaList() {
		ModelAndView mv = new ModelAndView();
		List<SellerArea> list = sellerAreaService.getAllSellerArea();
		mv.addObject("list", list);
		mv.setViewName("page/jjsy");
		return mv;
	}
	
	@RequestMapping(value = "page/getSellerListBySellerAreaId.html")
	public ModelAndView getSellerListBySellerAreaId(Long sellerAreaId, String firstLink, String secondLink) {
		ModelAndView mv = new ModelAndView();
		List<Seller> list = sellerService.getSellerListBySellerAreaId(sellerAreaId);
		mv.addObject("list", list);
		mv.addObject("firstLink", firstLink);
		mv.addObject("secondLink", secondLink);
		mv.setViewName("page/sqnr");
		return mv;
	}
	
	/**
	 * 进入添加商家页面
	 * @param seller
	 * @return 超
	 */
	@RequestMapping(value = "/main/toAddSeller.html")
	public ModelAndView toAddSeller() {
		
		ModelAndView view = new ModelAndView("/page/seller/addseller");
		
		return view;
	}
	
	/**
	 * 增加商家
	 * @param seller
	 * @return 超
	 */
	
	@RequestMapping(value = "/main/insertSeller.html", method = RequestMethod.POST)
	public @ResponseBody String insert(@RequestParam(value = "filePath", required = false) MultipartFile files, Seller seller,
			HttpServletRequest reques) {
		if (files != null ) {
			MultipartFile file = files;
			// 保存文件
			String path = saveFile(reques, file);
			seller.setSellerImg(path);
		}
		
		int i = sellerService.insertSeller(seller);
		return i+"";
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
	
}
