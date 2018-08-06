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
<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
	type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script>

<link rel="stylesheet" href="kindeditor/themes/default/default.css" />
<script charset="utf-8" src="kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
<script>
	var editor;
	KindEditor.ready(function(K) {
		editor = K.create('textarea[name="content"]', {
			resizeType : 1,
			allowPreviewEmoticons : false,
			allowImageUpload : true,
			afterBlur : function() {
				this.sync();
			},
			items : [ 'source', 'fontname', 'fontsize', '|', 'forecolor',
					'hilitecolor', 'bold', 'italic', 'underline',
					'removeformat', '|', 'justifyleft', 'justifycenter',
					'justifyright', 'insertorderedlist', 'insertunorderedlist',
					'|', 'emoticons', 'image', 'link', 'fullscreen' ]
		});
	});
</script>
<title>基本设置</title>

</head>
<body>
	<!-- <nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		搜索热词 <span class="c-gray en">&gt;</span>  <a
			class="btn btn-success radius r mr-20"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav> -->
	<br>
	<br>
	<div class="pd-20" style="width: 80%">
		<form action="" method="post" id="addseller" enctype="multipart/form-data">
			<div class="row cl">
				<label class="form-label col-2">用户名：</label>
				<div class="formControls col-10">
					<input type="text" id="userName" name="userName" placeholder="请填写名称" value=""
						class="input-text" style="width: 80%">
				</div>
				
				<label class="form-label col-2" style="margin-top:20px;">商家昵称：</label>
				<div class="formControls col-10" style="margin-top:20px;">
					<input type="text" id="sellerName" name="sellerName" placeholder="请填写昵称" value=""
						class="input-text" style="width: 80%">
				</div>

				<label class="form-label col-2" style="margin-top:20px;">商家地址：</label>
				<div class="formControls col-10" style="margin-top:20px;">
					<input type="text" id="address" name="address" placeholder="请填写地址" value=""
						class="input-text" style="width: 80%">
				</div>
				<label class="form-label col-2" style="margin-top:20px;">商家详情：</label>
				<div class="formControls col-10" style="margin-top:20px;">
					<textarea name="sellerDetail" id="sellerDetail" style="width: 80%;height: 100px;"></textarea>
				</div>
				<label class="form-label col-2" style="margin-top:20px;">所属商圈：</label>
				<div class="formControls col-10" style="margin-top:20px;">
					<select id="sellerAreaId" class="input-text" style="width: 80%"></select>
				</div>
				<label class="form-label col-2" style="margin-top:20px;">商家图片：</label>
				<div class="formControls col-10" style="margin-top:20px;">
					<input type="file" id="path" name="filePath" placeholder="商家图片" value=""
						class="input-text" style="width: 80%">
				</div>
			</div>
			<br>
			<br>
			<div class="col-10 col-offset-2" style="margin-top:20px;">

				<button onClick="add()" id="butt" class="btn btn-primary radius"
					type="button">
					<i class="Hui-iconfont">&#xe632;</i> 提交
				</button>
				<button onClick="history.go(-1);" class="btn btn-default radius"
					type="button">&nbsp;&nbsp;返回&nbsp;&nbsp;</button>
			</div>
			</form>
	</div>
	<br>
	<br>
	
	<script type="text/javascript">
		$(function(){
			$.ajax({
				url:"getAllSellerArea.html",
				type:"POST",
				dataType:'json',
				success:function(result){
					var str = "";
					for(var i = 0;i<result.length;i++){
						str += "<option value='"+result[i].id+"'>"+result[i].sellerArea+"</option>";
					}
					$("#sellerAreaId").html(str);
				}
			});
		});
		
		function add() {
			var formData = new FormData($("#addseller")[0]);
			var url = 'insertSeller.html';
			$.ajax({
				url : encodeURI(url),
				type : 'POST',
				data : formData,
				async : true,
	    		cache : false,
	    		contentType : false,
	    		processData : false,
				success : function(rs) {
					if (rs == 1) {

						alert("添加成功！");
					} else {

						alert("添加失败！");
					}
				},
				error : function(req, textStatus, errThrow){
					alert(3);
	    			var sessionstatus = req.getResponseHeader("sessionstatus");
	    			if(sessionstatus){return;}// 防止超时闪现弹窗
	    		}
			})
		}
	</script>

</body>
</html>