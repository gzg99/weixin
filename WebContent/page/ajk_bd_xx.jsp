<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<title>安居卡线下绑定</title>
 <link rel="stylesheet" type="text/css" href="css/showTip.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/swiper.css">
            <link rel="stylesheet" type="text/css" href="css/style.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
            <link rel="stylesheet" type="text/css" href="css/ajkbdxx.css">
            <script type="text/javascript" src="js/jquery.js"></script>
            <script type="text/javascript" src="js/TouchSlide.1.1.js"></script>
            <script type="text/javascript" src="js/showTip.js"></script>
            <script type="text/javascript" src="js/woxiangyao.js"></script>
            <script type="text/javascript" src="js/swiper.js"></script>
            <script type="text/javascript" src="js/foot.js"></script>
</head>
<body>
<div  class="body" >

<div class="content">
<p><lable>卡券类型：</lable>
<select>
<option>卡券类型</option>
</select>
</p>
<h4 style="padding-top:30px;text-align:left;width:100%;float: left;">填写绑定信息</h4>
<P><lable>涂&nbsp;层&nbsp;卡&nbsp;号&nbsp;&nbsp;&nbsp;</lable><input type="text" id="cardNum"/></P>
<P><lable>持卡人手机号</lable><input type="text" id="userPhone" /></P>
<P><lable>绑&nbsp;定&nbsp;地&nbsp;址&nbsp;&nbsp;&nbsp;</lable><input type="text" id="userAddr"/></P>
<P style="float:right;color:#ccc;wdith:80%">(注：此地址唯一且不可更改)</P>

<p class="bdbtn" onclick="addCardOrder()" >
  线下卡片绑定
</p>

</div>
 <jsp:include page="footer5.jsp"></jsp:include>
</div>


</body>
<script type="text/javascript">
	function addCardOrder() {
		var cardOrder = {};
		cardOrder.cardNum=$("#cardNum").val();
		cardOrder.userPhone=$("#userPhone").val();
		cardOrder.userAddr=$("#userAddr").val();
		$.ajax({
			url:"",
			data:
		});
	}
</script>

</html>