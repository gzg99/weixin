<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
		<title>装修</title>
		<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
		<style type="text/css">
			.zx_list{width:7.5rem; padding:0.2rem 0;}
			.zx_list a{width:7.1rem;  padding:0.3rem; border-bottom: #ddd solid 1px;float: left;  display: block; font-size: 0.28rem;}
			.zx_list a img{ height:1.2rem; width:1.8rem; float: left;margin-right: 0.2rem;}
			.zx_list .zx_list_bt{ font-size: 0.32rem; font-weight: bold; }
			.zx_list a p{}
		</style>
	</head>

	<body style="padding-bottom:1.2rem;">
		<div class="zx_list">
			<c:forEach items="${list}" var="decoration">
				<c:if test="${decoration.isFineQuality == '1'}">
					<a href="getDecorationById.html?id=${decoration.id }">
						<img src="${decoration.companyImg }"/>
						<p class="zx_list_bt">${decoration.companyName }</p>
						<p>${decoration.companyIntrl }</p>
						<p>${decoration.companyAddress }</p>
						<p>${decoration.addTime }（精装）</p>
					</a>
				</c:if>
				<c:if test="${decoration.isFineQuality == '0'}">
					<a href="getDecorationById.html?id=${decoration.id }">
						<img src="${decoration.companyImg }"/>
						<p class="zx_list_bt">${decoration.companyName }</p>
						<p>${decoration.companyIntrl }</p>
						<p>${decoration.companyAddress }</p>
					</a>
				</c:if>
			</c:forEach>

			<a href="toDecoration.html?type=${type }">商家加入</a>
			<div class="clear"></div>
		</div>

		<jsp:include page="footer5.jsp"></jsp:include>
		<script type="text/javascript" src="js/base.js"></script>
		<script type="text/javascript" src="js/jquery.js"></script>
	
	</body>
</html>
