<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,member-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="css/person.css">
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

<style type="text/css">
.leftFolt {
	margin-left: 10px;
}

.color {
	color: blue;
}

.pageImg {
	width: 280px;
	height: 110px;
}

.pageImg .imges {
	width: 180px;
	height: 110px;
}

.pageImg .updateImg {
	float: right;
	width: 90px;
}
.input-text{
    margin-top: 10px;
    margin-bottom: 20px;
    display:none;
}
</style>
<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div class="leftFolt">首页</div>
		<hr />
		<br />
		<div class="pageImg">
			<div id="pictureImg">
				<img alt="" class="leftFolt imges" src="${mapList.jdbBenefit.picture }">
			</div>
		    
		    <div class="updateImg">
		    <a href="javascript: showImg('picture');">修改</a></div>
		</div>
		<input type="file" id="picture" name="file" value="" class="input-text" style="width: 80%" onchange="upload('picture','pictureImg')">
		<input type="hidden" id="pictures" value="" >
		<div class="leftFolt">图文消息：
		<a href="toUpdateBenfit.html" class="color" >添加</a>
		</div>
	</div>
	<hr />
	<br />
	<hr />
	<br />
	<br />
	<div>
		<div class="leftFolt">家滴帮-爱老计划</div>
		<hr />
		<br />
		<img alt="" class="leftFolt imges" src="${mapList.JdvLoveoldplan.oldpicture }">
		<div class="leftFolt"><a href="toUpdateLoveoldplan.html" class="color" >修改</a></div>
	</div>
	<br />
	<br />
	<div class="leftFolt">公益组织-爱心接力</div>
	<hr />
	<div class="pd-20">
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="15%">组织ID</th>
						<th width="10%">组织名称</th>
						<th width="15%">公益首页宣传图</th>
						<th width="15%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${mapList.jdbLove}" var="list" varStatus="s">
						<tr class="text-c">
							<td>${list.organizationId}</td>
							<td>${list.organizationName}</td>
							<td>${list.picture}</td>
							<td>
							    <a href="toLoveRelay.html?id=${list.id}">编辑</a>&nbsp;&nbsp;
								<a href="javascript:;" onclick="del('${list.id}')">删除</a>
						    </td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

		</div>
	</div>
	
	<div class="leftFolt"><a href="toLoveRelay.html" class="color" >+添加组织</a></div>
	<br />
	<br />
	<div>
		<div class="leftFolt">联系方式</div>
		<hr />
		<img alt="" class="leftFolt imges" src="${mapList.jdbRelation.picture} ">
		<div class="leftFolt"><a href="toRelation.html" class="color" >添加</a></div>
	</div>
	<br />
	<br />
	<script type="text/javascript">
	
		function upload(picture,pictureImg) {

			var fp = document.getElementById(picture).value;
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
				fileElementId : picture, //文件选择框的id属性  
				dataType : 'text', //服务器返回的格式，可以是json  
				success : function(rs) //相当于java中try语句块的用法  
				{
					
					if (rs != "") {
						
						$('#'+pictureImg).html("");
						$('#'+pictureImg).append(
								"<img src='"+rs+"' width='100' height='100'>");
						$('#pictures').val(rs);
						add(rs);
						hideImg(picture);
					} else {
						alert('失败');
					}
				},
				error : function(data, status, e) //相当于java中catch语句块的用法  
				{
					alert(3);
					alert('失败');

				}
			});
		}

		function showImg(fileId) {
			$("#" + fileId).css("display", "block");
		}

		function hideImg(fileId) {
			$("#" + fileId).css("display", "none");
		}
		
		function del(id) {
			var url = 'delLoveRelayById.html';
			$.ajax({
				url : encodeURI(url),
				type : 'POST',
				data : {"id":id},
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
		
		function add(picture) {
			
			var url = 'updateView.html';
			$.ajax({
				url : encodeURI(url),
				type : 'POST',
				data : {"picture":picture},
				success : function(rs) {
					if (rs == 1) {
						alert("操作成功！");
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
		
	</script>
</body>
</html>