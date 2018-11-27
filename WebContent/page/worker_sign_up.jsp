<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>工匠注册</title>
	<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		function workerAdd(){
			var name = $('#name').val();
			var telPhone = $('#telPhone').val();
			var workerId = $('#workerId').val();
			var passwordId = $('#passwordId').val();
			var age = $('#age').val();
			var type = $('#type').val();
			var serviceArea = $('#serviceArea').val();
			var serviceDetail = $('#serviceDetail').val();
			var workerIntro = $('#workerIntro').val();
			var worderAlbum = $('#worderAlbum').val();

			$.ajax({
				url:'workerSignUp.html',
				type:'post',
				data:'name='+name+'&telPhone='+telPhone+'&workerId='+workerId+'&passwordId='+passwordId+'&age='+age+
				'&type='+type+'&serviceArea='+serviceArea+'&serviceDetail='+serviceDetail+'&workerIntro='+workerIntro+'&worderAlbum='+worderAlbum,
				success:function(rs){
					if(rs==1){
						alert("添加成功！");
						window.location.href = document.referrer;
					}else{
						alert("添加失败！");
					}
				}
			});
		}
	</script>
</head>

<body>
<div class="sjsc-title2">
	<a href="index.html" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
</div>
<form action="" method="post" enctype="multipart/form-data">
	<div class="pd-20" style="width: 80%">
		姓名：<input id="name" name="name"><br/>
		手机：<input id="telPhone" name="telPhone"><br/>
		微信号：<input id="weixin" name="weixin" value="微信号"><br/>
		省份证号：<input id="workerId" name="workerId"><br/>
		密码：<input id="passwordId" name="password"><br/>
		年龄：<input id="age" name="age"><br/>
		<input id="type" name="type"><br/>
		<input id="serviceArea" name="serviceArea"><br/>
		<input id="serviceDetail" name="serviceDetail"><br/>
		<input id="workerIntro" name="workerIntro"><br/>
		<input id="worderAlbum" name="worderAlbum"><br/>
	</div>
	<div class="col-10 col-offset-2">
		<button onClick="workerAdd()"
				type="button">
			<i class="Hui-iconfont">&#xe632;</i> 提交
		</button>
		<button onClick="history.go(-1);"
				type="button">&nbsp;&nbsp;返回&nbsp;&nbsp;
		</button>
	</div>
</form>
<jsp:include page="footer5.jsp"></jsp:include>

</body>
</html>