<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<script type="text/javascript" src="lib/PIE_IE678.js"></script>
<![endif]-->
<link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="skin/default/skin.css" rel="stylesheet" type="text/css" id="skin" />
<link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->

<script type="text/javascript">
	var username ='${username}';
	if(username==''){
		window.location.href='login.jsp';
	}
</script>

<title>家滴帮-后台管理</title>
</head>
<body>
<header class="Hui-header cl"> <a class="Hui-logo l" title="H-ui.admin v2.3" href="main.html">&nbsp;&nbsp;&nbsp;家滴帮</a> <a class="Hui-logo-m l" href="/" title="H-ui.admin">H-ui</a> <span class="Hui-subtitle l">V1.1</span>
	
	<ul class="Hui-userbar">
		<li>超级管理员</li>
		
		<li id="Hui-skin" class="dropDown right dropDown_hover"><a href="javascript:;" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
			<ul class="dropDown-menu radius box-shadow">
				<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
				<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
				<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
				<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
				<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
				<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
			</ul>
		</li>
	</ul>
	<a aria-hidden="false" class="Hui-nav-toggle" href="#"></a> </header>
<aside class="Hui-aside">
	<input runat="server" id="divScrollValue" type="hidden" value="" />
	<div class="menu_dropdown bk_2" id="menu1">
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 自提点管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="areaList.html?status=1&level=0" href="javascript:void(0)">自提点管理</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-picture">
			<dt><i class="Hui-iconfont">&#xe613;</i> 商品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="ctgList.html?status=1" href="javascript:void(0)">分类查看</a></li>
					<li><a _href="goodsList.html?status=1" href="javascript:void(0)">商品查看</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-picture">
			<dt><i class="Hui-iconfont">&#xe613;</i> 安居卡管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="getCardOrderList.html?pageNo=1&pageSize=10" href="javascript:void(0)">安居卡查看</a></li>
					<li><a _href="layerCard/toLayerCardMain.html?pageNo=1&pageSize=10" href="javascript:void(0)">图层卡查看</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe620;</i> 广告管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="banList.html?status=1" href="javascript:void(0)"> 轮图查看</a></li>
					<li><a _href="adList.html" href="javascript:void(0)"> 广告查看</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 搜索管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="secList.html?status=1" href="javascript:;">搜索查看</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 运费管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="fgtList.html" href="javascript:;">运费查看</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 优惠券管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="cpsList.html" href="javascript:;">优惠券查看</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 订单管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="orderList.html" href="javascript:;">商品订单查看</a></li>
					<li><a _href="serviceCart/selServiceCartToWeb.html"  href="javascript:;">服务订单查看</a></li>
				</ul>
			</dd>
		</dl>
			<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 会员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="userList.html" href="javascript:;">会员查看</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 公众平台<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="buttonList.html" href="javascript:void(0)">菜单管理</a></li>
					<li><a _href="wxSettingList.html" href="javascript:void(0)">参数设置</a></li>
					<li><a _href="replyById.html?ct_key=subscribe" href="javascript:void(0)">关注回复</a></li>
					<li><a _href="reply_list.html" href="javascript:void(0)">回复事件</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="repwd.jsp" href="javascript:;">密码修改</a></li>
<!-- 					<li><a _href="role/listJdbRole.html" href="javascript:void(0)">角色管理</a></li> -->
				</ul>
			</dd>
		</dl>
		
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 商户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="sellerAreaList.html?currentPage=1" href="javascript:;">商圈管理</a></li>
					<li><a _href="sellerList.html" href="javascript:;">商家管理</a></li>
					<li><a _href="selStreetSellerList.html" href="javascript:;">临街店铺</a></li>

				</ul>
			</dd>
		</dl>
		
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 小区管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="getVillageList.html?pageNo=1&pageSize=10" href="javascript:;">小区管理</a></li>
				</ul>
			</dd>
		</dl>
		<!-- 公益 start -->
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i>公益<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="listBenfit.html" href="javascript:;">内容管理</a></li>
					<li><a _href="goodsBuildList.html?sellerId=${id }&pageNo=1&pageSize=10" href="javascript:;">敬老卡申请消息</a></li>
				</ul>
			</dd>
		</dl>
		<!-- 工人 start -->
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i>工人管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="getAllWorkerList.html?pageNo=1&pageSize=10" href="javascript:;">工人管理</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i>装修管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="decorationList.html?pageNo=1&pageSize=10" href="javascript:;">装修管理</a></li>
				</ul>
			</dd>
		</dl>
	</div>
	
	<div class="menu_dropdown bk_2" id="menu2">
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 订单管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="indent/indentList.html" href="javascript:void(0)">订单管理</a></li>
					<li><a _href="indent/general.html" href="javascript:void(0)">概况</a></li>
				</ul>
			</dd>
		</dl>
		
		<!-- 商家入驻后台模块 start -->
		<dl id="menu-comments">
			<dt><i class="Hui-iconfont">&#xe622;</i> 商品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="categoryEnterList.html?sellerId=${id }" href="javascript:;">分类管理</a></li>
					<li><a _href="goodsBuildList.html?sellerId=${id }&pageNo=1&pageSize=10" href="javascript:;">商品管理</a></li>
				</ul>
			</dd>
		</dl>
		
	</div>
</aside>
<div class="dislpayArrow"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active"><span title="家滴帮" data-href="#">家滴帮</span><em></em></li>
			</ul>
		</div>
		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
	</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe scrolling="yes" frameborder="0" src="welcome.jsp"></iframe>
		</div>
	</div>
</section>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script> 
<script type="text/javascript" src="js/H-ui.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script> 

<script type="text/javascript">
	/*资讯-添加*/
	function article_add(title,url){
		var index = layer.open({
			type: 2,
			title: title,
			content: url
		});
		layer.full(index);
	}
	/*图片-添加*/
	function picture_add(title,url){
		var index = layer.open({
			type: 2,
			title: title,
			content: url
		});
		layer.full(index);
	}
	/*产品-添加*/
	function product_add(title,url){
		var index = layer.open({
			type: 2,
			title: title,
			content: url
		});
		layer.full(index);
	}
	/*用户-添加*/
	function member_add(title,url,w,h){
		layer_show(title,url,w,h);
	}
</script> 

<script type="text/javascript">
	var username ='${username}';
	$(function() {
		if(username=="admin") {
			$("#menu1").show();
			$("#menu2").hide();
		}else{
			$("#menu1").hide();
			$("#menu2").show();
		}
	});
	
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
		var s = document.getElementsByTagName("script")[0]; 
		s.parentNode.insertBefore(hm, s)
	})();
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
</script>
</body>
</html>