<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<title>卡券列表</title>
 <link rel="stylesheet" type="text/css" href="css/showTip.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/swiper.css">
            <link rel="stylesheet" type="text/css" href="css/style.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
            <link rel="stylesheet" type="text/css" href="css/ajk.css">
            <script type="text/javascript" src="js/jquery.js"></script>
            <script type="text/javascript" src="js/TouchSlide.1.1.js"></script>
            <script type="text/javascript" src="js/showTip.js"></script>
            <script type="text/javascript" src="js/woxiangyao.js"></script>
            <script type="text/javascript" src="js/swiper.js"></script>
            <script type="text/javascript" src="js/foot.js"></script>
</head>
<body>
<div class="body">
	<div class="sjsc-title2">
        <a href="index.html" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    </div>
	<c:forEach items="${cards}" var="card">
		<div style="position:relative;margin-top:3%;width:100%;text-align:center">
			<a href="ajkDetail.html?id=${card.cardId}">
				<c:if test="${card.type=='1'}">
				<img src="./images/ajk01.png" style="width:80%;height:170px;margin:auto;"/>
				</c:if>
				<c:if test="${card.type=='2'}">
				<img src="./images/ajk03.png" style="width:80%;height:170px;margin:auto;"/>
				</c:if>
			</a>
			<c:if test="${card.type=='3'}">
			<img src="./images/ajk08.png" style="width:80%;height:170px;margin:auto;"/></a>
			</c:if>
		</div>
	</c:forEach>
	<div style="width:100%; height:200px;position: relative;margin-top:3%;">
		<%--<c:forEach items="${cards}" var="v">
			<a href="ajkDetail.html?id=${v.cardId}">
				<div class="left" style="margin-bottom:3%;">
					<p><span class="title">${v.cardName}</span><img src="./images/ajk04.png"/></p>
					<p style="clear:both;padding:5px">享受<span class="spt">一年免费</span></p>
					<p style="clear:both;padding:5px">保洁每周一次</p>
				</div>
			</a>
		</c:forEach>--%>
		<a href="layerCard/toLayerCardPage.html">
			<p class="bdbtn">
				线下卡片绑定
			</p>
		</a>
	</div>

</div>
<jsp:include page="footer5.jsp"></jsp:include>

</body>
</html>