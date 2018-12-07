<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
	<title>家居首页</title>
	<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://cache.amap.com/lbs/static/main1119.css"/>
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="https://webapi.amap.com/maps?v=1.4.8&key=9e1d9c358dabbf185022c2c8cddaba94"></script>
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>

<body>
	<div class="search"></div>
	<div class="map" style="width: 100%;height: 3rem;"  id="container"></div><br/><br/>
	<div class="small_title">-家居商圈-</div>
	<ul class="sq_list">
		<c:forEach items="${list}" var="listSellerAread" varStatus="seller">
			<li>
				<a href="getSellerListBySellerAreaId.html?sellerAreaId=${listSellerAread.id }&firstLink=${listSellerAread.firstLink}&
				secondLink=${listSellerAread.secondLink}">
					<img src="${listSellerAread.sellerImg }" alt="" />
					<div class="sq_list_bt">
						<h1>${listSellerAread.sellerArea }</h1>
						<p>${listSellerAread.sellerDetail }</p>
					</div>
					<div class="sq_list_jl">
					 <a href="javascript:"></a><span class="sp" onclick="thisMap('${listSellerAread.longitude}','${listSellerAread.latitude}','${seller.index}'+'serllerAreas');" id="${seller.index}serllerAreas" ></span>
					</div>
				</a>
			</li>
		</c:forEach>
	</ul>
	<ul class="sq_list">
		<c:forEach items="${sellers}" var="streetSeller" varStatus="seller">
			<li>
				<a href="getGoodsBuildListBySellerId.html?sellerId=${streetSeller.id }">
					<img src="${streetSeller.sellerImg }" alt="" />
					<div class="sq_list_bt">
						<h1>${streetSeller.sellerName }</h1>
						<p>${streetSeller.sellerDetail }</p>
					</div>
					<div class="sq_list_jl">
						<a href="javascript:"></a><span class="sp" onclick="thisMap('${streetSeller.longitude}','${streetSeller.latitude}','${seller.index}'+'streetSellerAreas');" id="${seller.index}streetSellerAreas" ></span>
					</div>
				</a>
			</li>
		</c:forEach>
	</ul>
	<div class="clear"></div>
	<jsp:include page="footer4.jsp"></jsp:include>
	
	<script>
	    
	    var map, geolocation;
	    var longitude = window.sessionStorage.getItem('longitude');
	    var latitude = window.sessionStorage.getItem('latitude');
	    //加载地图，调用浏览器定位服务
	    map = new AMap.Map('container', {
	        resizeEnable: true
	    });
	    if(longitude == null  || latitude == "") {
	    	 map.plugin('AMap.Geolocation', function() {
	 	        geolocation = new AMap.Geolocation({
	 	            enableHighAccuracy: true,//是否使用高精度定位，默认:true
	 	            timeout: 10000,          //超过10秒后停止定位，默认：无穷大
	 	            buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
	 	            zoomToAccuracy: true,      //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
	 	            buttonPosition:'RB'
	 	        });
	 	        map.addControl(geolocation);
	 	        geolocation.getCurrentPosition();
	 	        AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
	 	        AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
	 	    });
	 	    //解析定位结果
	 	    function onComplete(data) {
	 	        var str=['定位成功'];
	 	        str.push('经度：' + data.position.getLng());
	 	        str.push('纬度：' + data.position.getLat());
	 	        longitude = data.position.getLng();
	 	        latitude = data.position.getLat();
	 	       window.sessionStorage.setItem('longitude', longitude);
	 	      window.sessionStorage.setItem('latitude', latitude);
	 	        $(".sp").trigger("click");
	 	        if(data.accuracy){
	 	             str.push('精度：' + data.accuracy + ' 米');
	 	        }//如为IP精确定位结果则没有精度信息
	 	        str.push('是否经过偏移：' + (data.isConverted ? '是' : '否'));
	 	    }
	 	    //解析定位错误信息
	 	    function onError(data) {
	 	        alert('定位失败');
	 	    }
	 	    
	    }
	    
	    function thisMap(thislongitude,thislatitude ,ids) {
	    	var p1 = [12, 45];
		    var p2 = [thislongitude, thislatitude];
		    // 返回 p1 到 p2 间的地面距离，单位：米
		    var dis = "";
		    if(longitude != "" && latitude !="") {
		    	dis = AMap.GeometryUtil.distance(p1, p2);
		    }
		    if(!isNaN(dis)) {
		    	$("#"+ids).html(fomatFloat(dis/1000, 1)+"km");
		    } else {
		    	$("#"+ids).html("0km");
		    }
		    
	    }
	     $(function(){ 
	    	$(".sp").trigger("click");
	     
	    }); 
	    function fomatFloat(src,pos){      
            return Math.round(src*Math.pow(10, pos))/Math.pow(10, pos);     
		}    
	     
	</script>

	</body>
</html>
