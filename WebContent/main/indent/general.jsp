<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <title>商品概况</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="../../css/indent/base.css" type="text/css" rel="stylesheet"/>
	  <style type="text/css">
		  .lk_dd{width: 215px; height: 54px; line-height: 54px;  font-size:16px; text-align: center; background-color:#6B6B6B; color: #fff; display: block; float: left;}
		  .lk_dd span{ margin-left: 30px;    font-family: 'Arial Negreta', 'Arial Normal', 'Arial';font-weight: 700;    font-size: 24px;}
		  .lk_dd+a{ margin-left: 100px;}
		  .gjzb{ background: #F2F2F2; border: #E4E4E4 solid 1px; float: left; width: 528px;}
		  .gjzb_bt{ width: 100%;float: left;border-bottom: #E4E4E4 solid 1px;height:30px; line-height:30px; text-indent:10px;}
		  .gjzb_nr li{ float: left; width: 33.33% ; text-align: center; padding:24px 0;}
		  .gjzb_nr .num{color:#008000;    font-family: 'Arial Negreta', 'Arial Normal', 'Arial'; font-weight: 700;font-size: 16px; margin-top: 10px;}
		  .dmtp{ border-top: #ccc solid 1px; width:790px; padding-top: 30px;position: relative;}
		  .dmtp_bt{ width: 90px; float: left;}
		  .dmtp_nr{width: 700px;float: left; }
		  .lbslt+div{ margin-top:30px;}
		  .lbslt_bt span{color:#ccc;}
		  .lbslt ul{ padding-top: 12px;}
		  .lbslt li{ width: 48px; height: 48px; float: left; margin-right: 30px;}
		  .dmtp_nr_bj{color: #0000FF; cursor: pointer; position: absolute; right:212px; top:30px;}
	  </style>
  </head>
  <body>
      <div class="title">
	        <div class="title_box"><span style="margin-right:28px;">概</span>况</div>
		  <div class="clear"></div>
	  </div>
	  <div class="content">
	        <div class="row">
		         <a href="v4订单管理.html" class="lk_dd" target="_self">待发货订单<span>${generalSituation.shipments}</span></a>
				<a href="v4订单管理.html" class="lk_dd" target="_self">待处理维权<span>${generalSituation.safeguard}</span></a>
		    </div>
		   <div class="row">
		        <div class="gjzb">
			          <div class="gjzb_bt">昨日关键指标</div>
					  <ul class="gjzb_nr w100">
					    <li><a href="v4订单管理.html" target="_self"><p>订单数</p><p class="num">${generalSituation.ds}</p></a></li>
						  <li><a href="v4订单管理.html" target="_self"><p>成交商品数</p><p class="num">${generalSituation.num}</p></a></li>
						  <li><a href="v4订单管理.html" target="_self"><p>成交额</p><p class="num">¥${generalSituation.money}</p></a></li>
					  </ul>
			   </div>
		  </div>
		  <div class="row">
		       <div class="dmtp">
			          <div class="dmtp_bt">店铺图片</div>
				      <div class="dmtp_nr">
				          <div class="lbslt w100">
								  <div class="lbslt_bt w100">列表缩略图<span>（建议尺寸为640像素*640像素，大小不超过500k）</span></div>
								  <ul class="w100">
								     <li><img src="images/u148.png"></li>
								  </ul>
						      </div>
						  <div class="lbslt w100">
								  <div class="lbslt_bt w100">店铺装修图片<span>（建议尺寸为960像素*390像素，单张大小不超过500k，最多5张）</span></div>
								  <ul class="w100">
								     <li><img src="images/u148.png"></li>
								  </ul>
						  </div>
				     </div>
				     <div class="dmtp_nr hide">
				          <div class="lbslt w100">
								  <div class="lbslt_bt w100">列表缩略图<span>（建议尺寸为640像素*640像素，大小不超过500k）</span></div>
								  <ul class="w100">
								     <li><a href="####"><img src="images/u164.png"></a></li>
								  </ul>
						      </div>
						  <div class="lbslt w100">
								  <div class="lbslt_bt w100">店铺装修图片<span>（建议尺寸为960像素*390像素，单张大小不超过500k，最多5张）</span></div>
								  <ul class="w100">
								     <li><img src="images/u148.png"></li>
									 <li><a href="####"><img src="images/u164.png"></a></li>
								  </ul>
						  </div>
				     </div>
				     <a class="dmtp_nr_bj">编辑</a>
			   </div>
		  </div>
	  </div>
  </body>
</html>