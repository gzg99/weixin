package com.yq.controller.message;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yq.entity.message.JdbMessage;
import com.yq.entity.message.JdbMessageReplay;
import com.yq.service.message.MessageService;
import com.yq.util.StringUtil;

/**
 * 社区管理
 * 
 * @author 王超
 *
 */
@Controller
public class MessageController extends StringUtil {

	@Autowired
	MessageService messageService;

	/**
	 * 跳转增加社区内容页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/page/insertView")
	public ModelAndView insertView() {
		ModelAndView view = new ModelAndView();
		view.setViewName("page/message/addmessage");
		return view;
	}

	/**
	 * 删除社区信息
	 */
	@RequestMapping(value = "/page/deleteByPrimaryKey")
	public int deleteByPrimaryKey(Long id) {
		int del = messageService.deleteByPrimaryKey(id);
		return del;
	}

	/**
	 * 增加社区信息
	 */
	@RequestMapping(value = "/page/insertSelective.html", method = RequestMethod.POST)
	@ResponseBody
	public String insertSelective(JdbMessage record, HttpSession session) {
		record.setOpenId(getOppen_id(session));
		int ins = messageService.insertSelective(record);
		return ins+"";
	}

	/**
	 * 列表查询社区信息
	 */
	@RequestMapping(value = "/page/listMessage")
	public ModelAndView listMessage() {
		ModelAndView view = new ModelAndView("page/message/listmessage");
		List<Map<String,Object>> messageList = messageService.listMessage();
		view.addObject("messageList", messageList);
		return view;
	}

	/**
	 * 点赞
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/page/ilikeIs")
	@ResponseBody
	public String ilikeIs(long id, HttpSession session) {
		JdbMessageReplay jdbMessageReplay = new JdbMessageReplay();
		jdbMessageReplay.setOpenId(getOppen_id(session));
		jdbMessageReplay.setMessageId(id);
		byte ispraise = 1;
		jdbMessageReplay.setIsPraise(ispraise);
		int i = messageService.insertSelectiveReplay(jdbMessageReplay);
		return i + "";
	}
	
	/**
	 * 点赞
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/page/review")
	@ResponseBody
	public String review(long id, HttpSession session) {
		JdbMessageReplay jdbMessageReplay = new JdbMessageReplay();
		jdbMessageReplay.setOpenId(getOppen_id(session));
		jdbMessageReplay.setMessageId(id);
		byte ispraise = 1;
		jdbMessageReplay.setIsPraise(ispraise);
		int i = messageService.insertSelectiveReplay(jdbMessageReplay);
		return i + "";
	}
	
	/**
	 * 增加评论
	 * @param record
	 * @return
	 */
	@RequestMapping(value = "/page/insertReplay")
	@ResponseBody
	public String selectByMapList(JdbMessageReplay record, HttpSession session) {
		record.setOpenId(getOppen_id(session));
//		List<Map<String,Object>> messageList= messageService.selectByMapList(messageId);
		int i = messageService.insertSelectiveReplay(record);
		return i + "";
	}
	
	/**
	 * 查询评论列表
	 * @param messageId
	 * @return
	 */
	@RequestMapping(value = "/page/replatView")
	public ModelAndView replatView(Long messageId) {
		ModelAndView view = new ModelAndView("/page/message/replayList");
		List<Map<String,Object>> messageList= messageService.selectByMapList(messageId);
		view.addObject("messageList", messageList);
		view.addObject("messageId", messageId);
		return view;
	}
	
	
}
