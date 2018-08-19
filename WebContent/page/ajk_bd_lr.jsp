<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<title>卡片申请</title>
 <link rel="stylesheet" type="text/css" href="css/showTip.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/swiper.css">
            <link rel="stylesheet" type="text/css" href="css/style.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
            <link rel="stylesheet" type="text/css" href="css/ajkbdlr.css">
            <script type="text/javascript" src="js/jquery.js"></script>
            <script type="text/javascript" src="js/TouchSlide.1.1.js"></script>
            <script type="text/javascript" src="js/showTip.js"></script>
            <script type="text/javascript" src="js/woxiangyao.js"></script>
            <script type="text/javascript" src="js/swiper.js"></script>
            <script type="text/javascript" src="js/foot.js"></script>
</head>
<body>
   <div class="sjsc-title2">
        <a href="ajkDetail.html?id=${card.cardId}" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    </div>
	<div class="body" >

		<div class="content">
			<h4 style="text-align:left;width:100%;float: left;margin-top:10px;margin-bottom:10px;">申请人信息</h4>
			<input type="hidden" id="cardPrice" value="${card.cardPrice }"/>
			<input type="hidden" id="cardName"  value="${card.cardName}"/>
			<div style="padding-top:10px;">
				<p>姓&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;</p>
				<input type="text" id="userName" />
			</div>
			<div style="padding-top:10px;">
				<p>手机号&nbsp;&nbsp;&nbsp;</p>
				<input type="text" id="userPhone" />
			</div>
			
			<div class="c"></div>
			
			<h4 style="text-align:left;width:100%;float: left;margin-top:10px;margin-bottom:10px;">老人信息</h4>
			
			<div style="padding-top:10px;">
				<p>姓&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
				<input type="text" id="lrName" />
			</div>
			<div style="padding-top:10px;">
				<p>联&nbsp;系&nbsp;方&nbsp;式:&nbsp;&nbsp;&nbsp;</p>
				<input type="text" id="lrPhone"/>
			</div>
			<div style="padding-top:10px;">
				<p>身&nbsp;份&nbsp;证&nbsp;号:&nbsp;&nbsp;</p>
				<input type="text" id="lrSfzh"/>
			</div>
			<div style="padding-top:10px;">
				<p>与申请人关系:</p>
				<input type="text" style="margin-top:5px;" id="lrRelatetion"/>
			</div>
			<div style="padding-top:10px;">
				<p>住&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;&nbsp;</p>
				<input type="text" id="userAddr"/>
			</div>
			<input type="hidden" id="type" value="2"/>
			<button class="drdd-btn" onclick="add()">提交申请</button>
		</div>
	 <jsp:include page="footer5.jsp"></jsp:include>
	</div>


</body>
<script>
function add() {
	var userPhone=$("#userPhone").val();
	var userAddr=$("#userAddr").val();
	var cardName=$("#cardName").val();
	var cardPrice=$("#cardPrice").val();
	
	var lrName=$("#lrName").val();
	var lrPhone=$("#lrPhone").val();
	var lrSfzh=$("#lrSfzh").val();
	var lrRelatetion=$("#lrRelatetion").val();
	if(userPhone==""){
		alert("手机不许为空");
		return;
	}
	if(userPhone != "") {
		if(!isPoneAvailable(userPhone)) {
			alert("手机号不正确");
			return;
		}
	}
	if(userAddr==""){
		alert("地址不许为空");
		return;
	}
	
	if(lrName==""){
		alert("老人姓名不许为空");
		return;
	}
	
	if(lrSfzh==""){
		alert("老人身份证号不许为空");
		return;
	}
	
	if(lrPhone==""){
		alert("老人电话不许为空");
		return;
	}
	if(lrPhone != "") {
		if(!isPoneAvailable(lrPhone)) {
			alert("手机号不正确");
			return;
		}
	}
	if(lrRelatetion==""){
		alert("与申请人关系不许为空");
		return;
	}
	
	$.ajax({
		url:'cardOrderInsertlr.html',
		type:'post',
		data:'userPhone='+userPhone+'&userAddr='+userAddr+"&cardName="+cardName+"&lrName="+lrName+"&cardPrice="+
			cardPrice+"&lrSfzh="+lrSfzh+"&lrPhone="+lrPhone+"&lrRelatetion="+lrRelatetion+"&type=2",
		success:function(rs){
			var re = /^[0-9]+.?[0-9]*$/;
			if(re.test(rs)&&rs!=0){
				alert("添加成功！");
				window.location.href='./cardAll.html';
			}else{
				alert("失败！");
			}
		}
	});
	
}

function isPoneAvailable(phone) {
    var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
    if (!myreg.test(phone)) {
        return false;
    } else {
        return true;
    }
}
</script>
</html>