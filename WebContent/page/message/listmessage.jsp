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
<div class="sqxxs">
	<div class="sqxxs_txt">社区新鲜事</div>
    <div class="clear"></div>
</div>
<c:forEach items="${messageList}" var="messageList" varStatus="seller">
	<div class="sq_list">
	    <div class="gy_list_zz">
	        <img src="images/gy_tx01.jpg"/>
	        <p class="gy_list_zz_mz">${messageList.realname}</p>
	        <p class="gy_list_zz_sj"><fmt:formatDate value="${messageList.publish_time}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
	        <div class="clear"></div>
	    </div>
	    <div class="gy_list_txt">${messageList.message_content}</div>
	    <div>
	        <div><a href="replatView.html?messageId=${messageList.id}" >评论${messageList.messagemsg}</a></div>
	        <div><a href="javascript:toiLike(${messageList.id});" >赞<sped  id=${messageList.id}>${messageList.messagecount}</sped></a></div>
	    </div>
	</div>
</c:forEach>
<!--<div class="sq_list">
    <div class="gy_list_zz">
        <img src="images/gy_tx01.jpg"/>
        <p class="gy_list_zz_mz">无花果先生</p><p class="gy_list_zz_sj">7-18</p>
        <div class="clear"></div>
    </div>
    <div class="gy_list_txt">遛狗业主请主动清理宠物垃圾，营造健康环境</div>
     <div class="gy_list_img">
        <img src="images/sq_img01.jpg" class="img3">
        <img src="images/sq_img01.jpg" class="img3">
        <img src="images/sq_img01.jpg" class="img3 mr0">
        <div class="clear"></div>
    </div> 
</div>-->
<!-- <div class="sq_list">
    <div class="gy_list_zz">
        <img src="images/gy_tx01.jpg"/>
        <p class="gy_list_zz_mz">无花果先生</p><p class="gy_list_zz_sj">7-18</p>
        <div class="clear"></div>
    </div>
    <div class="gy_list_txt">遛狗业主请主动清理宠物垃圾，营造健康环境</div>
    <div class="gy_list_img">
        <img src="images/sq_img01.jpg" class="img">
        <div class="clear"></div>
    </div>
</div> -->
<div class="clear"></div>
<!-- <div class="menu"><img src="images/menu.png" width="100%" height="100%" alt=""/></div> -->
<script src="js/base.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>	


<script type="text/javascript">
    
    function toiLike(id) {
    	var url = "ilikeIs.html"
    	jQuery.ajax({
    		type : "POST",
    		url : url,
    		data : {"id":id},
    		
    		error : function(req, textStatus, errThrow){
    			var sessionstatus = req.getResponseHeader("sessionstatus");
    			if(sessionstatus){return;}// 防止超时闪现弹窗
    			alert("系统错误");
    			$("#addprizebut").removeAttr("disabled");
    		},
    		success : function(msg) {
    			
    			if (msg == "1") {
    				
    				$("#"+id).html(parseInt($("#"+id).html()) +1);
     			} 
    		}
    	});
    }
</script>
</body>
</html>
