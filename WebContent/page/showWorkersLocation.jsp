<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
	<title>好工匠</title>
	<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cache.amap.com/lbs/static/main1119.css"/>
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
	<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.8&key=9e1d9c358dabbf185022c2c8cddaba94"></script>
	<style type="text/css">
		.hgj_tab{  width: 100%; overflow:scroll; overflow-y: hidden; height: 0.6rem; padding: 0.3rem 0;}
		.hgj_tab ul{height: 0.6rem; padding:0 0.2rem; padding-left: 0.2rem;}
		.hgj_tab li{float: left; font-size: 0.28rem; width:1.18rem; text-align: center; height: 0.58rem; line-height: 0.58rem;border: #ccc solid 0.01rem; border-radius:0.3rem; margin-right: 0.2rem;}
		.hgj_tab ul .active{ background: #FF9900;color: #fff; border: #FF9900 solid 0.01rem; }
		.hgj_list{ width:7.5rem;}
		.hgj_list li{ width:6.7rem; padding:0.2rem 0.4rem; height: 0.64rem; line-height: 0.64rem; border-bottom: #ddd solid 0.01rem;}
		.hgj_list li img{ width: 0.64rem; height: 0.64rem; border-radius: 50%; margin-right:0.3rem; float: left; }
		.hgj_list li h1{float: left;font-size: 0.28rem;}
		.hgj_list li a{float: right; font-size: 0.28rem;}
			.title {
    padding: 0 2%;
    height: 44px;
    line-height: 44px;
    background: #ffffff;
    font-size: 16px;
    color: #f29133;
}
.title-left {
    float: left;
    padding-top: 11px;
}
.title-right {
    float: right;
    padding-top: 11px;
}
	</style>
</head>
<body style="padding-bottom:1.2rem;">
<div class="title" style="border-bottom:1px solid rgba(204, 204, 204, 0.15);text-align:center;">
        <div class="title-left"><a href="index.html"><img src="images/back.png" alt=""></a></div>
        <div class="title-right"><a href="secList.html"><img src="images/sjsc-13.png" alt=""></a></div>
    </div>
	<!--<div>
    	<a href="javascript:history.go(-1)" class="qb-tleft f-l">
    		<img src="images/back.png" alt="" style="width:20px;height: 20px;"/>
    	</a>-->
        <div style="clear:both;"></div>
    </div>

	<div class="hgj_tab">
		<ul>
			<li class="active">水暖工</li>
			<li>木工</li>
			<li>电工</li>
			<li>泥瓦工</li>
			<li>保洁工</li>
			<li>杂务工</li>
		</ul>
	</div>
	<input type="hidden" id="type" value="水暖工">
	<input type="hidden" id="id" value="${worker.id }">
	<div id="iCenter" style="width:100%; height:100%;"></div>
	<div class="clear"></div>
	<jsp:include page="footer4.jsp"></jsp:include>
	<script type="text/javascript">
		var hgj_w=$(".hgj_tab ul li").length*1.4+"rem";
		$(".hgj_tab ul").css("width",hgj_w)
	
		var mapObj;
		$(function(){
			$(".hgj_tab ul li").click(function(){
				$(this).addClass("active").siblings().removeClass("active");
				$("#type").val($(this).text());
				mapObj.destroy();
				mapObj = null;
				loadMap();
			});
			
			loadMap();
		});
		
		function loadMap() {
			mapObj = new AMap.Map('iCenter');
			mapObj.plugin('AMap.Geolocation', function () {
		        geolocation = new AMap.Geolocation({
		            enableHighAccuracy: true, // 是否使用高精度定位，默认:true
		            timeout: 50000,           // 超过50秒后停止定位，默认：无穷大
		            maximumAge: 0,            // 定位结果缓存0毫秒，默认：0
		            convert: false,            // 自动偏移坐标，偏移后的坐标为高德坐标，默认：true
		            showMarker: true,         // 定位成功后在定位到的位置显示点标记，默认：true
		            showCircle: false,         // 定位成功后用圆圈表示定位精度范围，默认：true
		            panToLocation: true,      // 定位成功后将定位到的位置作为地图中心点，默认：true
		            zoomToAccuracy:true       // 定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
		        });
		        mapObj.addControl(geolocation);
		        geolocation.getCurrentPosition();
		        AMap.event.addListener(geolocation, 'complete', onComplete); // 返回定位信息
		        AMap.event.addListener(geolocation, 'error', onError);       // 返回定位出错信息
		    });
		}
		
		function onComplete(obj){
	        var str=['定位成功'];
	        str.push('经度：' + obj.position.getLng());
	        str.push('纬度：' + obj.position.getLat());
	        //修改数据库中经度与纬度的值
	        var longitude = obj.position.getLng();
	        var latitude = obj.position.getLat();
	        //var id = $("#id").val();
	        var id = 1;
	        $.ajax({
	        	url:"updateWorkerLocation.html",
	        	type : "POST",
	        	data:'id='+id+'&longitude='+longitude+'&latitude='+latitude,
	        	success:function(rs){
	        		getAllWorkerInfo();
				},
				error:function() {
					alert("手机定位失败");
				}
	        });
	    }
	
	    function onError(obj) {
	        alert(obj.info + '--' + obj.message);
	        console.log(obj);
	    }
		
		function getAllWorkerInfo() {
			var type = $("#type").val();
			$.ajax({
				url:"getAllWorkerRangeCurDay.html",
				type : "POST",
				data:{"type":type},
				dataType:"json",
				success:function(result) {
					getView(result);
				},
				error:function() {
					
				}
			});
		}
		
		function getView(result){
			var lnglats = [];
			$.each(result, function(index, row){
				var lnglats3 = [];
				if(row.longitude != undefined && row.longitude != null && row.longitude != ""
						&& row.latitude != undefined && row.latitude != null && row.latitude != "") {
					lnglats3[0] = row.longitude;
					lnglats3[1] = row.latitude;
					lnglats.push(lnglats3);
				}
			});

			for(var i = 0; i < lnglats.length; i++) {
				var id = result[i].id;
				var marker = new AMap.Marker({
					position: lnglats[i],
					map:mapObj,
					extData:id
				});
				(function(x){
					marker.on("click", function(event){
						window.location.href="getWorkerInfoById.html?id="+this.getExtData();
					});
				})(i);
			}
			//mapObj.addControl(new AMap.ToolBar());
		}
		
	   
	</script>
</body>
</html>