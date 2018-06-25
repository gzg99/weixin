<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<title>安居卡详情</title>
		<link rel="stylesheet" type="text/css" href="css/showTip.css">
		<link rel="stylesheet" href="css/search.css">
		<link rel="stylesheet" type="text/css" href="css/swiper.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" href="css/search.css">
		<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
		<link rel="stylesheet" type="text/css" href="css/ajkxx.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/TouchSlide.1.1.js"></script>
		<script type="text/javascript" src="js/showTip.js"></script>
		<script type="text/javascript" src="js/woxiangyao.js"></script>
		<script type="text/javascript" src="js/swiper.js"></script>
		<script type="text/javascript" src="js/foot.js"></script>
	</head>
	<body>
		<div class="sjsc-title2">
			<h3 class="sjsc-t2l">${card.cardName }详情页</h3>
		</div>
		
		<div class="body" >
		<c:if test="${card.type==1}">
		<img src="./images/ajk01.png" alt="" style="width:100%;padding-top: 11px;"/>
		</c:if>
		<c:if test="${card.type==2}">
		<img src="./images/ajk03.png" alt="" style="width:100%;padding-top: 11px;"/>
		</c:if>
		<p style="font-size:20px;padding:10px;">${card.cardName }</p>
		<p style="color:red;font-size:20px;padding:10px;">¥${card.cardPrice }</p>
		<div style="background:#ccc;width:100%;height:10px">
		</div>
		<div style="padding:5px 10px;">
		<ul style="width:100%;text-align:left;display:flex">
		<li style="float:left;padding-left:20px;flex:1"><span style="color:red">.</span>售后服务免费</li>
		<li style="float:left;width:50%;flex:1"><span style="color:red">.</span>商城专享产品</li>
		</ul>
		<ul style="width:100%;clear:both;text-align:left;display:flex">
		<li style="float:left;flex:1;padding-left:20px"><span style="color:red">.</span>定期折扣</li>
		<li style="float:left;flex:1"><span style="color:red">.</span>免费安装维修</li>
		</ul>
		</div>
		<div style="background:#ccc;width:100%;height:10px">
		</div>
			<img src="./images/ajk05.jpg"  style="width:100%"/>
<!-- 			<img src="./images/ajk07.jpg"  style="width:100%"/> -->
			<div style="text-align: center;vertical-align: middle;">
				<a class="drdd-btn" style="line-height: 30px;" href="ajkBd.html?id=${card.cardId }&type=${card.type }" >
				  卡片申请
				</a>
			</div>
			<jsp:include page="footer5.jsp"></jsp:include>
		</div>
	
	</body>
</html>