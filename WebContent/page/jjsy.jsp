<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
	<title>家居首页</title>
	<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
</head>

<body style="padding-bottom:1.2rem;">
	<div class="search"></div>
	<div class="map"><img src="images/map.jpg" width="100%" height="100%"  alt=""/></div>
	<div class="small_title">-家居商圈-</div>
	<ul class="sq_list">
		<c:forEach items="${list}" var="list">
			<li>
				<a href="#">
					<img src="${list.sellerImg }" alt="" />
					<div class="sq_list_bt">
						<h1>${list.sellerArea }</h1>
						<p>${list.sellerDetail }</p>
					</div>
					<div class="sq_list_jl">1600km</div>
				</a>
			</li>
		</c:forEach>
	</ul>
	<div class="clear"></div>
	<div class="menu"><img src="images/menu.png" width="100%" height="100%" alt=""/></div>
	</body>
</html>
