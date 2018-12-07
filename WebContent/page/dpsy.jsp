<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
	<title>商圈内容</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="css/showTip.css">
	<link rel="stylesheet" type="text/css" href="css/jj20180626.css">
	<script type="text/javascript" src="js/showTip.js"></script>
	<script type="text/javascript" src="js/base.js"></script>
</head>

<body style="padding-bottom:1.2rem;">
	<div class="shop_index_img"><img src="images/shop_img03.jpg" alt=""/></div>
	<div class="clear"></div>
	<div class="shop_menu">
	    <div class="small_title">-${secondCategory }-</div>
	    <div class="shop_menu_btn"></div>
	    <div class="shop_menu_nr">
	    	<c:forEach items="${map}" var="entry">
			    <div class="shop_menu_se">${entry.key}:</div>
			    <table align="center" width="100%">
			    	<c:forEach items="${entry.value}" var="link">
				    	<ul class="shop_menu_op">
		       				<li onclick="window.location.href='getGoodsBuildListByCon.html?sellerId=${sellerId}&firstCategory=${entry.key }&secondCategory=${link }'">${link}</li>
		    			</ul>
				    </c:forEach>
			    </table>
			</c:forEach>
	    </div>
	</div>
	<ul class="sq_list sm_list">
		<c:forEach items="${list}" var="goods">
			<li>
				 <a href="goodsBuildListById.html?id=${goods.id }">
		     		<img src="${goods.goodsImg }" alt="" />
				    <div class="sq_list_bt">
						<h1>${goods.goodsName }</h1>
						<p>品牌：${goods.goodsBrand }</p>
						<p>材料：${goods.goodsMaterial }</p>
						<p>颜色：${goods.goodsColor }</p>
						<p>
							<span class="jg1 red">¥ ${goods.goodsPrice }</span>
							<c:if test="${not empty  goods.goodsOldPrice }">
								<span class="jg2">¥ ${goods.goodsOldPrice }</span>
							</c:if>
						</p>
					</div>
			 	</a>
			</li>
		</c:forEach>
	</ul>

<div class="clear"></div>
<jsp:include page="footer4.jsp"></jsp:include>

<script>
	$(function(){
		var shop_menu_nr=$(".shop_menu_nr");
		$(".shop_menu_btn").click(function(){
			if(shop_menu_nr.is(":hidden")){
				shop_menu_nr.show();
			}else{
				shop_menu_nr.hide();
			}
			
		});
	});
	
</script>
</body>
</html>
