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
	<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title></title>
    <link rel="stylesheet" href="https://cache.amap.com/lbs/static/main1119.css"/>
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="https://webapi.amap.com/maps?v=1.4.8&key='9e1d9c358dabbf185022c2c8cddaba94'"></script>
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>

<body style="padding-bottom:1.2rem;">
	<div class="search"></div>
	<div class="map" style="width: 100%;height: 200px;"  id="container"></div>
	<div class="small_title">-家居商圈-</div>
	<ul class="sq_list">
		<c:forEach items="${list}" var="list">
			<li>
				<a href="getSellerListBySellerAreaId.html?sellerAreaId=${list.id }&firstLink=${list.firstLink}&
				secondLink=${list.secondLink}">
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
	<jsp:include page="footer4.jsp"></jsp:include>
	
	<script>
	    var map = new AMap.Map('container', {
	        resizeEnable: true,
	        zoom:11,
	        center: ["${list[0].longitude}", "${list[0].latitude}"]
	    });
	</script>

	</body>
</html>
