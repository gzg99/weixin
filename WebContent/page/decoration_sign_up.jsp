<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>商家加入</title>
	<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		function decorationAdd(){
			var companyName = $('#companyName').val();
			var companyPhone = $('#companyPhone').val();
			var companyImg = $('#filepath').val();
			var companyIntrl = $('#companyIntrl').val();
			var companyDetail = $('#companyDetail').val();
			var type = $('#type').val();
			var isFineQuality = $('#isFineQuality').val();
			var companyAddress = $('#companyAddress').val();
			var businessLicense = $('#licenseFilepath').val();

			$.ajax({
				url:'decorationSignUp.html',
				type:'post',
				data:'companyName='+companyName+'&companyPhone='+companyPhone+'&companyImg='+companyImg+'&companyIntrl='+companyIntrl+
				'&companyDetail='+companyDetail+'&type='+type+'&isFineQuality='+isFineQuality+'&companyAddress='+companyAddress+
				'&businessLicense='+businessLicense,
				success:function(rs){
					if(rs==1){
						alert("添加成功！");
						window.location.href = document.referrer;
//						window.location.href = 'getAllDecorationByType.html?type=2'
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
<form action="" method="post" id="decorationForm" enctype="multipart/form-data">
	<div class="pd-20" style="width: 80%">
		店铺名称：<input id="companyName" name="companyName"><br/>
		联系电话：<input id="companyPhone" name="companyPhone"><br/>
		<input id="filepath" name="companyImg"><br/>
		<input id="companyIntrl" name="companyIntrl"><br/>
		<input id="companyDetail" name="companyDetail"><br/>
		<c:if test="${type == '1'}">
			<input id="type" name="type" value="家装"><br/>
		</c:if>
		<c:if test="${type == '2'}">
			<input id="type" name="type" value="工装"><br/>
		</c:if>
		<input id="isFineQuality" name="isFineQuality"><br/>
		<input id="companyAddress" name="companyAddress"><br/>
		<input id="licenseFilepath" name="businessLicense"><br/>
	</div>
	<div class="col-10 col-offset-2">
		<button onClick="decorationAdd()"
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