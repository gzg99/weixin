<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
<title>装修</title>
<link href="images/jj20180626.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<style type="text/css">
	.zx_list{width:7.1rem; padding: 0.2rem;}
	.zx_list a{width: 100%; float: left; background: #F8F8F8; display: block; height:2.4rem; font-size: 0.5rem; font-weight: bold; margin-bottom: 0.2rem;}
	.zx_list a img{ height:1.8rem; width:2.4rem; float: left;margin: 0.3rem;}
	.zx_list a p{ margin-top: 0.2rem; padding-right: 0.3rem;}
</style>
</head>

<body style="padding-bottom:1.2rem;">
	<div class="zx_list">
		<a href="getAllDecorationByType.html?type=工匠">
     		<img src="images/zx_img01.jpg"/>
			<p>附近工匠 - 工长</p>
		</a>
	    <a href="getAllDecorationByType.html?type=工装">
     		<img src="images/zx_img02.jpg"/>
			<p>工装 - 工地建筑装修展示</p>
		</a>
		<a href="getAllDecorationByType.html?type=家装">
     		<img src="images/zx_img03.jpg"/>
			<p>家装 - 家庭装修</p>
		</a>
		<div class="clear"></div>
	</div>
	<jsp:include page="footer5.jsp"></jsp:include>
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>

</body>
</html>