<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
		<title>爱心公益</title>
		<link rel="stylesheet" type="text/css" href="css/gy20180729.css">
		<link rel="stylesheet" type="text/css" href="css/inall/ajkmegbd.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/base.js"></script>
        <script type="text/javascript" src="js/jquery1.42.min.js"></script>
	</head>

	<body style="padding-bottom:1.2rem;">
		<div class="sjsc-title1">
			<h3 class="sjsc-t1l f-l"><a href="JavaScript:history.go(-1)"><span class="le"><img src="images/back.png"
			alt="" style="width:30px;height: 30px;padding-top: 11px;padding-bottom:6px;padding-left: 5px"/></span></a></h3>
		   	<div style="clear:both;"></div>
		</div>
		<%--<div class="gy_top"><a href="firstList.html"><img src="${mapList.jdbBenefit.picture }"/></a></div>--%>
		<div class="gy_top">
			<img src="./images/gy_banner.jpg" style="width:100%;height:170px;margin:auto;"/>
		</div>

		<div class="gy_title ico1 li_down">家滴爱老计划</div>
		<%--<div class="gy_nr"><a href="toUpdateLoveoldplan.html"><img src="${mapList.jdvLoveoldplan.oldpicture }" style="width:100%;height:170px;margin:auto;"></a></div>--%>
		<div class="gy_nr">
			<a href="ajkDetail.html?id=2">
				<img src="${mapList.jdvLoveoldplan.oldpicture }" style="width:100%;height:170px;margin:auto;">
			</a>
		</div>

		<div class="gy_title ico2 ">家滴爱心接力</div>

		<c:forEach items="${mapList.jdbLove}" var="list" varStatus="s">

			   <div class="gy_nr li_gynr">
				   <a href="toloveList.html?id=${list.id}" class="li_itmes">
					   <img src="${list.picture}"  style="margin:auto;">
				   </a>
				   <a href="toloveList.html?id=${list.id}" class="img-txt li_itme li_txts li_fontsize">${list.organizationName}</a>
			   </div>
			<c:if test="${s.count > 2}">
				<a href="toloveList.html?id=${list.id}" class="img-txt"><P class="li_fontsize">>>>更多</P></a>
			</c:if>
		</c:forEach>

		<div class="gy_title ico3">加入我们</div>
		<div class="gy_nr gy_jrwm">
			<div class="gy_nr">
				<a href="###"><img src="${mapList.jdbRelation.picture }"></a>
			</div>
		</div>
		<div class="clear"></div>
	</body>
</html>
