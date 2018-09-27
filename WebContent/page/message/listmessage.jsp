<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
	<head>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
		<title>社区新鲜事</title>
		<link href="css/sq20180730.css" rel="stylesheet" type="text/css">
		<style type="text/css">
		   	.gy_list_zz{width:100%;}
			.gy_list_zz img{ width: 0.64rem; height: 0.64rem; border-radius: 50%; margin-right:0.3rem; float: left; }
			.gy_list_zz_mz{ color: #1f1f1e; font-size: 0.28rem; line-height: 0.28rem;}
			.gy_list_zz_sj{ color: #8d8c86;font-size: 0.2rem; line-height: 0.2rem; margin-top: 0.16rem;}
			.gy_list_txt{ font-size:0.3rem;width:100%; padding:0.2rem 0;}
			.gy_list_img img{ width:6.9rem; height:4rem; float:left; margin-bottom:0.3rem;}
			.gy_list_img .img3{ width:2rem;height:1.4rem; margin-right:0.45rem;}
			.gy_list_img .img2{ width:3rem;height:2rem; margin-right:0.45rem;}
			.gy_list_img .mr0{ margin-right:0;}
			.gy_list_zfdz{width:100%;}
			.gy_list_zf{ height: 0.32rem; line-height: 0.32rem; padding-left: 0.46rem; background: url(images/gy_ico7.png) no-repeat left center;background-size: 0.32rem 0.32rem; font-size: 0.32rem; color: #666; cursor: pointer; float: left; width:1.3rem; margin-left:0.54rem;}
			.gy_list_pl{ height: 0.32rem; line-height: 0.32rem; padding-left: 0.46rem; background: url(images/gy_ico9.png) no-repeat left center;background-size: 0.32rem 0.32rem; font-size: 0.32rem; color: #666; cursor: pointer; float:left; width:1.3rem; margin-left:0.54rem;}
			.gy_list_dz{ height: 0.32rem; line-height: 0.32rem; padding-left: 0.46rem; background: url(images/gy_ico8.png) no-repeat left center;background-size: 0.32rem 0.32rem; font-size: 0.32rem; color: #666; cursor: pointer; float:right; width:1.3rem; margin-left:0.54rem;}e
		</style>
	</head>

	<body style="padding-bottom:1.2rem;">
		<div class="sjsc-title1">
	    	<h3 class="sjsc-t1l f-l"><a href="JavaScript:history.go(-1)"><span class="le"><img src="images/back.png" alt="" style="width:30px;height: 30px;padding-top: 11px;padding-bottom:6px;padding-left: 5px"/></span></a></h3>
	        <div style="clear:both;"></div>
	    </div>
		<div class="sqxxs">
			<div class="sqxxs_txt">社区新鲜事</div>
		    <div class="clear"></div>
		</div>
		<c:forEach items="${messageList}" var="messageList" varStatus="seller">
			<div class="sq_list">
			    <div class="gy_list_zz">
			        <img src="${messageList.headImg }"/>
			        <p class="gy_list_zz_mz">${messageList.realname}</p>
			        <p class="gy_list_zz_sj"><fmt:formatDate value="${messageList.publishTime}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
			        <div class="clear"></div>
			    </div>
			    <div class="gy_list_txt">${messageList.messageContent}</div>
			    <div class="gy_list_zfdz">
<!-- 					<div class="gy_list_zf">13</div> -->
				    <div class="gy_list_pl"><a href="replatView.html?messageId=${messageList.id}" >评论${messageList.messagemsg}</a></div>
					<div class="gy_list_dz"><a href="javascript:toiLike(${messageList.id});" >赞<sped  id=${messageList.id}>${messageList.messagecount}</sped></a></div>
					<div class="clear"></div>
				</div>
			</div>
		</c:forEach>
		<div class="clear"></div>
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
