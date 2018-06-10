<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title>订单</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>

<link rel="stylesheet" type="text/css" href="css/showTip.css">
<script type="text/javascript" src="js/showTip.js"></script>
<script type="text/javascript" src="js/area.js"></script>
<script type="text/javascript" src="js/order.js"></script>
<script type="text/javascript">
	$(function(){
		showStr("province","city","area");
	});
</script>

</head>

<body id="wrap">
	
    <div class="sjsc-title2">
    	<h3 class="sjsc-t2l">订单</h3>
        <a href="cartList.html" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    </div>
     <input type="hidden" value="${addr_id}" id='addr_id'>
       
    <dl class="drdd-info6" onclick="window.location.href='addrList.html?cps_id=${cps_id}&addr_id=${addr_id}'">
	    <c:forEach items="${addr}" var="addr" begin="0" end="0">
	    	<input type="hidden" value="${addr.addr_user }" id='addr_user'>
	    	<input type="hidden" value="${addr.addr_tel}" id='addr_tel'>
	    	<input type="hidden" value="${addr.addr_name}" id='addr_name'>
	    	<dt>
	        	<p>
	            	<span class="f-l">收货人：${addr.addr_user }</span>
	            	<span class="f-r">联系电话：${addr.addr_tel }</span>
	                <div style="clear:both;"></div>
	            </p>
	    		<p>收货地址：
	    			<span id="province" lang="${addr.province }"></span>
	        		<span id="city" lang="${addr.city }"></span>
	        		<span id="area" lang="${addr.area }"></span>${addr.addr_name }
	        	</p>
	        </dt>
	    </c:forEach> 
	    
	    <c:if test="${empty addr}">
			<dt style="padding-top:15px;margin-left:10px">   	
		    	<span class="f-l" >点击添加收货地址</span>       
		    </dt>
		</c:if>
		
	    <dd><a>></a></dd>
	    <div style="clear:both;"></div>
    </dl>
    
    
    <input type="hidden" value="${tnum}" id='tnum'>
    <input type="hidden" value="${tprice}" id='tprice'>
    <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
  	 	商品信息
    </div>
    <c:forEach items="${goods}" var="list" varStatus="s">
	    <input type="hidden" value="${list.goods_id}" name='goods_id'>
	    <input type="hidden" value="${list.goods_name}" name='goods_name'>
	    <input type="hidden" value="${list.goods_img}" name='goods_img'>
	    <input type="hidden" value="${list.goods_num}" name='goods_num'>
	    <input type="hidden" value="${list.goods_price}" name='goods_price'>
	    
	   
	    <div class="drdd-info3">
	    	<div class="drdd-if3tu f-l">
	        	<a href="#"><img src="${list.goods_img}" style="width: 43px"></a>
	        </div>
	        <h3 class="drdd-h31 f-l"><a href="#">${list.goods_name} x${list.goods_num}</a></h3>
	        <p class="drdd-p1 f-r">￥${list.goods_price}</p>
	        <div style="clear:both;"></div>
	    </div>
    </c:forEach>
   
    <c:if test="${tprice!=0}">
	    <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
	  		优惠券
	    </div>
	    <div class="drdd-info4" onclick="window.location.href='cartCoupons.html?addr_id=${addr_id}'" >
	    	<p>优惠券</p>
	        <a>
		        <c:forEach items="${cps}" var="cps">
			        <input type="hidden" value="${cps.cps_id}" id='cps_id'>
			        <input type="hidden" value="${cps.cps_name}" id='cps_name' >
			        <input type="hidden" value="${cps.cps_price}" id='cps_price'>
			        ${cps.cps_name} ￥${cps.cps_price}
		        </c:forEach>
		        <c:if test="${empty cps}">
		        	${cpsCount}张可使用优惠券
		        </c:if>
		        <span> ></span>
	         </a>
	        <div style="clear:both;"></div>
	    </div>
    </c:if>
    
    <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
  		配送方式
    </div>
    <div class="drdd-info4">
    	<p>配送方式</p>
    	<a href="#">
	    	<select id="fgt_price" onchange="fgt()" style="border: 0">
		    	<option value="-2">请选择</option>
		    	<option value="-1">快递：
			    	<c:if test="${fgt_price==0}">免运费</c:if>
			    	<c:if test="${fgt_price!=0}">${fgt_price}元</c:if>
		    	</option>
		    	<option value="${fgt_price}" style="">免费自提点</option>
	    	</select>
	        <span>></span>
        </a>
        <div style="clear:both;"></div>
    </div>
    
    <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E;display:none;" id="zitidian-str">
  		选择自提点
    </div>
    <div class="drdd-info2" style="display:none" id="zitidian-choose" >
	    <select id="area_area"  style="border: 0;width: 20%" onchange="choose_area()">
		    <option value="-2">请选择区</option>
		    	<c:forEach items="${areaList}" var="areaList">
		    	<option value="${areaList.area_id }">${areaList.area_name }</option>
		    </c:forEach>
	    </select>
	    <select id="area_addr"  style="border: 0;width:75%">
	    	<option value="-2">请选择自提点</option>
	    </select>
    </div>
    
    <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
  		备注
    </div>
    <div class="drdd-info4">
    	<p>备注：</p>
        <input type="text" placeholder="选填，填写您对卖家的要求" id='note' style="width:80%;border:0px">
        <div style="clear:both;"></div>
    </div>
    
    <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
  		订单价格
    </div>
    <div class="drdd-info2">
    	<p class="p1 f-l">商品总价</p>
    	<p class="p2 f-r"><span id="">￥${price}</span></p>
    	<br>
       
        <p class="p1 f-l">物流费用</p>
    	<p class="p2 f-r"><span id="wuliu">￥${fgt_price}</span></p>
        <br>
        
        <div style="border-bottom:1px solid #DED9D9;">
	        <c:forEach items="${cps}" var="cps">
		        <p class="p1 f-l">优惠券抵扣</p>
		    	<p class="p2 f-r" ><span id="">￥${cps.cps_price}</span></p>
	        	<br>
	        </c:forEach>
        </div>
        <p class="p1 f-l">共<span id="tnumStr">${tnum }</span>件商品</p>
    	<p class="p2 f-r">总计：<span id="tpriceStr" style="color: #f60">￥${tprice}</span></p>
        <div style="clear:both;"></div>
    </div>
    <button class="drdd-btn" onclick="add()">确认付款</button>
    
    <script type="text/javascript">
	    function fgt(){
	    	var wuliu ='${fgt_price}';
	    	var tprice= '${tprice}';
	    	var fgt_price= $('#fgt_price').val();
	    	if(fgt_price!=-2&&fgt_price!=-1){ //选择自提点
	    		$('#zitidian-str').show();
	    		$('#zitidian-choose').show();
	    		wuliu=0;
	    	}
	    	else{
	    		$('#zitidian-str').hide();
	    		$('#zitidian-choose').hide();
	    		fgt_price=0;
	    	}
	    
	    	$('#wuliu').text('￥'+wuliu);
	    //	tprice = tprice - fgt_price;
	    	tprice = (parseFloat(tprice)-parseFloat(fgt_price)).toFixed(1);
	   		$('#tpriceStr').text('￥'+tprice);
	   		$('#tprice').val(tprice);
	   		
	    }
    </script>
    <script type="text/javascript">
	    function choose_area(){
	    	var area =$('#area_area').val();
	    	
	    	$.ajax({
	    		url:'areaJson.html',
	    		type:'post',
	    		data:'level='+area,
	    		success :function(rs){
	    			$('#area_addr').html("");
	    			$('#area_addr').append('<option value="-2">请选择自提点</option>');
	    			var data = eval(rs);
	    			$.each(data,function(i,item){
	    				$('#area_addr').append('<option value='+data[i].area_name+'>'+data[i].area_name+'</option>');
	    			})
	    		}
	    	});
	    }
	    
	    
    </script>

</body>
</html>
