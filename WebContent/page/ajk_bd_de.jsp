<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<title>卡券申请</title>
 <link rel="stylesheet" type="text/css" href="css/showTip.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/swiper.css">
            <link rel="stylesheet" type="text/css" href="css/style.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
            <link rel="stylesheet" type="text/css" href="css/ajkbd.css">
            <script type="text/javascript" src="js/jquery.js"></script>
            <script type="text/javascript" src="js/TouchSlide.1.1.js"></script>
            <script type="text/javascript" src="js/showTip.js"></script>
            <script type="text/javascript" src="js/woxiangyao.js"></script>
            <script type="text/javascript" src="js/swiper.js"></script>
            <script type="text/javascript" src="js/foot.js"></script>
</head>
<style>
select{
width:100%;
height:30px;
}
</style>
<body id="wrap">
	
       <div class="sjsc-title2">
    	<h3 class="sjsc-t2l">卡券申请</h3>
        <a href="ajkDetail.html?id=${card.cardId}" class="sjsc-t2r">
        <img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    	</div>
    	<div class="head">
			<div class="left">
				<img src="./images/ajk01.png"  style="height:100px;float:right; width: 100px;"/>
			</div>
		 
			<div class="right">
				<p>365安居卡，享受家滴帮优质家政服务 终生免费享受定期保洁服务，家滴帮自营产品免运费</p>
				<input type="hidden" id="cardPrice" value="${card.cardPrice }">
			</div>
		</div>
     <input type="hidden" id="cardName"  value="${card.cardName}"/>
    <h4>请填写绑定信息</h4>
    <div style="width:100%">
    	<p>持卡人手机：</p>
        <input type="text" id="userPhone" style="width:75%;border-bottom:1px orange solid">
    </div>
  <div style="width:100%">
    	<p>绑定地址：</p>
        <input type="text" id="userAddr" style="width:75%;border-bottom:1px orange solid">
    </div>
    
    
    <button class="drdd-btn" onclick="add()">绑定并支付</button>
	<jsp:include page="footer5.jsp"></jsp:include>

</body>
<script>
$(function(){
	$.ajax({
		url:'cardAllList.html',
		type:'post',
		data:{},
		success:function(rs){
			var data = eval(rs);
			var html="";
			$.each(data,function(i,v){
				html+="<option value="+v.cardName+">"+v.cardName+"</option>";
			})
			$("#cardName").html(html);
		}
		
	})
})

function add() {
	var userPhone=$("#userPhone").val();
	var userAddr=$("#userAddr").val();
	var cardName=$("#cardName").val();
	var cardPrice=$("#cardPrice").val();
	if(userPhone==""){
		alert("手机不许为空");
		return;
	}
	if(userAddr==""){
		alert("地址不许为空");
		return;
	}
	$.ajax({
		url:'cardOrderInsert.html',
		type:'post',
		data:'userPhone='+userPhone+'&userAddr='+userAddr+"&cardName="+cardName+"&cardPrice="+
			cardPrice,
		success:function(rs){
			var re = /^[0-9]+.?[0-9]*$/;
			if(re.test(rs)&&rs!=0){
				window.location.href='payCardOrder.html?id='+rs;
			}else{
				alert("失败！");
			}
		}
	});
	
}


</script>
</html>