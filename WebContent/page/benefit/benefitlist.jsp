<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
		<title>爱心公益</title>
		<link href="css/gy20180729.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/base.js"></script>
	</head>

	<body style="padding-bottom:1.2rem;">
		<div class="sjsc-title1">
			<h3 class="sjsc-t1l f-l"><a href="JavaScript:history.go(-1)"><span class="le"><img src="images/back.png" 
			alt="" style="width:30px;height: 30px;padding-top: 11px;padding-bottom:6px;padding-left: 5px"/></span></a></h3>
		   	<div style="clear:both;"></div>
		</div>
		<div class="gy_top"><a href="firstList.html"><img src="${mapList.jdbBenefit.picture }"/></a></div>
		
		<div class="gy_title ico1">家滴帮 · 爱老计划</div>	
		<div class="gy_nr"><a href="toUpdateLoveoldplan.html"><img src="${mapList.jdvLoveoldplan.oldpicture }"></a></div>	
		
		<div class="gy_title ico2">公益组织 · 爱心接力</div>	
		<c:forEach items="${mapList.jdbLove}" var="list" varStatus="s">
			<div class="gy_nr"><a href="toloveList.html?id=${list.id}"><img src="${list.picture}"></a></div>	
		</c:forEach>
		
		<div class="gy_title ico3">加入我们</div>	
		<div class="gy_nr gy_jrwm">
		<div class="gy_nr"><a href="torelationList.html"><img src="${mapList.jdbRelation.picture }"></a></div>	
		</div>
		<div class="clear"></div>
	</body>
</html>
