<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
	
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap-datepicker3.min.css" rel="stylesheet" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="/chihaodian/main/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script> 

<script src="bootstrap/js/bootstrap-datepicker.min.js"></script>
<script src="bootstrap/js/bootstrap-datepicker.zh-CN.min.js"></script>
<script src="bootstrap/js/bootstrap-datepicker.ja.min.js"></script>

<script src="bootstrap/js/bootstrap.min.js"></script>
<title>基本设置</title>

</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>广告管理 <span class="c-gray en">&gt;</span>
		广告编辑
	</nav>
	<br><br><br><br>
	<div class="pd-20" style="width: 80%">
		<input id="id" type="hidden" value="${ad.id }">
		<div class="row cl">
			<label class="form-label col-2">公司名称：</label>
			<div class="formControls col-10">
				<input  id="name" value="${ad.name}" class="input-text" style="width: 80%">
			</div>
		</div>
		<br>

		<div class="row cl">
			<label class="form-label col-2">广告内容：</label>
			<div class="formControls col-10">
				<input  id="content" value="${ad.content}" class="input-text" style="width: 80%">
			</div>
		</div>	
		<br>
						
		<%-- <div class="row cl">
			<label class="form-label col-2">开始时间：</label>
			<div class="formControls col-10">
				<input  id="startTime" value="${ad.startTimeStr}" class="input-text" style="width: 80%">
			</div>
		</div>	
		<br>
		
		<div class="row cl">
			<label class="form-label col-2">结束时间：</label>
			<div class="formControls col-10">
				<input  id="endTime" value="${ad.endTimeStr}" class="input-text" style="width: 80%">
			</div>
		</div>	 --%>
		<div class="row cl ">
			<label class="form-label col-2">开始、结束时间：</label>
			<div class="input-daterange formControls col-10">
				<input id="startTime" value="${ad.startTimeStr}" readonly="readonly" class="input-text" style="width: 30%">
				<span class="input-group-addon">－</span>
				<input  id="endTime" value="${ad.endTimeStr}" readonly="readonly" class="input-text" style="width:30%">
			</div>
		</div>    
		<br>
		
		<br><br>
		<div class="col-10 col-offset-2">
		
				<button onClick="add()" id="butt"
				class="btn btn-primary radius" type="button">
				<i class="Hui-iconfont">&#xe632;</i> 提交
			</button>
			<button onClick="history.go(-1);" class="btn btn-default radius"
				type="button">&nbsp;&nbsp;返回&nbsp;&nbsp;</button>
		</div>
	</div>
	<script type="text/javascript">
	
		$(function () {
		       
	        $('.input-daterange').datepicker({
	        	timePicker: true,
	            timePickerIncrement: 1,
	            locale: {
	                format: 'YYYY/MM/DD'
	            },
	        });
	        
	    });
    
		function add(){
			var obj = {};
			obj.id= $('#id').val();
			obj.name = $('#name').val();
			obj.content = $('#content').val();
			obj.startTime = $('#startTime').val();
			obj.endTime = $('#endTime').val();
			$.ajax({
				url:'updateAd.html',
				type:'post',
				data:obj,
				success:function(rs){
					if(rs=="true"){
						alert("提交成功！");
						window.location.href = document.referrer;
					}else{
						alert("提交失败！");
					}
				}
			});
		}

	</script>	
	
</body>
</html>