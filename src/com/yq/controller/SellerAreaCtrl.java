package com.yq.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.json.JSONObject;
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
import com.yq.service.SellerAreaService;
import com.yq.service.SellerService;
import com.yq.util.MD5Util;
import com.yq.util.PageUtil;
import com.yq.util.StringUtil;
import com.yq.util.UUIDUtils;

@Controller
@RequestMapping("/")
public class SellerAreaCtrl extends StringUtil {
	
	@Autowired
	private SellerAreaService sellerAreaService;
	
	@Autowired
	private SellerService sellerService;
	
	@RequestMapping(value = "main/sellerAreaAddjsp.html")
	public ModelAndView sellerAreaAddjsp() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main/sellerArea/add");
		return mv;
	}
	

	@RequestMapping(value = "page/getAllSellerAreaList.html")
	public ModelAndView getAllSellerAreaList() {
		ModelAndView mv = new ModelAndView();
		List<SellerArea> list = sellerAreaService.getAllSellerArea();
		mv.addObject("list", list);
		mv.setViewName("page/jjsy");
		return mv;
	}
	
	@RequestMapping(value="main/getAllSellerArea.html")
	@ResponseBody
	public String getAllSellerArea() {
		List<SellerArea> list = sellerAreaService.getAllSellerArea();
		return JSONObject.valueToString(list);
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
	public ModelAndView toAddSeller(String id) {
		ModelAndView view = new ModelAndView("main/seller/addseller");
		if(StringUtils.isNotBlank(id)){
			Seller seller = sellerService.getSeller(id);
			view.addObject("seller",seller);
		}
		
		return view;
	}
	
	/**
	 * 商家列表页面
	 * @param seller
	 * @return 超
	 */
	@RequestMapping(value = "/main/sellerList.html")
	public ModelAndView sellerList(@RequestParam(defaultValue = "1") Integer currentPage ) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("currentPage", currentPage);
		
		Map<String,Object> mapList = sellerService.getSellerByList(map);
		ModelAndView view = new ModelAndView("main/seller/listseller");
		view.addObject("mapList", mapList);
		view.addObject("currentPage", currentPage);
		return view;
	}
	
	
	/**
	 * 删除商家
	 * @param seller
	 * @return 超
	 */
	@RequestMapping(value = "/main/deleteseller.html")
	public @ResponseBody String deleteseller(Long id) {
		int i = sellerService.deleteByPrimaryKey(id);
		return i+"";
	}
	
	
	
	/**
	 * 增加商家
	 * @param seller
	 * @return 超
	 */
	
	@RequestMapping(value = "/main/insertSeller.html", method = RequestMethod.POST)
	public @ResponseBody String insert(Seller seller,
			HttpServletRequest reques) {
		//默认初始密码为123456
		seller.setPassword(MD5Util.MD5Encode("123456",""));
		try {
			//seller.setAddress(URLDecoder.decode(seller.getAddress(), "utf-8"));
			seller.setAddress(new String (seller.getAddress().getBytes("iso8859-1"),"UTF-8"));
			seller.setSellerName(new String (seller.getSellerName().getBytes("iso8859-1"),"UTF-8"));
			seller.setSellerDetail(new String (seller.getSellerDetail().getBytes("iso8859-1"),"UTF-8"));
			seller.setUserName(new String (seller.getUserName().getBytes("iso8859-1"),"UTF-8"));
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = 0;
		if(seller.getId() != null) {
			i = sellerService.updateSeller(seller);
		} else {
			i = sellerService.insertSeller(seller);
		}
		
		return i+"";
	}
	
	private String saveFile(HttpServletRequest request,  MultipartFile file) {
		// 判断文件是否为空
		if (!file.isEmpty()) {
			try {
				// 保存的文件路径(如果用的是Tomcat服务器，文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\upload\\文件夹中
				// )
				String filePath =  "E:"+File.separator+"upload"+File.separator;
				
				
				String fileName = file.getOriginalFilename();
				String jpg = UUIDUtils.getUUID() +"."+fileName.substring(fileName.lastIndexOf(".")+1);
				File saveDir = new File(filePath,jpg);
				if (!saveDir.getParentFile().exists()){
					saveDir.getParentFile().mkdirs();
				}
				// 转存文件
				file.transferTo(saveDir);
				return filePath+jpg;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "";
	}
	@ResponseBody
	@RequestMapping(value = "/main/sellerAreaInsert.html")
	public String sellerAreaInsert(String sellerArea, String firstLink, String secondLink,
			String sellerImg, String sellerDetail ) {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		String addTime =sf.format(new Date());
		Map<String, Object> map = new HashMap<>();
		map.put("sellerArea", sellerArea);
		map.put("firstLink", firstLink);
		map.put("secondLink", secondLink);
		map.put("sellerImg", sellerImg);
		map.put("sellerDetail", sellerDetail);
		map.put("addTime", addTime);
		return sellerAreaService.insert(map) + "";
	}
	
	@ResponseBody
	@RequestMapping(value = "/main/updateSellerArea.html")
	public Object updateSellerArea(Long id, String sellerArea, String firstLink, String secondLink,
			String sellerImg, String sellerDetail,String longitude,String latitude) {
		Map<String, Object> map = new HashMap<>();
		map.put("sellerArea", sellerArea);
		map.put("firstLink", firstLink);
		map.put("secondLink", secondLink);
		map.put("sellerImg", sellerImg);
		map.put("sellerDetail", sellerDetail);
		map.put("longitude", longitude);
		map.put("latitude", latitude);
		map.put("id", id);
		return sellerAreaService.update(map) + "";

	}
	
	/**
	 * 商圈列表
	 * */
	@RequestMapping(value = "/main/sellerAreaList.html")
	public ModelAndView list(@RequestParam(defaultValue = "1") Integer currentPage,
			HttpServletRequest request) throws UnsupportedEncodingException {
		try {
			int total = sellerAreaService.count();
			PageUtil.pager(currentPage, pagesize_1, total, request);
			Map<String, Object> map = new HashMap<>();
			map.put("pageSize", pagesize_1);
			map.put("currentNum", PageUtil.currentNum(currentPage, pagesize_1));
			List<SellerArea> list = sellerAreaService.list(map);
			ModelAndView ml = new ModelAndView();
			ml.addObject("list", list);
			ml.setViewName("main/sellerArea/list");
			return ml;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 根据商圈id查询商圈详情
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/main/getSellerAreaById.html")
	public ModelAndView getSellerAreaById(Long id) {
		ModelAndView mv = new ModelAndView();
		SellerArea sellerArea = sellerAreaService.getSellerAreaById(id);
		mv.addObject("sellerArea", sellerArea);
		mv.setViewName("main/sellerArea/info");
		return mv ;
	}

	
	@RequestMapping("/main/getImage.html")
	public void getImage(String paths,HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 从硬盘读取
		Seller seller = sellerService.getSeller(paths);
		File filePic = new File(seller.getSellerImg());
		if (filePic.exists()) {
			FileInputStream is = new FileInputStream(filePic);
			int i = is.available(); // 得到文件大小
			byte data[] = new byte[i];
			is.read(data); // 读数据
			is.close();
			response.setContentType("image/*"); // 设置返回的文件类型
			OutputStream toClient = response.getOutputStream(); // 得到向客户端输出二进制数据的对象
			toClient.write(data); // 输出数据
			toClient.close();
		}
	}

	
	
	
}
