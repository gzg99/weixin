package com.yq.controller.indent;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.indent.JdbIndent;
import com.yq.service.indent.IndentService;
import com.yq.util.ExcelUtil;
import com.yq.util.PageUtil;

import net.sf.json.JSONArray;

/**
 * 订单管理
 * 
 * @author 超
 *
 */
@Controller
@RequestMapping(value = "main/indent")
public class IndentController {

	@Autowired
	IndentService indentService;

	/**
	 * 订单列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/indentList.html")
	public ModelAndView indentList(HttpServletRequest request, JdbIndent jdbIndent) {

		Map<String, Object> indentList = indentService.selectIndentByList(jdbIndent);
		PageUtil.pager(jdbIndent.getCurrentPage(), 10, Integer.parseInt(indentList.get("total").toString()), request);
		ModelAndView view = new ModelAndView("main/indent/indentList");
		view.addObject("indentList", indentList.get("listIndent"));

		return view;

	}
	
	/**
	 * 发货查询单条
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/selJdbIndent.html")
	@ResponseBody
	public String selJdbIndent(String id) {
		JdbIndent jdbIndent = indentService.selectByPrimaryKey(id);
		JSONArray jsonStrs = JSONArray.fromObject(jdbIndent);
		return jsonStrs.toString();
	}

	/**
	 * 发货,维权
	 * 
	 * @param jdbIndent
	 * @return
	 */
	@RequestMapping(value = "/deliverGood.html")
	@ResponseBody
	public String deliverGood(JdbIndent jdbIndent) {
		String sess = "0";
		int up = indentService.updateByPrimaryKeySelective(jdbIndent);
		if (up > 0) {
			sess = "1";
		}
		return sess;
	}

	/**
	 * 概况
	 * 
	 * @return
	 */
	@RequestMapping(value = "/general.html")
	public ModelAndView general() {
		ModelAndView view = new ModelAndView("main/indent/general");
		Map<String, Object> generalSituation = indentService.generalSituation();
		view.addObject("generalSituation", generalSituation);
		return view;
	}

	/**
     * 导出报表
     * @return
     */
	@RequestMapping(value = "/export.html")
	//@ResponseBody
	public void export(HttpServletRequest request, HttpServletResponse response, JdbIndent jdbIndent) throws Exception {
		// 获取数据
		List<JdbIndent> downloadIndentByList = indentService.downloadIndentByList(jdbIndent);

		// excel标题
		String[] title = new String[]{ "商品", "单价", "数量", "总金额", "买家昵称", "交易状态" };

		// excel文件名
		String fileName = "订单明细表" + System.currentTimeMillis() + ".xls";

		// sheet名
		String sheetName = "订单明细表";
		String[][] content = null;
		
		

		
		content=new String[downloadIndentByList.size()][];
		for (int i = 0; i < downloadIndentByList.size(); i++) {
			content[i] = new String[title.length];
			JdbIndent indent = downloadIndentByList.get(i);
			content[i][0] = indent.getCommodityName();
			content[i][1] = indent.getIndentPrice();
			content[i][2] = indent.getIndentQuantity();
			content[i][3] = indent.getIndentMoney();
			content[i][4] = indent.getIndentNickname();
			content[i][5] = indent.getIndentState();
		}

		// 创建HSSFWorkbook
		HSSFWorkbook wb = ExcelUtil.getHSSFWorkbook(sheetName, title, content, null);

		// 响应到客户端
		try {
			this.setResponseHeader(response, fileName);
			OutputStream os = response.getOutputStream();
			wb.write(os);
			os.flush();
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 发送响应流方法
	public void setResponseHeader(HttpServletResponse response, String fileName) {
		try {
			try {
				fileName = new String(fileName.getBytes(), "ISO8859-1");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			response.setContentType("application/octet-stream;charset=ISO8859-1");
			response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
			response.addHeader("Pargam", "no-cache");
			response.addHeader("Cache-Control", "no-cache");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
