<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
	<title>获取地理位置</title>
	<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cache.amap.com/lbs/static/main1119.css"/>
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
	<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.8&key=9e1d9c358dabbf185022c2c8cddaba94"></script>
</head>
<body>
	<input type="hidden" id="id" value="${worker.id }">
	<div id="iCenter" style="width:100%; height:100%;"></div>
	
<!-- 		<div class="map" style="width: 100%;height: 3rem;"  id="container"></div> -->
	
	<script type="text/javascript">
		var mapObj = new AMap.Map('iCenter');
		$(function(){ 
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
		});
		
		function getAllWorkerInfo() {
			$.ajax({
				url:"getAllWorkerRangeCurDay.html",
				type : "POST",
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
				lnglats3[0] = row.longitude;
				lnglats3[1] = row.latitude;
				lnglats.push(lnglats3);
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
						alert(this.getExtData());
					});
				})(i);
			}
			mapObj.addControl(new AMap.ToolBar());
		}
		
	   
	</script>
</body>
</html>