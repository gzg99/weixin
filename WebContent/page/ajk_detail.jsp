<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<h3 class="sjsc-t2l">详情页</h3>
			<a href="cardAll.html" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
		</div>
		<div class="body" >
			<img src="./images/ajk05.jpg"  style="width:100%"/>
			<img src="./images/ajk06.jpg"  style="width:100%"/>
<!-- 			<img src="./images/ajk07.jpg"  style="width:100%"/> -->
			
			<div style="text-align: center;">
				<a class="drdd-btn" href="ajkBd.html?id=${card.cardId }" >
				  卡片申请
				</a>
			</div>
			<jsp:include page="footer5.jsp"></jsp:include>
		</div>
	
	</body>
</html>