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
<script type="text/javascript">
$(function(){
	showStr("province","city","area");
});
$(function(){
	init("province","city","area");
});
</script>

</head>

<body id="wrap">
	
    <div class="sjsc-title2">
        <a href="orderList.html" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
     </div>
     
    <dl class="drdd-info6">
		<ul class="xzdz-ul1">
	    	<li>
	        	<p class="xzdz-p1 f-l">收货人</p>
	            <input type="text" placeholder="姓名" class="xzdz-ipt1 f-l" id="addr_user"/>
	            <div style="clear:both;"></div>            
	        </li>
	    	<li>
	        	<p class="xzdz-p1 f-l">手机号</p>
	            <input type="text" placeholder="11位手机号" class="xzdz-ipt1 f-l" id="addr_tel" onblur="getCardByPhone()"/>
	            <div style="clear:both;"></div>            
	        </li>
	    	<li>
	        	<p class="xzdz-p1 f-l">详细地址</p>
	        	<p>
	        		<select id="province" name="province" lang="23" class="input-text" style="width: 20%"></select>
	    			<select id="city" name="city" lang="2" class="input-text" style="width: 20%"></select>
	    			<select id="area" name="area" lang="0" class="input-text" style="width: 20%"></select>
	    		</p>
	            <input type="text" placeholder="具体到街道门牌信息" class="xzdz-ipt1 f-l" id="addr_name" />
	            <div style="clear:both;"></div>            
	        </li>
	        <li>
	        	<p class="xzdz-p1 f-l">卡券</p>
	        	<p>
	        		<select id="card" name="card" lang="23" class="input-text" style="width: 20%"></select>
	    		</p>          
	        </li>
    	</ul>
    </dl>
     
     <input type="hidden" value="${addr_id}" id='addr_id'>
     <input type="hidden" value="${goods_num}" id='tnum'>
     <input type="hidden" value="${tprice}" id='tprice'>
     <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
  	   	商品信息
     </div>
     <c:forEach items="${goods}" var="list" varStatus="s">
	     <input type="hidden" value="${list.goods_id}" id="goods_id" name='goods_id'>
	     <input type="hidden" value="${list.goods_name}" id="goods_name" name='goods_name'>
	     <input type="hidden" value="${list.goods_img}" id="goods_img" name='goods_img'>
	     <input type="hidden" value="${list.goods_num}" id="goods_num" name='goods_num'>
	     <input type="hidden" value="${list.goods_price}" id="goods_price" name='goods_price'>
    
	     <div class="drdd-info3">
	    	<div class="drdd-if3tu f-l">
	        	<a href="#"><img src="${list.goods_img}" style="width: 43px"></a>
	        </div>
	        <h3 class="drdd-h31 f-l"><a href="#">${list.goods_name} x${goods_num}</a></h3>
	        <p class="drdd-p1 f-r">￥${list.goods_price}</p>
	        <div style="clear:both;"></div>
	     </div>
     </c:forEach>
   
    <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
  	  订单价格
    </div>
    <div class="drdd-info2">
    	<p class="p1 f-l">商品总价</p>
    	<p class="p2 f-r"><span id="">￥${price}</span></p>
        <br>
    	<p class="p2 f-r">总计：<span id="tpriceStr" style="color: #f60">￥${tprice}</span></p>
        <div style="clear:both;"></div>
    </div>
    <button class="drdd-btn" onclick="add()">确定</button>
    <script type="text/javascript">
    	function add() {
    		var obj = {};
    		obj.goodsName=$("#goods_name").val();
    		obj.goodsPrice=$("#goods_price").val();
    		obj.userAddr=$("#province").val()+$("#city").val()+$("#area").val()+$("#addr_name").val();
    		obj.userTel=$("#addr_tel").val();
    		obj.useCard=$("#card").val();
    		obj.userName=$("#addr_user").val();
    		if (obj.userAddr == null || obj.userAddr == "") {
	   	        return "请输入地址";
    		}
	   	    if (obj.userName == null || obj.userName == "") {
	   	        return "请输入姓名";
	   	    }
	   	    if (obj.userTel == null || obj.userTel == "") {
	   	        return "请输入手机号";
	   	    }	
    		
    		$.ajax({
    			url:"repairOrderInsert.html",
    			type:"POST",
    			data:obj,
    			success:function() {
    				alert("下单成功");
    				window.location.href='index.html';
    			},
    			error:function(){
    				alert("下单失败");
    			}
    		});
    	}
    
    	function getCardByPhone() {
    		var phone = $("#addr_tel").val();
    		$.ajax({
    			url: "getCardOrderByPhone.html",
    			type: "POST",
    			data:{"userPhone":phone},
    			success:function(result) {
    				if(result!=""){
    					var re = JSON.parse(result);
    					var option = "";
    					for(var i = 0; i< re.length; i++) {
    						option="<option value='"+ re[i].cardNum+"'>"+re[i].cardName+"</option>";
    					}
						$("#card").append(option);
					}else{
						alert("查询卡券失败！");
					}
    			},
    			error:function() {
    				
    			}
    		});
    	}
    
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
