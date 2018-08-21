<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
	<title>商圈内容</title>
	<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
</head>

<body style="padding-bottom:1.2rem;">
<div class="shop_title">一层平面图</div>	
<div class="shop_img"><img src="${firstLink }" alt=""/></div>
	<div class="shop_title">二层平面图</div>	
<div class="shop_img"><img src="${secondLink }" alt=""/></div>
<div class="clear"></div>
<div class="small_title">-入住商家-</div>
<ul class="sq_list">
	<c:forEach items="${list }" var="seller">
		<li>
		 	<a href="getGoodsBuildListBySellerId.html?sellerId=${seller.id }">
	     		<img src="${seller.sellerImg }" alt="" />
			    <div class="sq_list_bt">
					<h1>${seller.sellerName }</h1>
					<p>${seller.address }<br/>${seller.sellerDetail }</p>
				</div>
			    <div class="sq_list_jl"></div>
		 	</a>
		</li>
	</c:forEach>
</ul>

<div class="clear"></div>
<jsp:include page="footer4.jsp"></jsp:include>
</body>
</html>
