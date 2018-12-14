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
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,member-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->

<link rel="stylesheet" href="css/person.css">
<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
	type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

<title>意见反馈</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		查看 <a class="btn btn-success radius r mr-20"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<br>
	<div class="pd-20">
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"> 
			<a href="toAddStreetSeller.html" class="btn btn-primary radius">
				<i class="Hui-iconfont">&#xe600;
				</i>
				添加记录
			</a></span>
		</div>
		<div class="mt-20">
			<table class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="5px"><input type="checkbox" name="" value=""></th>
						<th width="10px">序号</th>
						<th width="15%">用户名</th>
						<th width="15%">商家地址</th>
						<th width="10%">商家名称</th>
						<th width="15%">商家图片</th>
						<th width="15%">增加时间</th>
						<th width="15%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${mapList.listSeller}" var="list" varStatus="s">
						<tr class="text-c">
							<td><input type="checkbox" value="1" name=""></td>
							<td>${s.count}</td>
							<td>${list.userName}</td>
							<td>${list.address}</td>
							<td>${list.sellerName}</td>
							<td><img alt="" src="${list.sellerImg}" width="50" height="50"> </td>
							<td>${list.addTime}</td>
							<td>
							<a href="toAddStreetSeller.html?id=${list.id}">编辑</a>&nbsp;&nbsp;
							<a href="javascript:;" onclick="del('${list.id}')">删除</a>
							</td>					
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<div class="panel-foot text-center">
			
			
				<ul class="pagination">
					<li><a href="javascript:;">共${mapList.total}条</a></li>
				</ul>
				<ul class="pagination">
					<li><a href="javascript:;">当前第${currentPage}页</a></li>
				</ul>

				<ul class="pagination">
					<li><a href="javascript:;" onclick="fpage()">首页</a></li>
				</ul>
				<ul class="pagination">
					<li><a href="javascript:;" onclick="upPage()">上一页</a></li>
				</ul>

				<ul class="pagination">
					<li><a href="javascript:;" onclick="downPage()">下一页</a></li>
				</ul>
				<ul class="pagination">
					<li><a href="javascript:;" onclick="epage('')">末页</a></li>
				</ul>
				<ul class="pagination" style="width:4%;">
					<li><input type="tel" class="input-text" id="seastr" > </li>
				</ul>
				<ul class="pagination">
					<li> <a href="javascript:;" onclick="spage()">go</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="js/H-ui.js"></script>
	<script type="text/javascript" src="js/H-ui.admin.js"></script>
	<script type="text/javascript">
		var currentPage = '${currentPage}';
		var totalPage = '${mapList.total}';
		
		function upPage() {
			if (currentPage > 1) {
				window.location.href = 'sellerList.html?currentPage='
						+ (parseInt(currentPage) - 1)+'&status=1';
				return;
			}
		}
		function downPage() {
			if (parseInt(currentPage) < parseInt(totalPage)) {
				window.location.href = 'sellerList.html?currentPage='
						+ (parseInt(currentPage) + 1);
				return;
			}
		}
		function fpage() {
			window.location.href = 'sellerList.html?currentPage=1'+'&status=1';
			return;
		}
		function epage() {
			window.location.href = 'sellerList.html?currentPage=' + totalPage+'&status=1';
			return;
		}
		function spage() {
			var seastr =$('#seastr').val();
			if (parseInt(seastr)< parseInt(totalPage)||parseInt(seastr)== parseInt(totalPage)) {
			window.location.href = 'sellerList.html?currentPage=' + seastr+'&status=1';
			}
			return;
		}
	</script>
	<script type="text/javascript">
	function del(id){
		var  b = confirm('确定删除？');
		if(!b){
		return ;
		}
		$.ajax({
			url:'deleteseller.html',
			type:'post',
			data:'id='+id,
			success:function(rs){
				if(rs==1){
					alert("成功！");
					location.reload();
				}else{
					alert("失败！");
				}
			}
		})
	}
	
	
	</script>
	
</body>
</html>