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
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script> 

<link rel="stylesheet" href="kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="https://cache.amap.com/lbs/static/main1119.css"/>

<script charset="utf-8" src="kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="kindeditor/lang/zh_CN.js"></script>
<link rel="stylesheet" href="https://cache.amap.com/lbs/static/main1119.css"/>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.9&key='9e1d9c358dabbf185022c2c8cddaba94'&plugin=AMap.Autocomplete"></script>
<script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>

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
			<div class="row cl">			
				<label class="form-label col-2">名称：</label>
				<div class="formControls col-10">
					<input type="text" id="sellerArea"
						placeholder="请填写名称" value="" class="input-text" style="width: 80%">
				</div>
			</div><br>
			<div class="row cl">			
				<label class="form-label col-2">类别：</label>
				<div class="formControls col-10">
					<select id="type" class="input-text" style="width: 80%">
						<option value="1">建材</option>
						<option value="2">家居</option>
						<option value="3">花卉</option>
					</select>
				</div>
			</div><br>
			<div class="row cl">			
				<label class="form-label col-2"></label>
				<div class="formControls col-10">
<!-- 					<a html="#" onclick="getMap();" style="color: red;">获取地图地址</a><br> -->
                     <input type="button" onclick="getMap();" value="获取地图地址">
				</div>
			</div><br>
			
			<div class="row cl">			
				<label class="form-label col-2">经度：</label>
				<div class="formControls col-10">
					<input type="text" id="longitude"
						placeholder="请填写经度" value="${sellerArea.longitude }" class="input-text" style="width: 80%">
				</div>
			</div><br>
			<div class="row cl">			
				<label class="form-label col-2">纬度：</label>
				<div class="formControls col-10">
					<input type="text" id="latitude"
						placeholder="请填写纬度" value="${sellerArea.latitude }" class="input-text" style="width: 80%">
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2">一层平面图：</label>
				<div class="formControls col-10">
					<input type="file" id="file" name="file" value="" class="input-text" style="width: 80%" onchange="upload()">
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2"> </label>
				<input id="filepath" type="hidden">
				<div class="formControls col-10" id="img"></div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2">二层平面图：</label>
				<div class="formControls col-10">
					<input type="file" id="file1" name="file1" value="" class="input-text" style="width: 80%" onchange="upload1()">
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2"> </label>
				<input id="filepath1" type="hidden">
				<div class="formControls col-10" id="img1"></div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2">商圈图片：</label>
				<div class="formControls col-10">
					<input type="file" id="file2" name="file2" value="" class="input-text" style="width: 80%" onchange="upload2()">
				</div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2"> </label>
				<input id="filepath2" type="hidden">
				<div class="formControls col-10" id="img2"></div>
			</div><br>
			<div class="row cl">
				<label class="form-label col-2">详情：</label>
				<div class="formControls col-10">
					<textarea name="content" id="sellerDetail" style="width: 80%;height: 260px;"></textarea>
				</div>
			</div><br>	
			<br>
			<div class="col-10 col-offset-2">
				<button onClick="add()" id="butt"
					class="btn btn-primary radius" type="button">
					<i class="Hui-iconfont">&#xe632;</i> 提交
				</button>
				<button onClick="history.go(-1);" class="btn btn-default radius"
					type="button">&nbsp;&nbsp;返回&nbsp;&nbsp;</button>
				</div>
			</div><br><br>
	<script type="text/javascript">
	function add(){
		var sellerArea = $('#sellerArea').val();
		var firstLink = $('#filepath').val();
		var secondLink = $('#filepath1').val();
		var sellerImg = $('#filepath2').val();
		var sellerDetail = $('#sellerDetail').val();
		var type=$("#type").val();
		
		$.ajax({
			url:'sellerAreaInsert.html',
			type:'post',
			data:'sellerArea='+sellerArea+'&firstLink='+firstLink+'&secondLink='+secondLink
			+'&sellerImg='+sellerImg+'&sellerDetail='+sellerDetail+'&type='+type,
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
	
	function upload1() {
		var fp = document.getElementById("file1").value;
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
			url : 'upload1.html', //需要链接到服务器地址  
			secureuri : false,
			fileElementId : "file1", //文件选择框的id属性  
			dataType : 'text', //服务器返回的格式，可以是json  
			success : function(rs) //相当于java中try语句块的用法  
			{	
				if (rs != "") {
					$('#img1').html("");
					$('#img1').append("<img src='"+rs+"' width='100' height='100'>");
					$('#filepath1').val(rs);
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
	
	function upload2() {
		var fp = document.getElementById("file2").value;
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
			url : 'upload2.html', //需要链接到服务器地址  
			secureuri : false,
			fileElementId : "file2", //文件选择框的id属性  
			dataType : 'text', //服务器返回的格式，可以是json  
			success : function(rs) //相当于java中try语句块的用法  
			{	
				if (rs != "") {
					$('#img2').html("");
					$('#img2').append("<img src='"+rs+"' width='100' height='100'>");
					$('#filepath2').val(rs);
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
<div class="gdMap" style="display: none;">
	<div id="container"></div>
	<div id="myPageTop">
	    <table>
	        <tr>
	            <!-- <td>
	                <label>按关键字搜索：</label>
	            </td> -->
	            <td class="column2">
	                <label>左击获取经纬度：</label>
	            </td>
	        </tr>
	         <tr>
	          <!--  <td>
	                <input type="text" placeholder="请输入关键字进行搜索" id="tipinput">
	            </td>-->
	            <td class="column2">
	                <input type="text" readonly="true" id="lnglat">
	            </td>
	        </tr> 
	    </table>
	</div>
</div>

<script type="text/javascript">
    var map = new AMap.Map("container", {
        resizeEnable: true
    });
    //为地图注册click事件获取鼠标点击出的经纬度坐标
    var clickEventListener = map.on('click', function(e) {
        document.getElementById("lnglat").value = e.lnglat.getLng() + ',' + e.lnglat.getLat();
        $("#longitude").val(e.lnglat.getLng());
        $("#latitude").val(e.lnglat.getLat());
    });
    var auto = new AMap.Autocomplete({
        input: "tipinput"
    });
    AMap.event.addListener(auto, "select", select);//注册监听，当选中某条记录时会触发
    function select(e) {
        if (e.poi && e.poi.location) {
            map.setZoom(15);
            map.setCenter(e.poi.location);
        }
    }
    
  
	//自定页
	function getMap() {
		layer.open({
			type : 1,
			skin : 'layui-layer-rim', // 加上边框
            area: ['50%', '90%'], // 宽高
			content : $(".gdMap")
		});
	}
</script>

</html>