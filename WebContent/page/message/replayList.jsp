<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
		<title>评论列表</title>
		<link href="css/sq20180730.css" rel="stylesheet" type="text/css">
	</head>
	
	<body style="padding-bottom:1.2rem;">
		<div class="sjsc-title1">
	    	<h3 class="sjsc-t1l f-l"><a href="JavaScript:history.go(-1)"><span class="le"><img src="images/back.png" alt="" style="width:30px;height: 30px;padding-top: 11px;padding-left: 5px"/></span></a></h3>
	        <div style="clear:both;"></div>
	    </div>
		<c:forEach items="${messageList}" var="messageList" varStatus="seller">
			<div class="sq_list">
			    <div class="gy_list_zz">
			        <img src="${messageList.headImg}"/>
			        <p class="gy_list_zz_mz">${messageList.realname}</p>
			        <p class="gy_list_zz_sj"><fmt:formatDate value="${messageList.publishTime}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
			        <div class="clear"></div>
			    </div>
			    <div class="gy_list_txt">${messageList.replayContent}</div>
		
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
			function insertReplay() {
				var formData = new FormData($("#addmessageReplay")[0]);
				var url = "insertReplay.html";
				jQuery.ajax({
					type : "POST",
					url : url,
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
