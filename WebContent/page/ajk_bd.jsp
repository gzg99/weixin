<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<title>安居卡绑定</title>
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
<body>
<div  class="body">

<div class="head">
  <div class="left">
  <img src="./images/ajk01.png"  style="height:100px;float:right;    width: 100px;"/>
  </div>
  
  <div class="right">
  <p>365安居卡，享受家滴帮优质家政服务 终生免费享受定期保洁服务，家滴帮自营产品免运费</p>
  </div>
</div>
<div class="c">

</div>

<div class="content">
<h4>填写绑定信息</h4>
<P>安居卡类型
<select id="card_name">

</select>
</P>
<P><lable>涂层卡号<input type="text" id="cardNum" /></lable></P>
<P><lable>持卡人手机<input type="text" id="userPhone" /></lable></P>
<P><lable>绑定地址&nbsp;&nbsp;&nbsp;<input type="text" id="userAddr" /></lable></P>

<a class="bdbtn"  >
  绑定并支付
</a>
 <jsp:include page="footer5.jsp"></jsp:include>
</div>

</div>


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
			$("#card_name").html(html);
		}
		
	})
})

$(".bdbtn").click(function(){
	var  userPhone=$("#userPhone").val();
	var userAddr=$("#userAddr").val();
	if(userPhone=="")
		{
		 alert("手机不许为空");
		}
	var card_name=$("#card_name").val();
	if(userAddr=="")
	{
	 alert("地址不许为空");
	}
	var  cardNum=$("#cardNum").val();
	$.ajax({
		url:'cardOrderInsert.html',
		type:'post',
		data:'userPhone='+userPhone+'&userAddr='+userAddr+"&cardName="+card_name+"&cardNum="+cardNum,
		success:function(rs){
			window.history.go(-1)
		}
	});
	
})


</script>
</html>