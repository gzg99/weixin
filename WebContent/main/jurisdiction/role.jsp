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

<link rel="stylesheet" href="../../css/demo.css" type="text/css">
<link rel="stylesheet" href="../../css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="css/person.css">
<link href="../css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="../css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="../lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />

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
				<a href="toaddrole.html" class="btn btn-primary radius"> 
					<i class="Hui-iconfont">&#xe600;</i>
					添加记录
				</a>
			</span>
		</div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-hover table-bg table-sort">
				<thead>
					<tr class="text-c">
						<th width="25px"><input type="checkbox" name="" value=""></th>
						<th width="20%">角色名称</th>
						<th width="30%">备注</th>
						<th width="15%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listRole}" var="list" varStatus="s">
						<tr class="text-c">
							<td><input type="checkbox" value="1" name=""></td>
							<td>${list.roleName}</td>
							<td>${list.remark}</td>
							<td>
								<a href="javascript:accredit('${list.roleId}');">授权</a>&nbsp;&nbsp;
								<a href="javascript:;" onclick="del('${list.roleId}')">删除</a>
							</td>					
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<div class="panel-foot text-center">
				<ul class="pagination">
					<li><a href="javascript:;">共${total}条</a></li>
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
					<li><a href="javascript:;" onclick="epage()">末页</a></li>
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
	<script type="text/javascript">
		function del(id){
			
			//询问框
			layer.confirm('您是删除该角色，此操作不可逆？', {
			  btn: ['是','否'] //按钮
			}, function(){
				$.ajax({
					url:'deleteRoleById.html',
					type:'post',
					data:'id='+id,
					success:function(rs){
						if(rs>0){
							layer.msg('删除成功');
							location.reload();
						}else{
							alert("失败！");
						}
					}
				})
			  
			});
		}
		
		var currentPage = '${currentPage}';
		var totalPage = '${totalPage}';
		function upPage() {
			if (currentPage > 1) {
				window.location.href = 'listJdbRole.html?currentPage=' + (parseInt(currentPage) - 1);
				return;
			}
		}
		function downPage() {
			if (parseInt(currentPage) < parseInt(totalPage)) {
				window.location.href = 'listJdbRole.html?currentPage=' + (parseInt(currentPage) + 1);
				return;
			}
		}
		function fpage() {
			window.location.href = 'listJdbRole.html?currentPage=1';
			return;
		}
		function epage() {
			window.location.href = 'listJdbRole.html?currentPage=' + totalPage;
			return;
		}
	</script>
	
	<script type="text/javascript" src="../lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="../lib/layer/1.9.3/layer.js"></script>
	<script type="text/javascript" src="../lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript" src="../lib/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="../js/H-ui.js"></script>
	<script type="text/javascript" src="../js/H-ui.admin.js"></script>
	
	<script type="text/javascript" src="../../js/ztree/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="../../js/ztree/jquery.ztree.excheck.js"></script>
	
	<script type="text/javascript">
	    
	    function selMenu() {
	    	var objStr = "";
	    	$.ajax({
				url:'selectMenu.html',
				type:'post', 
				async : false,
				success:function(rs){
					objStr = rs;
				},
				error:function(jqXHR, textStatus, errorThrown){  
					/*弹出jqXHR对象的信息*/
		            alert(jqXHR.responseText);
		            alert(jqXHR.status);
		            alert(jqXHR.readyState);
		            alert(jqXHR.statusText);
		            /*弹出其他两个参数的信息*/
		            alert(textStatus);
		            alert(errorThrown);
				}  
			});
	    	return objStr;
	    }
	    /**
	            给角色制制授权
	    **/
	    var roleMenuOpen;
		function accredit(roleId) {
	    	$("#roleId").val(roleId);
			ztree();
			roleMenuOpen = layer.open({
			  type: 1,
			  shade: false,
			  title: false, //不显示标题
			  content: $('.content_wrap') //捕获的元素，注意：最好该指定的元素要存放在body最外层，否则可能被其它的相对元素所影响
			});
		}
		
		/* $(function() {
			
			$('.table-sort').dataTable({
				"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
				"bStateSave" : true,//状态保存
				"aoColumnDefs" : [
				//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
				{
					"orderable" : false,
					"aTargets" : [ 0, 2, 4 ]
				} // 制定列不参与排序
				]
			});
			$('.table-sort tbody').on('click', 'tr', function() {
				if ($(this).hasClass('selected')) {
					$(this).removeClass('selected');
				} else {
					table.$('tr.selected').removeClass('selected');
					$(this).addClass('selected');
				}
			});
			
			
		}); */
		function ztree() {
			var setting = {
				view: {
					selectedMulti: false
				},
				check: {
					enable: true
				},
				data: {
					simpleData: {
						enable: true
					}
				},
				callback: {
					onCheck: onCheck
				}
			};

			var zNodes = eval("(" +selMenu() + ")");
			function onCheck(e, treeId, treeNode) {
				clearCheckedOldNodes();
			}
			function clearCheckedOldNodes() {
				var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getChangeCheckedNodes();
				var menuId = "";
				for (var i=0, l=nodes.length; i<l; i++) {
					menuId += nodes[i].id+",";
				}
				var m = menuId.substring(0, menuId.length-1);
				$("#menuId").val(m);
			}
			function createTree() {
				$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			}
			
			createTree();			
		}
		
	</script>
	
	<script type="text/javascript">
		function addRoleMenu() {
			alert($('#roleId').val());
			alert($('#menuId').val());
			var menuAndRole = {};
			menuAndRole.roleId = $('#roleId').val();
			menuAndRole.menuId = $('#menuId').val();
			$.ajax({
				url:"addRoleMenu.html",
				type:"post",
				data:menuAndRole,
				success:function(res) {
					layer.close(roleMenuOpen);
				},
				error:function(jqXHR, textStatus, errorThrown){  
					/*弹出jqXHR对象的信息*/
		            alert(jqXHR.responseText);
		            alert(jqXHR.status);
		            alert(jqXHR.readyState);
		            alert(jqXHR.statusText);
		            /*弹出其他两个参数的信息*/
		            alert(textStatus);
		            alert(errorThrown);
				}  
			});
		}
	</script>
</body>

<div class="content_wrap" style="display: none;">
	<div class="zTreeDemoBackground left">
		<ul id="treeDemo" class="ztree"></ul>
	</div>
	<div class="right">
	<input type="radio" id="last" name="stateType" class="radio first" style="margin-left:108px;"/>
	<input type="hidden" name="menuId" id="menuId">
	<input type="hidden" name="roleId" id="roleId">
	
	</div>
	<input type="button" onclick="addRoleMenu();">
</div>

</html>