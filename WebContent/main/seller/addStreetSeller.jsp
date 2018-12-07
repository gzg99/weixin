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
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		临街店铺 <span class="c-gray en">&gt;</span>  <a
			class="btn btn-success radius r mr-20"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<br>
	<br>
	<div class="pd-20" style="width: 80%">
		<form action="" method="post" id="addseller" enctype="multipart/form-data">
			<div class="row cl">
				<input type="hidden"  name="id" value="${seller.id}" >
				<input type="hidden"  name="status" value="1" >
				<label class="form-label col-2">用户名：</label>
				<div class="formControls col-10">
					<input type="text" id="userName" name="userName" placeholder="请填写名称" value="${seller.userName}"
						class="input-text" style="width: 80%">
				</div><br><br>
							
				<label class="form-label col-2">类别：</label>
				<div class="formControls col-10">
					<select id="type" name="sellerType" class="input-text" style="width: 80%" onchange="sellerAreaList()">
						<option value="1" ${seller.sellerType == 1 ? 'selected="selected"' : ''}>建材</option>
						<option value="2" ${seller.sellerType == 2 ? 'selected="selected"' : ''}>家居</option>
						<option value="3" ${seller.sellerType == 3 ? 'selected="selected"' : ''}>花卉</option>
					</select>
				</div>
				
				<label class="form-label col-2" style="margin-top:20px;">商家昵称：</label>
				<div class="formControls col-10" style="margin-top:20px;">
					<input type="text" id="sellerName" name="sellerName" placeholder="请填写昵称" value="${seller.sellerName}"
						class="input-text" style="width: 80%">
				</div>

				<label class="form-label col-2" style="margin-top:20px;">商家地址：</label>
				<div class="formControls col-10" style="margin-top:20px;">
					<input type="text" id="address" name="address" placeholder="请填写地址" value="${seller.address}"
						class="input-text" style="width: 80%">
				</div>
				<label class="form-label col-2" style="margin-top:20px;">商家详情：</label>
				<div class="formControls col-10" style="margin-top:20px;">
					<textarea name="sellerDetail" id="sellerDetail" style="width: 80%;height: 100px;">${seller.sellerDetail}</textarea>
				</div>
				<div class="row cl">
				<label class="form-label col-2">商家图片：</label>
				<div class="formControls col-10">
					<input type="file" id="file" name="file" value="" class="input-text" style="width: 80%" onchange="upload()">
				</div>
				</div><br>
				<div class="row cl">
				<label class="form-label col-2"> </label>
				<input id="sellerImg" name="sellerImg" type="hidden" value="${seller.sellerImg }">
				<div class="formControls col-10" id="img2">
					<img alt="" src="${seller.sellerImg}" style="width:100px;height:100px">
				</div>
			</div>
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

		function sellerAreaList() {
			var type=$("#type").val();
			if(type == "" || type == undefined) {
				alert("请先选择类型");
				return;
			}
			$.ajax({
				url:"getAllSellerArea.html",
				type:"POST",
				data:{"type":type},
				dataType:'json',
				success:function(result){
					var str = "";
					for(var i = 0;i<result.length;i++){
						if(i == 0){
							$("#sellerAreaId").val(result[i].id);
						}
						str += "<option value='"+result[i].id+"'>"+result[i].sellerArea+"</option>";
					}
					$("#sellerAreaId1").html(str);
				}
			});
			
		}
		
		function getSellerArea(){
			$("#sellerAreaId").val($("#sellerAreaId1").val());
		}
		
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
						alert("操作成功！");
						window.location.href = 'selStreetSellerList.html'
					} else {
						alert("操作失败！");
					}
				},
				error : function(req, textStatus, errThrow){
	    			var sessionstatus = req.getResponseHeader("sessionstatus");
	    			if(sessionstatus){return;}// 防止超时闪现弹窗
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
						$('#sellerImg').val(rs);
					} else {
						alert('失败');
						//document.getElementById("msg"+m[1]).value="失败"; 
					}
				},
				error : function(data, status, e) //相当于java中catch语句块的用法  
				{alert('失败');
					
				}
			});
		}
	</script>

</body>
</html>