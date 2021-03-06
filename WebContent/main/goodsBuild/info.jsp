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
<link href="css/H-ui.admin.css" rel="stylesheet"
	type="text/css" />
<link href="lib/icheck/icheck.css" rel="stylesheet"
	type="text/css" />
<link href="lib/Hui-iconfont/1.0.1/iconfont.css"
	rel="stylesheet" type="text/css" />
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
			items : [
				'source','fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
				'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
				'insertunorderedlist', '|', 'emoticons', 'image','multiimage', 'link','fullscreen']
		});
	});
</script>
<title>基本设置</title>

</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		商品 <span class="c-gray en">&gt;</span>  <a
			class="btn btn-success radius r mr-20"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<br><br>
	<div class="pd-20" style="width: 80%">
		<input type="hidden" id="id" value="${goods.id }">
			<div class="row cl">
				<label class="form-label col-2">名称：</label>
				<div class="formControls col-10">
					<input type="text" id="goodsName"
						placeholder="请填写名称" value="${goods.goodsName}" class="input-text" style="width: 80%">
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2">一级分类：</label>
				<div class="formControls col-10">
				<select id="firstCategory" class="input-text" style="width: 80%" onchange="secondCategorySel()">
					<c:forEach items="${category}" var="ctg">
						<c:if test="${ctg.firstCategory==goods.firstCategory }">
						<option value="${ctg.firstCategory}" selected="selected">${ctg.firstCategory }</option>
						</c:if>
						<c:if test="${ctg.firstCategory != goods.firstCategory }">
						<option value="${ctg.firstCategory}">${ctg.firstCategory }</option>
						</c:if>
					</c:forEach>
				</select>
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2">二级分类：</label>
				<input type="hidden" id="secondCtgName" value="${goods.secondCategory }">
				<div class="formControls col-10">
				<select id="secondCategory" class="input-text" style="width: 80%"></select>
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2">图片：</label>
				<div class="formControls col-10">
					<input type="file" id="file" name="file" value="" class="input-text" style="width: 80%" onchange="upload()">
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2"></label>
				<input id="filepath" type="hidden" value="${goods.goodsImg}">
				<div class="formControls col-10" id="img">
					<img alt="" src="${goods.goodsImg}" style="width:100px;height:100px">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-2">规格：</label>
				<div class="formControls col-10">
					<input type="text" id="goodsSpe" 
						placeholder="请填写规格" value="${goods.goodsSpe }" class="input-text" style="width: 80%">
				</div>
			</div><br>
					
			<div class="row cl">
				<label class="form-label col-2">材质：</label>
				<div class="formControls col-10">
					<input type="text" id="goodsMaterial"
						placeholder="请填写材质" value="${goods.goodsMaterial }" class="input-text" style="width: 80%">
				</div>
			</div><br>
			
			<div class="row cl">
				<label class="form-label col-2">品牌：</label>
				<div class="formControls col-10">
					<input type="text" id="goodsBrand"
						placeholder="请填写品牌" value="${goods.goodsBrand }" class="input-text" style="width: 80%">
				</div>
			</div><br>
			
			<div class="row cl">
				<label class="form-label col-2">颜色：</label>
				<div class="formControls col-10">
					<input type="text" id="goodsColor"
						placeholder="请填写颜色" value="${goods.goodsColor }" class="input-text" style="width: 80%">
				</div>
			</div><br>
			
			<div class="row cl">
				<label class="form-label col-2">库存：</label>
				<div class="formControls col-10">
					<input type="text" id="goodsNum"
						placeholder="请填写库存" value="${goods.goodsNum }" class="input-text" style="width: 80%">
				</div>
			</div><br>
			
			<div class="row cl">
				<label class="form-label col-2">价格：</label>
				<div class="formControls col-10">
					<input type="text" id="goodsPrice"
						placeholder="请填写价格" value="${goods.goodsPrice }" class="input-text" style="width: 80%">
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2">价格：</label>
				<div class="formControls col-10">
					<input type="text" id="goodsOldPrice"
						   placeholder="请填写价格" value="${goods.goodsOldPrice }" class="input-text" style="width: 80%">
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2">详情：</label>
				<div class="formControls col-10">
					<textarea name="content" id="goodsDetail" style="width: 80%;height: 260px;">${list.goods_detail }</textarea>
				</div>
			</div><br>
			<br>
			<div class="col-10 col-offset-2">
				<button onClick="add()" id="butt" class="btn btn-primary radius" type="button">
					<i class="Hui-iconfont">&#xe632;</i> 提交
				</button>
				<button onClick="history.go(-1);" class="btn btn-default radius" type="button">
					&nbsp;&nbsp;返回&nbsp;&nbsp;
				</button>
			</div>
			</div><br><br>
	<input type="hidden" id="sellerId">
	<script type="text/javascript">
	function add(){
		var goods = {};
		goods.id = $("#id").val();
		goods.goodsName = $('#goodsName').val();
		goods.sellerId = $('#sellerId').val();
		goods.goodsSpe = $('#goodsSpe').val();
		goods.goodsImg = $('#filepath').val();
		goods.goodsPrice = $('#goodsPrice').val();
		goods.goodsOldPrice = $('#goodsOldPrice').val();
		goods.goodsDetail = $('#goodsDetail').val();
		goods.firstCategory = $('#firstCategory').val();
		goods.secondCategory = $('#secondCategory').val();
		goods.goodsNum = $('#goodsNum').val();
		goods.goodsBrand = $('#goodsBrand').val();
		goods.goodsMaterial = $('#goodsMaterial').val();
		goods.goodsColor = $('#goodsColor').val();
		var r =  /^[0-9]*$/;
		var doub = /^([1-9]\d*|0)(\.\d{1,2})?$/;
		
		if(goods.goodsName == null || goods.goodsName == "") {
			alert("名称不能为空");
			return false;
		}
		
		if(!doub.test(goods.goodsPrice)) {
			alert("价格请填写数字");
			return false;
		}
		
		if(!r.test(goods.goodsNum)) {
			alert("库存请填写数字");
			return false;
		}
		$.ajax({
			url:'goodsBuildUpdate.html',
			type:'post',
			data:goods,
			dataType:'json',
			success:function(rs){
				if(rs==1){
					alert("更新成功！");
					window.location.href = document.referrer;
				}else{
					alert("更新失败！");
				}
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
					$('#filepath').val(rs);
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
	
	$(function(){
		var secondCategory = $("#secondCtgName").val();
		var firstCategory = $("#firstCategory").val();
		$.ajax({
			url:"getSecondCategoryByFirst.html",
			type:"POST",
			data:{"firstCategory":firstCategory},
			dataType:'json',
			success:function(result){
				var str = "";
				for(var i = 0;i<result.length;i++){
					if(result[i] == secondCategory){
						str += "<option value='"+result[i]+"' selected='selected'>"+result[i]+"</option>";
					}else {
						str += "<option value='"+result[i]+"'>"+result[i]+"</option>";
					}
				}
				$("#secondCategory").html(str);
			}
		});
	});
	
	function secondCategorySel() {
		var firstCategory = $("#firstCategory").val();
		$.ajax({
			url:"getSecondCategoryByFirst.html",
			type:"POST",
			data:{"firstCategory":firstCategory},
			dataType:'json',
			success:function(result){
				var str = "";
				for(var i = 0;i<result.length;i++){
					str += "<option value='"+result[i]+"'>"+result[i]+"</option>";
				}
				$("#secondCategory").html(str);
			}
		});
	}
	</script>	
	
</body>
</html>