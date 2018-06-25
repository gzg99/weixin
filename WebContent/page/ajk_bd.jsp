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
        <a href="cardAll.html" class="sjsc-t2r">
        <img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    	<div class="head">
			<div class="left">
				<img src="./images/ajk01.png" style="height:100px;float:right; width: 100px;"/>
			</div>
		 
			<div class="right">
				<p>365安居卡，享受家滴帮优质家政服务 终生免费享受定期保洁服务，家滴帮自营产品免运费</p>
			</div>
		</div>
    </div>
    
    <div style="font-size: 12px;padding-left:10px; margin-top:157px;color: #A09E9E;" id="zitidian-str">
  		安居卡类型
    </div>
    <div class="drdd-info2" id="zitidian-choose">
	    <select id="cardName">
	    
	    </select>
    </div>
    <!-- <input type="text" id="cardName" value="${card.cardName }"> -->
    
    
    <div style="font-size: 12px;padding-left:10px; margin-top:13px;color: #A09E9E">
  	 	涂层卡号
    </div>
    <div class="drdd-info4">
    	<p>涂层卡号：</p>
        <input type="text" id="cardNum" style="width:80%;border:0px">
        <div style="clear:both;"></div>
    </div>
    
    <div style="font-size: 12px;padding-left:10px; margin-top:13px;color: #A09E9E">
  	 	持卡人手机
    </div>
    <div class="drdd-info4">
    	<p>持卡人手机：</p>
        <input type="text" id="userPhone" style="width:75%;border:0px">
        <div style="clear:both;"></div>
    </div>
    
    <div style="font-size: 12px;padding-left:10px; margin-top:13px;color: #A09E9E">
  		绑定地址
    </div>
    <div class="drdd-info4">
	    <p>绑定地址：</p>
        <input type="text" id='userAddr' placeholder="地址具体到门牌号，卡片与地址一对一绑定" style="width:80%;border:0px">
        <div style="clear:both;"></div>
    </div>
    
    <div style="font-size: 12px;padding-left:10px; margin-top:13px;color: #A09E9E">
  		备注
    </div>
    <div class="drdd-info4">
    	<p>备注：</p>
        <input type="text" placeholder="选填，填写您对卖家的要求" id='comment' style="width:80%;border:0px">
        <div style="clear:both;"></div>
    </div>
    
    <div style="font-size: 12px;padding-left:10px; margin-top:13px;color: #A09E9E">
  		卡券价格
    </div>
    <div class="drdd-info2">
    	<p class="p1 f-l">卡券价格</p>
    	<p class="p2 f-r"><span id="">￥${card.cardPrice }</span></p>
    	<br>
        <div style="clear:both;"></div>
    </div>
    <input type="hidden" id="cardPrice" value="${card.cardPrice }">
    <button class="drdd-btn" onclick="add()">绑定至本卡</button>
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
	var cardNum=$("#cardNum").val();
	var comment=$("#comment").val();
	if(userPhone==""){
		alert("手机不许为空");
		return;
	}
	if(userAddr==""){
		alert("地址不许为空");
		return;
	}
	if(cardNum==""){
		alert("卡号不许为空");
		return;
	}
	$.ajax({
		url:'updatebyphone.html',
		type:'post',
		data:'userPhone='+userPhone+'&userAddr='+userAddr+"&cardName="+cardName+"&cardNum="+cardNum+"&cardPrice="+
			cardPrice+"&comment="+comment,
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