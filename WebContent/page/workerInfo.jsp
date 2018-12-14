<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
		<title>好工匠</title>
		<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
		<link rel="stylesheet" type="text/css" href="css/inall/ajkmegbd.css">
		<style type="text/css">
			.hgj_top{width:6.7rem; padding: 0.2rem 0.4rem; float: left;}
			.hgj_top img{float: left;width:1rem; height: 1rem; border-radius: 50%; border: #fff solid 0.05rem; box-shadow:0 0 0.05rem rgba(0,0,0,.2);}
			.hgj_top_cont{width:5.2rem; float: left; padding-left: 0.3rem;}
			.hgj_name{font-size: 0.32rem; font-weight: bold; margin-top: 0.1rem;}
			.hgj_zy{font-size: 0.28rem; margin-top: 0.15rem;}
			.ml4{margin-left: 0.5rem;}
			.hgj_nr{width:6.7rem; padding:0 0.4rem; float: left;font-size: 0.24rem; line-height: 0.4rem;}
			.hgj_nr_bt{font-size: 0.28rem; font-weight: bold; margin-top: 0.2rem;}
		</style>
	</head>

	<body>
		<div>
	    	<a href="javascript:history.go(-1)" class="qb-tleft f-l">
	    		<img src="images/back.png" alt="" style="width:20px;height: 20px;"/>
	    	</a>
	        <div style="clear:both;"></div>
	    </div>
		<div class="a">liqing</div>
		<div class="hgj_top">
			<img src="${worker.workerImg }"/>
			<div class="hgj_top_cont">
			      <p class="hgj_name"><span>${worker.name }</span><span  class="ml4">${worker.sex }</span><span class="ml4">${worker.telPhone }</span></p>
				  <p class="hgj_zy"><span>工种：${worker.type }</span>
				  <span class="ml4">是否会员：
				  <c:if test="${worker.isVip==0 }">
				      	否
				  </c:if>
				  <c:if test="${worker.isVip==1 }">
				      	是
				  </c:if>
				  </span>
				  </p>
				<a href="toWorkerSignUp.html" ><p class="hgj_zy">工匠注册</p></a><br/>
				<a href="toWorkerSignIn.html" ><p class="hgj_zy">工匠登录</p></a><br/>
				<a href="workerReceiveOrder.html" ><p class="hgj_zy">工匠接单</p></a><br/>
			</div>
		</div>
		<div class="shop_index_pj" onclick="window.location.href='showWorkerEval.html?workerId=${worker.id}'">
			 <div class="shop_index_pj_bt">评价</div>
			 <a href="###" class="shop_index_pj_right"><i class="iconfont icon-you"></i></a>
		</div>
		<div class="spxq-info2">
	        <div class="spxq-box">
	        	<div class="spxq-k spxq-k1">
	            	${worker.workerIntro}
	            </div>
	        </div>
	    </div>
	
		<div class="clear"></div>
		<jsp:include page="footer4.jsp"></jsp:include>
		<script src="js/base.js"></script>
	</body>
</html>
