<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script>

<link rel="stylesheet" href="kindeditor/themes/default/default.css" />
<script charset="utf-8" src="kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
<title>Insert title here</title>

<script>
	var editor;
	KindEditor.ready(function(K) {
		editor = K.create('textarea[name="planshow"]', {
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
					'|', 'emoticons', 'image', 'multiimage', 'link',
					'fullscreen' ]
		});
	});
</script>

</head>
<body>
	<form action="" method="post" id="updateLoveoldplans" enctype="multipart/form-data">
		<div class="pd-20" style="width: 80%">
	
			<div class="row cl">
				<label class="form-label col-2">标题：</label>
				<div class="formControls col-10">
					<input type="text" 
					       id="plantitle" 
					       name="plantitle" 
					       placeholder="请填写标题"
						   value="" 
						   class="headline"
						   style="width: 80%">
				</div>
			</div>
			<br>
			<div class="row cl">
				<label class="form-label col-2">图片：</label>
				<div id="img" class="formControls col-10">
					<input type="file" id="file" name="file" value=""  style="width: 80%" onchange="upload()">
					
				</div>
				<input type="hidden" id="oldpicture" name="oldpicture">
			</div>
			<br> <br>
			<div class="row cl">
				<label class="form-label col-2">详情：</label>
				<div class="formControls col-10">
					<textarea name="planshow" 
					          id="planshow"
						      style="width: 80%; 
						      height: 260px;"></textarea>
				</div>
			</div>
			<br> <br>
			
			<div class="col-10 col-offset-2">
				<button onClick="add()" 
				        id="butt" 
				        class="btn btn-primary radius"
					    type="button">
					<i class="Hui-iconfont">&#xe632;</i> 提交
				</button>
				<button onClick="history.go(-1);" 
				        class="btn btn-default radius"
					    type="button">&nbsp;&nbsp;返回&nbsp;&nbsp;
			    </button>
			</div>
		</div>
	</form>
	<script type="text/javascript">
	
		function add() {
			var formData = new FormData($("#updateLoveoldplans")[0]);
			var url = 'updateLoveoldplan.html';
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

						alert("操作成功！");
						window.location.href = 'listBenfit.html'
					} else {

						alert("操作失败！");
					}
				},
				error : function(req, textStatus, errThrow) {
					var sessionstatus = req.getResponseHeader("sessionstatus");
					if (sessionstatus) {
						return;
					}// 防止超时闪现弹窗
				}
			});
		}
		
		function upload() {

			var fp = document.getElementById("file").value;
			//为了避免转义反斜杠出问题，这里将对其进行转换

			var re = /(\\+)/g;
			var fn = fp.replace(re, "#");
			//对路径字符串进行剪切截取
			var one = fn.split("#");
			//获取数组中最后一个，即文件名
			var two = one[one.length - 1];
			//再对文件名进行截取，以取得后缀名
			var three = two.split(".");
			//获取截取的最后一个字符串，即为后缀名
			var last = three[three.length - 1];
			last = last.toLowerCase();

			if (last != 'png' && last != 'jpg' && last != 'gif'
					&& last != 'PNG' && last != 'JPG' && last != 'GIF') {
				alert("请上传png、jpg或者gif文件！");
				return;
			}
			$.ajaxFileUpload({
				url : 'upload.html', //需要链接到服务器地址  
				secureuri : false,
				fileElementId : "file", //文件选择框的id属性  
				dataType : 'text', //服务器返回的格式，可以是json  
				success : function(rs) //相当于java中try语句块的用法  
				{
					if (rs != "") {
						
						
						$('#img').html("");
						$('#img').append("<img src='"+rs+"' width='100' height='100'>");
						$("#oldpicture").val(rs);
					} else {
						alert('失败');
					}
				},
				error : function(data, status, e) //相当于java中catch语句块的用法  
				{
					alert('失败');

				}
			});
		}

		
	</script>
</body>
</html>