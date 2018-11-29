<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<title>卡券申请</title>
 <link rel="stylesheet" type="text/css" href="../css/showTip.css">
            <link rel="stylesheet" href="../css/search.css">
            <link rel="stylesheet" type="text/css" href="../css/swiper.css">
            <link rel="stylesheet" type="text/css" href="../css/style.css">
            <link rel="stylesheet" href="../css/search.css">
            <link rel="stylesheet" type="text/css" href="../css/shoujisc.css">
            <link rel="stylesheet" type="text/css" href="../css/ajkbd.css">
            <script type="text/javascript" src="../js/jquery.js"></script>
            <script type="text/javascript" src="../js/TouchSlide.1.1.js"></script>
            <script type="text/javascript" src="../js/showTip.js"></script>
            <script type="text/javascript" src="../js/woxiangyao.js"></script>
            <script type="text/javascript" src="../js/swiper.js"></script>
            <script type="text/javascript" src="../js/foot.js"></script>
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
        <img src="../images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    	<div class="head">
			<div class="left">
				<img src="../images/ajk01.png" style="height:100px;float:right; width: 100px;"/>
			</div>
		 
			<div class="right">
				<p>365安居卡，享受家滴帮优质家政服务 终生免费享受定期保洁服务，家滴帮自营产品免运费</p>
			</div>
		</div>
    </div>
    
    <div class="drdd-info2" id="zitidian-choose">
        <p>卡券类型</p>
	    <select id="cardType">
            <option value="1">365 安居卡</option>
            <option value="2">敬老卡</option>
	    </select>
    </div>

    <div class="drdd-info4">
    	<p>涂层卡号：</p>
        <input type="text" id="cardNum" style="width:80%;border:0px">
        <div style="clear:both;"></div>
    </div>
    
    <div class="drdd-info4">
    	<p>持卡人手机：</p>
        <input type="text" id="userPhone" style="width:75%;border:0px">
        <div style="clear:both;"></div>
    </div>
    <div class="drdd-info4">
        <p>填写验证码：</p>
        <input type="text" id="code" style="width:75%;border:0px"><a onclick="getSmsCheckCode();">获取验证码</a>
        <div style="clear:both;"></div>
    </div>
    
    <div class="drdd-info4">
	    <p>绑定地址：</p>
        <input type="text" id='userAddr' placeholder="地址具体到门牌号，卡片与地址一对一绑定" style="width:80%;border:0px">
        <div style="clear:both;"></div>
    </div>

    <button id="buttonId" class="drdd-btn" onclick="add()">绑定至本卡</button>

	<jsp:include page="footer5.jsp"></jsp:include>

</body>
<script>

function add() {
	var cardType=$("#cardType").val();
	var cardNum=$("#cardNum").val();
	var userPhone=$("#userPhone").val();
	var userAddr=$("#userAddr").val();
	var code=$("#code").val();
	if(userPhone==""){
		alert("手机不许为空");
		return;
	}else{
        if(!isPoneAvailable(userPhone)) {
            alert("手机号不正确");
            return;
        }
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
		data:'cardType='+cardType+'&cardNum='+cardNum+"&userPhone="+userPhone+"&cardNum="+cardNum+
        "&userAddr="+userAddr+"&code="+code,
		success:function(rs){
			var re = /^[0-9]+.?[0-9]*$/;
            if(rs == "error"){
                alert("验证码错误！");
            }else if(rs == "time"){
                alert("验证码超时！");
            }else{
                if(re.test(rs)&&rs!=0){
                    window.location.href='payCardOrder.html?id='+rs;
                }else{
                    alert("失败！");
                }
            }
		}
	});
}

/**
 * 获取验证码信息
 */
function getSmsCheckCode() {
    var userPhone = $("#userPhone").val();
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
    $.ajax({
        url:'serviceCart/SendSmsCheckCode.html',
        type:'post',
        data:'phone='+userPhone,
        success:function(rs){
            if(rs){
                $("#buttonId").attr("disabled",false);
                alert(rs);
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