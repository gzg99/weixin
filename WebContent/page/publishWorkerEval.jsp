<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>发表评论</title>
	<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
	</head>

	<body style="padding-bottom:1.2rem; background: #E6E6E6;">
		<ul class="pingjia">
			<form action="" method="post" id="addevaluate" enctype="multipart/form-data">
				<input type="hidden" name="score" id="score">
				<input type="hidden" name="workerId" id="workerId" value="${worker.id}">
				 <li class="pingjia_nr">
				      <div class="pingjia_nr_top">
					      <a href="#"><img src="${worker.workerImg }" alt=""/></a>
						  <div class="pingjia_nr_bt"><h2>${worker.name }</h2>	  
						  </div>
					 </div>
					 <div class="pingfen">
					     <div class="pingfen_txt">评分</div>
						 <ul>
							 <li class="active"></li>
							 <li class="active"></li>
							 <li class="active"></li>
							 <li class="active"></li>
							 <li class="active"></li>
						 </ul>
					 </div>
					 <textarea id="evaluateContent" name="content" placeholder="请填写1~300字的评价"></textarea>
					 <div class="pingjia_nr_sub"><input type="button" onclick="addevalclick();" value="提交"/></div>
				</li>
			</form>
		</ul>
		<div class="clear"></div>
	</body>
	
	<script src="js/base.js"></script>
	<script type="text/javascript" src="../main/lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script>
		$(function(){
			$("#score").val("5");
			$(".pingfen ul li").click(function(){
				if($(this).attr("class").indexOf("active")!=-1){
					$(this).nextAll().removeClass("active");
					$("#score").val(5-$(this).nextAll().length);
				}else{
					$(this).addClass("active");
					$(this).prevAll().addClass("active");
					$("#score").val(1+$(this).prevAll().length);
				};
			});
			$(".sc_img ul li").click(function(){
				if($(this).children().length==1){
				$(this).append("<div class='remove_img' onclick='remove_img(this)'>删除</div>");
				};
			});
		});
		
		function remove_img(e){
			$(e).parent().remove();
		};
	    
	    function addevalclick() {
	    	var formData = new FormData($("#addevaluate")[0]);
	    	var url = "addWorkerEval.html";
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
	    			alertModelPop("系统错误");
	    			$("#addprizebut").removeAttr("disabled");
	    		},
	    		success : function(msg) {
	    			
	    			if (msg == "1") {
	    				alert('感谢您的评价');
	    				window.location.href='/weixin/page/getWorkerInfoById.html?id='+$("#workerId").val();
	    			} else {
	
	    				layer.msg("操作失败");
	    			}
	    		}
	    	});
	    }
	</script>
</html>