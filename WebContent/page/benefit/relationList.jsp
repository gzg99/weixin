<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@charset "utf-8";
/* CSS Document */
*{ padding: 0px; margin: 0px; list-style: none; }
li, img { padding: 0px; MARGIN: 0px; list-style: none; }
img{ width:100%; height:100%;}
body { font-family: "微软雅黑";}
a, a:hover{ text-decoration: none; outline: none; color: #000;}
a {-webkit-tap-highlight-color: transparent; -webkit-touch-callout: none; -webkit-user-select: none;}
.clear { clear: both; font-size: 1px; height: 0; line-height: 0px; margin: 0; padding: 0; }

.left{ float: left; }
.right { float: right; }
.red{ color: #f80606;}
.menu{ position: fixed; bottom: 0; left: 0; width:7.5rem; height: 1.16rem;}

.gy_top{width: 7.5rem; height: 3.3rem;}
.gy_title{width: 7.5rem; height: 0.9rem; line-height: 0.9rem; color: #f29133; font-size:0.3rem; text-indent: 0.8rem;}
.ico1{ background: url(images/gy_ico2.png) no-repeat 0.1rem center; background-size: 0.53rem 0.48rem;}
.ico2{ background: url(images/gy_ico1.png) no-repeat 0.1rem center; background-size: 0.48rem 0.42rem;}
.ico3{ background: url(images/gy_ico3.png) no-repeat 0.1rem center; background-size: 0.48rem 0.48rem;}
.gy_nr{width: 7.5rem;}
.gy_jrwm{ background: #FFF6B5; padding: 0.1rem 0 0.2rem; border-radius: 0.4rem; position: relative; margin-bottom: 0.2rem;}
.gy_jrwm_left{width:1rem; height: 1.85rem; background:url(images/gy_ico0.png) no-repeat; background-size:100% 100%; position: absolute;left: 0; bottom: 0;}
.gy_jrwm_nr{ padding-left: 2.21rem; color: #7c736a;font-size:0.24rem; font-weight: bold; padding-right: 1.28rem; line-height: 0.38rem; margin-top: 0.1rem;}
.ico4{ background: url(images/gy_ico4.png) no-repeat 1.5rem 0;background-size: 0.36rem 0.38rem; }
.ico5{ background: url(images/gy_ico5.png) no-repeat 1.5rem 0;background-size: 0.36rem 0.38rem; }
.ico6{ background: url(images/gy_ico6.png) no-repeat 1.5rem 0;background-size: 0.36rem 0.38rem; }
.gy_list_top{ font-size: 0.36rem; line-height: 0.5rem; padding: 0.2rem 0.5rem; width: 6.5rem;}
.gy_list_zz{padding: 0 0.5rem; width: 6.5rem;}
.gy_list_zz img{ width: 0.64rem; height: 0.64rem; border-radius: 50%; margin-right:0.3rem; float: left;}
.gy_list_zz_mz{ color: #1f1f1e; font-size: 0.28rem; line-height: 0.28rem;}
.gy_list_zz_sj{ color: #8d8c86;font-size: 0.2rem; line-height: 0.2rem; margin-top: 0.16rem;}
.gy_list_zy{ font-size: 0.24rem;line-height: 0.36rem;padding: 0.5rem; width: 6.5rem; color: #7d7a77;}
.gy_list_zfdz{border-bottom: #E8DE9C solid 0.05rem;padding: 0 0.5rem; width: 6.5rem; padding-bottom: 0.2rem;}
.gy_list_zf{ height: 0.32rem; line-height: 0.32rem; padding-left: 0.46rem; background: url(images/gy_ico7.png) no-repeat left center;background-size: 0.32rem 0.32rem; font-size: 0.32rem; color: #666; cursor: pointer; float: left; margin-left: 1rem;}
.gy_list_dz{ height: 0.32rem; line-height: 0.32rem; padding-left: 0.46rem; background: url(images/gy_ico8.png) no-repeat left center;background-size: 0.32rem 0.32rem; font-size: 0.32rem; color: #666; cursor: pointer; float:right; margin-right:1rem;}
.gy_list_mzsj{float: left; width:4rem;}
.gy_list_zz .gy_list_dz{ margin-right: 0; margin-top: 0.16rem;}
.gy_list{ padding: 0.3rem 0; border-bottom: #E8DE9C solid 1px;}
.gy_list_txt{ color: #3d3d3c; font-size: 0.24rem;padding:0.3rem 0 0 1.44rem; width:4.5rem;}
.huifu{ background: #fff; border-top: #7B7A71 solid 1px;height:0.8rem;}
.huifu input[type="text"]{border: #ccc solid 0.01rem; float:left; width:4.9rem; padding: 0 0.1rem; height: 0.5rem; margin:0.15rem 0 0 0.5rem; font-size: 0.24rem;}
.huifu button{ background: #3879D9; color: #fff; width:1.2rem; float: right;height: 0.52rem; border: none; margin: 0.15rem 0.5rem 0 0; cursor: pointer;font-size: 0.24rem;}

</style> 
</head>
<body>
	<div class="gy_top"><img src="images/gy_banner.jpg"/></div>
	<div class="gy_title ico1">家滴帮 · 爱老计划</div>	
	<div class="gy_nr"><a href="####"><img src="images/gy_img1.jpg"></a></div>	
	<div class="gy_title ico2">公益组织 · 爱心接力</div>	
	<div class="gy_nr"><a href="####"><img src="images/gy_img2.jpg"></a></div>		
	<div class="gy_title ico3">加入我们</div>	
	<div class="gy_nr gy_jrwm">
		<div class="gy_jrwm_left"></div>
		<div class="gy_jrwm_nr ico4">jiadibang@126.com</div>
		<div class="gy_jrwm_nr ico5">0531-82423697</div>
		<div class="gy_jrwm_nr ico6">济南市市中区经一路96号铁路文化宫活动楼4层</div>
	</div>
	<div class="clear"></div>
	<script type="text/javascript" src="js/base.js"></script>
</body>
</html>