<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>评价</title>
	<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
	<link href="css/iconfont.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
	<style type="text/css">
		body{background: #F5F5F5;}
	    .sp_top{ font-size: 0.28rem; height:0.8rem; width: 100%; position: fixed;top: 0;left: 0; line-height: 0.8rem; text-align: center;}
		.sp_top i{color: #999; font-size: 0.36rem; cursor: pointer; position: absolute; left: 0.2rem; top:0;}
		.sp_top_bt{ width: 100%; float: left;background-color:#fff; border-bottom: #ddd solid 0.02rem;}
		.sp_top_tab{ width: 100%; height: 0.65rem; float: left;background-color:#fff; height: 0.75rem; border-bottom: #ddd solid 0.01rem; padding-top: 0.1rem;}
		.sp_top_btn{ float: left; font-size: 0.28rem; line-height:0.36rem; width: 1.2rem; margin-left: 0.5rem; cursor: pointer;}
		.sp_top_btn span{font-size: 0.24rem;}
		.sp_top .active{ border-bottom:#F4772A solid 0.03rem; color: #F4772A;}
		.pinglun{ width: 100%; margin-top:1.8rem;}
		.pinglun_nr{ width:7.1rem; float: left; padding: 0.2rem; background-color:#fff; margin-top: 0.02rem; }
		.pinglun_nr img{ width:0.64rem; height: 0.64rem; border-radius: 50%; border:#ddd solid 0.01rem; float: left;}
		.pinglun_na{ padding-left: 0.16rem; width: 6.2rem; float: left;}
		.pinglun_sj{ float:right; color: #999; font-size: 0.2rem; }
		.pinglun_name{float:left; color: #333;font-size: 0.24rem;width: 4.8rem;}
		.pinglun_xing{float:left; width: 4.8rem; margin-top: 0.1rem;}
		.pinglun_xing li{float:left;  margin-right: 0.05rem; width:0.2rem; height: 0.2rem; background: url(images/star2.png) no-repeat; background-size: 100% 100%;}
		.pinglun_txt{float:left; width:100%; font-size: 0.24rem; margin-top: 0.2rem;}
	</style>
</head>
<body style="padding-bottom:1.2rem;">
	<div>
    	<a href="javascript:history.go(-1)" class="qb-tleft f-l">
    		<img src="images/back.png" alt="" style="width:20px;height: 20px;"/>
    	</a>
        <div style="clear:both;"></div>
    </div>
	<div class="clear"></div>
	<div class="sp_top">
		<div class="sp_top_bt">
		    <i class="iconfont icon-zuo" onclick="window.location.href='getWorkerInfoById.html?id=${workerId}'"></i>
	        <span class="current" style="width: 50%;"><a href="JavaScript:;">评价</a></span>
	        <span class="current" style="width: 50%"><a href="JavaScript:;"></a></span>
		</div>
		<div class="sp_top_tab">
		    <div class="sp_top_btn active" onclick="chickEvals('0')">全部<br/><span>${allEval }</span></div>
			<div class="sp_top_btn" onclick="chickEvals('4')">好评<br/><span>${goodEval }</span></div>
			<div class="sp_top_btn" onclick="chickEvals('3')">中评<br/><span>${neutralEval }</span></div>
			<div class="sp_top_btn" onclick="chickEvals('2')">差评<br/><span>${badEval}</span></div>
		</div>
	</div>
	<div class="pinglun">
		<c:forEach items="${showEvaluate}" var="list" varStatus="s">
			<div class="pinglun_nr">
				<img src="${list.headImgStr }" alt="">
				<div class="pinglun_na">
					<div class="pinglun_sj">${list.addTime }</div>
					<ul class="pinglun_xing">
					<c:forEach begin="1" end="${list.score}" >
					    <li></li>
					</c:forEach>
					</ul>
					<div class="pinglun_txt">${list.content }</div>
				</div>
			</div>
		</c:forEach>
		<button class="my-btn1 f-r" onclick="window.location.href='publishWorkerEval.html?id=${workerId}'">发表评价</button>
	</div>
	<jsp:include page="footer4.jsp"></jsp:include>
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		var workerId = ${workerId};
		$(function(){
			$(".sp_top_btn").click(function(){
				$(this).siblings().removeClass("active");
				$(this).addClass("active");
			});
		});
		
		function chickEvals(score) {
			var url = "showWorkerEvaluate.html";
			$.ajax({
				type : "POST",
				url : url,
				data : {"workerId":workerId,"score":score},
				
				error : function(req, textStatus, errThrow){
					alert("系统错误");
				},
				success : function(msg) {
					var html = "";
					var dataObj = eval("(" + msg + ")");// 转换为json对象
					$.each(dataObj,function (idx,obj) {
						html+="<div class='pinglun_nr'>"
						+"<img src="+obj.headImgStr+" alt='''>"
						+"<div class='pinglun_na'>"
						+"<div class='pinglun_sj'>"+obj.addTime+"</div>"
						+"<ul class='pinglun_xing'>";
						for(var i =0; i<obj.score;i++) {
							html+="<li></li>";
						}
						html+="</ul>";	
						html+="<div class='pinglun_txt'>"+obj.content +"</div></div></div>";
					})
					$(".pinglun").html(html);
				}
			});
		}
	
	</script>
</body>
</html>