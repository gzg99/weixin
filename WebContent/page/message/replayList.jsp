<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
<title>商圈内容</title>
<link href="../css/sq20180730.css" rel="stylesheet" type="text/css">
</head>

<body style="padding-bottom:1.2rem;">
<!-- <div class="sqfw">
   <a href="####"><img src="images/sq_ico1.png"><p>安 装</p></a>
   <a href="####"><img src="images/sq_ico2.png"><p>维 修</p></a>
   <a href="####"><img src="images/sq_ico3.png"><p>保 洁</p></a>
   <a href="####" style="margin:0; float:right;"><img src="images/sq_ico4.png"><p>洗 衣</p></a>
   <div class="clear"></div>
</div> -->

<c:forEach items="${messageList}" var="messageList" varStatus="seller">
	<div class="sq_list">
	    <div class="gy_list_zz">
	        <img src="images/gy_tx01.jpg"/>
	        <p class="gy_list_zz_mz">${messageList.realname}</p>
	        <p class="gy_list_zz_sj"><fmt:formatDate value="${messageList.publish_time}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
	        <div class="clear"></div>
	    </div>
	    <div class="gy_list_txt">${messageList.message_content}</div>

	</div>
</c:forEach>
<form action="" method="post" id="addmessageReplay" enctype="multipart/form-data">
<input type="hidden" name="messageId" value="${messageId }">
	<textarea id="replay_content" name="replayContent" placeholder="写评论"></textarea>
	<div class="pingjia_nr_sub"><input type="button" onclick="insertReplay();" value="提交"/></div>
</form>
<div class="clear"></div>
<script src="js/base.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>	


<script type="text/javascript">
    /* 
function addevalclick() {
	 
	var formData = new FormData($("#addmessage")[0]);

	var url = "insertSelective.html"
	jQuery.ajax({
		type : "POST",
		url : encodeURI(url),
		data : formData,
		async : false,
		cache : false,
		contentType : false,
		processData : false,
		error : function(req, textStatus, errThrow){
			var sessionstatus = req.getResponseHeader("sessionstatus");
			if(sessionstatus){return;}// 防止超时闪现弹窗
			alert("系统错误");
			$("#addprizebut").removeAttr("disabled");
		},
		success : function(msg) {
			
			if (msg == "1") {
				alert('发表成功');
				window.location.href='/weixin/page/listMessage.html';
			} else {

				layer.msg("操作失败");
			}
		}
	});
} */

function insertReplay() {
	 
	var formData = new FormData($("#addmessageReplay")[0]);

	var url = "insertReplay.html"
	jQuery.ajax({
		type : "POST",
		url : encodeURI(url),
		data : formData,
		async : false,
		cache : false,
		contentType : false,
		processData : false,
		error : function(req, textStatus, errThrow){
			var sessionstatus = req.getResponseHeader("sessionstatus");
			if(sessionstatus){return;}// 防止超时闪现弹窗
			alert("系统错误");
			$("#addprizebut").removeAttr("disabled");
		},
		success : function(msg) {
			
			if (msg == "1") {
				alert('发表成功');
				//window.location.href='/weixin/page/listMessage.html';
				location.reload();
			} else {

				layer.msg("操作失败");
			}
		}
	});
}
</script>
</body>
</html>
