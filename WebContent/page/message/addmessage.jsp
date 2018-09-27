<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>社区</title>
		<link href="../css/evaluate/jj20180626.css" rel="stylesheet" type="text/css">
	</head>
	
	<body style="padding-bottom:1.2rem; background: #E6E6E6;">
		<div class="sjsc-title1">
			<h3 class="sjsc-t1l f-l"><a href="JavaScript:history.go(-1)"><span class="le"><img src="images/back.png" alt="" style="width:50px;height: 50px;padding-top: 11px;padding-left: 5px"/></span></a></h3>
		    <div style="clear:both;"></div>
		</div>
		<ul class="pingjia">
			<form action="" method="post" id="addmessage" enctype="multipart/form-data">
				<li class="pingjia_nr">
					 <input id="title" name="title" placeholder="标题"></input><br/>
					 <textarea id="messageContent" name="messageContent" placeholder="说说你的现在想法"></textarea>
					 <div class="pingjia_nr_sub"><input type="button" onclick="addevalclick();" value="提交"/></div>
				</li>
			</form>
		</ul>
		<div class="clear"></div>
		<script type="text/javascript" src="../js/evaluate/base.js"></script>
		<script type="text/javascript" src="../../main/lib/layer/1.9.3/layer.js"></script>
		<script type="text/javascript" src="../js/jquery.js"></script>	
		<script type="text/javascript"> 
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
		    }
		</script>
	</body>
</html>