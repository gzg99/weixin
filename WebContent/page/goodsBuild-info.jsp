<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title>商品详情</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/woxiangyao.js"></script>
<script type="text/javascript" src="js/TouchSlide.1.1.js"></script>
<script type="text/javascript" src="js/foot.js"></script>

<link rel="stylesheet" type="text/css" href="css/showTip.css">
<script type="text/javascript" src="js/showTip.js"></script>
</head>

<body id="wrap">	
    <div class="sjsc-title1">
    	<h3 class="sjsc-t1l f-l"><a href="JavaScript:history.go(-1)"><span class="le"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></span></a></h3>
        <div style="clear:both;"></div>
    </div>
    <div>
    	<ul class="spxq-ul2">
        	<li class="current" style="width: 50%; background: blue;"><a href="JavaScript:;" onclick="show('detailDiv')">图文详情</a></li>
        	<li class="current" style="width: 50%"><a href="JavaScript:;" onclick="show('evalDiv')">评价</a></li>
            <div style="clear:both;"></div>
        </ul>
    </div>
    <div class="detailDiv">
	    <input type="hidden" value="${goods.id}" id="id">
	    <input type="hidden" value="${goods.goodsName}" id="goodsName">
	    <input type="hidden" value="${goods.goodsImg}" id="goodsImg">
	    <input type="hidden" value="${goods.goodsSpe}" id="goodsSpe">
	    <input type="hidden" value="${goods.goodsPrice}" id="goodsPrice">
	   	<input type="hidden" value="${goods.goodsBrand}" id="goodsBrand">
	    <input type="hidden" value="${goods.goodsMaterial}" id="goodsMaterial">
	    <input type="hidden" value="${goods.goodsColor}" id="goodsColor">
	    <div class="banner1">
	        <ul class="sy-ul">
	            <li><a href="#"><img src="${goods.goodsImg}"></a></li>
	        </ul>
	        <ol class="sy-ol">
	        </ol>
	    </div>
	    <div class="spxq-info1">
	    	<ul class="spxq-ul1">
	    	<button class="my-btn1 f-r" onclick="window.location.href='evaluate/toEvaluatePage.html?id=${goods.id}'">发表评价</button>
	        	<li>
	            	<h3><a href="#">${goods.goodsName}</a></h3>
	                <div>
	                	<p class="spxq-p1" style="font-size: 12px;line-height:35px;"><span>${goods.goodsSpe}</span></p>
	                	<p class="spxq-p1" ><font style="font-size: 9px;color: #f60">￥</font><span style="color: #f60">${goods.goodsPrice}</span></p>   	
	                	<div style="clear:both;"></div>
	                </div>
	                <div>
	                	<p class="spxq-p1" style="font-size: 12px;line-height:35px;"><span>${goods.goodsBrand}</span></p>
	                	<p class="spxq-p1" style="font-size: 12px;line-height:35px;"><span>${goods.goodsMaterial}</span></p>
	                	<p class="spxq-p1" style="font-size: 12px;line-height:35px;"><span>${goods.goodsColor}</span></p>
	                	<div style="clear:both;"></div>
	                </div>
	            </li>
	        </ul>
	    </div>
	    <div class="spxq-info2">
	        <div class="spxq-box">
	        	<div class="spxq-k spxq-k1">
	            	${goods.goodsDetail}
	            </div>
	        </div>
	    </div>
    </div>
    <div class="evalDiv" style="display:none;">
    	<ul class="spxq-ul2">
        	<li class="current" style="width: 25%;"><a href="JavaScript:;">全部评价(${eval.showEvaluate.sumEvaluate})</a></li>
        	<li class="current" style="width: 25%;"><a href="JavaScript:;">好评(${goodEvalCount})</a></li>
        	<li class="current" style="width: 25%;"><a href="JavaScript:;">中评(${neutralEvalCount})</a></li>
        	<li class="current" style="width: 25%;"><a href="JavaScript:;">差评(${badEvalCount})</a></li>
            <div style="clear:both;">
                <c:forEach items="${eval.showEvaluateBylist }" var="eval" varStatus="s">
                    <div>${eval.evaluateContent }</div>
                </c:forEach>
            </div>
        </ul>
    </div>
    <div class="spxq-info3">
    	<a href="" class="if3-aa f-l"><img src="images/notCol.png"></a>
    	<a href="cartList.html" class="if3-aa f-l"><img src="images/orderCar.png" /><span style="position:fixed;color: #f29133" id="cart_num">${cart_num }</span></a>
    	<button class="if3-btnn1 if3-btn1 f-l" onclick="window.location.href='goodsOrderSure.html?id=${id}&goods_num=1'">立即购买</button>
    	<button class="if3-btnn1 if3-btn2 f-l" onclick="add()">加入购物车</button>
    </div>
	<script type="text/javascript">
		function add(){
			var id = $('#id').val();
			var goodsName = $('#goodsName').val();
			var goodsImg = $('#goodsImg').val();
			var goodsSpe = $('#goodsSpe').val();
			var goodsPrice = $('#goodsPrice').val();
			
			$.ajax({
				url:'cartBuildInsert.html',
				type:'post',
				data:'goods_id='+id+'&goods_name='+goodsName+'&goods_img='+goodsImg+'&goods_price='+goodsPrice+'&goods_num=1'+'&goods_spe='+goodsSpe,
				success:function(rs){
					var data = eval('('+rs+')');
					if(data.rs_code==1){
					$('#cart_num').text(data.cart_num);
						showTip("已加入购物车！");
	//					location.reload();
					}else if(data.rs_code==1005){
						showTip("登录已失效，重新登录中，请稍后...");
						setTimeout('window.location.href=history.go(-1)',2000);
					}else{
						showTip("加入购物车失败！");
					}
				}
			});
		}
		
		function buy(){
			var goods_id = $('#id').val();
	
			$.ajax({
				url:'goodsOrder.html',
				type:'post',
				data:'goods_id='+goods_id,
				success:function(rs){
					if(rs==1){
						showTip("已加入购物车！");
						//location.reload();
					}else{
						showTip("加入购物车失败！");
					}
				}
			})
		}
		
		function show(cls) {
			if(cls == "detailDiv") {
				$(".detailDiv").show();
				$(".evalDiv").hide();
			} else {
				$(".detailDiv").hide();
				$(".evalDiv").show();
			}
			
		}
	</script>
	
</body>
</html>
