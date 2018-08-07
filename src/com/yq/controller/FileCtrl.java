package com.yq.controller;

import com.weixin.util.WxUtil;
import java.io.File;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping({"/main"})
public class FileCtrl {
	@ResponseBody
	@RequestMapping({"/upload.html"})
	public Object upload(@RequestParam MultipartFile file, HttpServletRequest request) {
		String realpath = request.getSession().getServletContext().getRealPath("");
		String path = "";
		if (realpath.contains("\\"))
			path = realpath.substring(0, realpath.lastIndexOf("\\")) + "/upload";
		else {
			path = realpath.substring(0, realpath.lastIndexOf("/")) + "/upload";
		}
	    System.out.println("path=" + path);
	    String fileName = new Date().getTime() + ".png";
	
	    File targetFile = new File(path, fileName);
	    if (!targetFile.exists()) {
	      targetFile.mkdirs();
	    }
	
	    try {
	      file.transferTo(targetFile);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    String link = WxUtil.link;
	    String url = link + "/upload/" + fileName;
	    System.out.println(url);
	    return url;
	}
	
	@ResponseBody
	@RequestMapping({"/upload1.html"})
	public Object upload1(@RequestParam MultipartFile file1, HttpServletRequest request) {
		String realpath = request.getSession().getServletContext().getRealPath("");
		String path = "";
		if (realpath.contains("\\"))
			path = realpath.substring(0, realpath.lastIndexOf("\\")) + "/upload";
		else {
			path = realpath.substring(0, realpath.lastIndexOf("/")) + "/upload";
		}
	    System.out.println("path=" + path);
	    String fileName = new Date().getTime() + ".png";
	
	    File targetFile = new File(path, fileName);
	    if (!targetFile.exists()) {
	      targetFile.mkdirs();
	    }
	
	    try {
	      file1.transferTo(targetFile);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    String link = WxUtil.link;
	    String url = link + "/upload/" + fileName;
	    System.out.println(url);
	    return url;
	}
	
	@ResponseBody
	@RequestMapping({"/upload2.html"})
	public Object upload2(@RequestParam MultipartFile file2, HttpServletRequest request) {
		String realpath = request.getSession().getServletContext().getRealPath("");
		String path = "";
		if (realpath.contains("\\"))
			path = realpath.substring(0, realpath.lastIndexOf("\\")) + "/upload";
		else {
			path = realpath.substring(0, realpath.lastIndexOf("/")) + "/upload";
		}
	    System.out.println("path=" + path);
	    String fileName = new Date().getTime() + ".png";
	
	    File targetFile = new File(path, fileName);
	    if (!targetFile.exists()) {
	      targetFile.mkdirs();
	    }
	
	    try {
	      file2.transferTo(targetFile);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    String link = WxUtil.link;
	    String url = link + "/upload/" + fileName;
	    System.out.println(url);
	    return url;
	}
}