<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ taglib prefix="fn"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title></title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/woxiangyao.js"></script>
</head>

<body>

    <div class="sjsc-title2">
    	<h3 class="sjsc-t2l">确认付款</h3>
        <a href="" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    </div>
    
    <div class="my-dd">
    	<div class="my-info">
			<dl class="my-dl1">
				<dt><a href="#"><img src="${card.cardImg}" style="width:70px"></a></dt>
				<dd>
					<h3><a href="#">${card.cardName}</a></h3>
				<p class="my-dp1">价格：<span>￥${card.cardPrice}</span></p>
				<div class="my-jdt">
					<p class="jdt-p1 f-l">数量：</p>
				   
				    <p class="jdt-shuzi f-l">1</p>
				<div style="clear:both;"></div>
				    </div>
				</dd>
				<div style="clear:both;"></div>
			</dl>
			    <div class="drdd-info2">
			    	<p class="p1 f-l">地址：<span >${cardOrder.userAddr}</span></p>
			        <div style="clear:both;"></div>
			    </div>
                <div class="my-p2">
                	<span class="my-sp3 f-l">共1件商品</span>
                   <p class="my-sp3 f-r">总计：￥${card.cardPrice}</p>
                    <div style="clear:both;"></div>
                </div>
            </div>  
	        <button class="drdd-btn" onclick="callpay()">微信支付</button>
    </div>
   <script type="text/javascript">
  		function callpay(){
		 	WeixinJSBridge.invoke('getBrandWCPayRequest',{
			 		"appId" : "<%=request.getAttribute("appId")%>",
			 		"timeStamp" : "<%=request.getAttribute("timeStamp")%>", 
			 		"nonceStr" : "<%=request.getAttribute("nonceStr")%>", 
			 		"package" : "<%=request.getAttribute("package")%>",
			 		"signType" : "MD5", 
			 		"paySign" : "<%=request.getAttribute("paySign")%>" 
   				},function(res){
					WeixinJSBridge.log(res.err_msg);
	            	if(res.err_msg == "get_brand_wcpay_request:ok"){
	               		alert("微信支付成功!");  
	                	window.location.href='cardOrderList.html';
	            	}else if(res.err_msg == "get_brand_wcpay_request:cancel"){  
	                	alert("用户取消支付!");  
	            	}else{
	               		alert("支付失败!");  
	            	}  
				}
   			);
		}
  </script>
</body>
</html>
