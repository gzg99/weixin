<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>订单管理</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link href="../../css/indent/base.css" type="text/css" rel="stylesheet" />
<style type="text/css">
	  .contentS { padding: 30px 0 0 30px; width:820px;}
      .dd_xq{ line-height:28px; position:relative;}
	  .dd_xq button{    width: 119px;height: 32px; background-color:#00CC33;border-radius: 5px; color:#fff; border:none; position:absolute; right:100px; top:30px;}
	  .dd_nr{ padding:20px 0; line-height:28px;}
	  .sp_img{ width:150px; height:150px; float:left; margin-right:40px;}
	  .mj_img{ width:75px; height:75px; float:left; margin-right:30px;}
</style>
	  
<style type="text/css">
.dd {
	width: 640px;
	float: left;
}

.dd_input {
	width: 320px;
	float: left;
	line-height: 26px;
	padding-bottom: 30px;
}

.dd_input_txt {
	float: left;
	width: 80px;
}

.dd_input input {
	height: 24px;
	line-height: 24px;
	width: 130px;
	padding: 0 5px;
	float: left;
	border: #A9A9A9 solid 1px;
}

.dd button {
	width: 119px;
	height: 32px;
	background-color: rgba(0, 204, 51, 1);
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
	margin-left: 80px;
}

.dd_xdrq_sj {
	border: #999 solid 1px;
	width: 640px;
	float: left;
	width: 299px;
}

.dd_xdrq_sj li {
	width: 99px;
	float: left;
	border-right: #999 solid 1px;
	text-align: center;
	height: 28px;
	line-height: 28px;
	cursor: pointer;
}

.dd_list {
	border: #ccc solid 1px;
	background: #F2F2F2;
	width: 818px;
	margin-top: -20px;
	float: left;
}

.dd_list_tab {
	border-bottom: #ccc solid 1px;
	height: 44px;
}

.dd_list_tab ul {
	border: #E4E4E4 solid 1px;
	float: left;
	width: 449px;
	margin: 7px 0 0 10px;
	height: 30px;
}

.dd_list_tab ul li {
	width: 89px;
	float: left;
	line-height: 30px;
	border-right: #E4E4E4 solid 1px;
	text-align: center;
	cursor: pointer;
}

.dd_list_tab ul .active {
	background: #00CC33;
	color: #fff;
}

.dd_list_xzbg {
	height: 36px;
	border-bottom: #ccc solid 1px;
}

.xzbg {
	margin-right: 20px;
	color: #0000FF;
	line-height: 36px;
}

.fh {
	width: 89px;
	text-align: center;
	font-weight: 700;
	color: #999;
	background: #E4E4E4;
	height: 30px;
	line-height: 30px;
	margin: 3px 0 0 11px;
}

.dd_list_table table tr td {
	border-bottom: #ccc solid 1px;
}

.ckbox {
	margin-top: 5px;
}

.ckbox input {
	float: left;
	margin: 5px 5px 0 10px;
}

.ckbox_txt {
	float: left;
	font-size: 13px;
}

.sj {
	color: #999;
	text-indent: 88px;
	font-size: 13px;
}

.sp {
	line-height: 48px;
	margin-bottom: 10px;
}

.sp img {
	float: left;
	width: 48px;
	height: 48px;
	margin: 0 20px 0 30px;
}

.page {
	text-align: right;
	padding: 50px 10px;
	width: 96%;
	float: left;
}

.page span {
	margin: 0 3px;
}

.page .active {
	background: none;
}
</style>

</head>
<body>
	<div class="title">
		<div class="title_box">订单管理</div>
		<div class="clear"></div>
	</div>
	<div class="content">
		<form action="indentList.html" method="post" id="formIndentList">
			<div class="row">
				<div class="dd">
					<div class="dd_input">
						<div class="dd_input_txt">订单编号</div>
						<input type="text" name="indentNum">
					</div>
					<div class="dd_input">
						<div class="dd_input_txt">买家姓名</div>
						<input type="text" name="indentNickname">
					</div>
					<div class="dd_input">
						<div class="dd_input_txt">商品名称</div>
						<input type="text" name="commodityName">
					</div>
					<button type="submit">搜索</button>
					<div class="dd_xdrq w100">
						<div class="dd_input_txt">下单日期</div>
						<ul class="dd_xdrq_sj">
							<li class="active">最近7日</li>
							<li>最近15日</li>
							<li style="border: none;">最近30日</li>
						</ul>
					</div>
				</div>
			</div>
		</form>
		<div class="row">
			<div class="dd_list">
				<div class="dd_list_tab w100">
					<ul>
						<li class="active">全部订单</li>
						<li>待发货</li>
						<li>已发货</li>
						<li>维权中</li>
						<li style="border: none;">维权完成</li>
					</ul>
				</div>
				<div class="dd_list_xzbg w100">
					<a href="###" class="left fh">发货</a> <a href="###"
						class="right xzbg ">下载表格</a>
				</div>
				<div class="dd_list_table w100">
					<table width="818" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="280" height="40"><div class="ckbox w100">
									<input name="" type="checkbox">
									<div class="ckbox_txt">商品</div>
								</div></td>
							<td align="center">单价/数量</td>
							<td align="center">总金额</td>
							<td align="center">买家昵称</td>
							<td align="center">交易状态</td>
							<td align="center">操作</td>
						</tr>
						<c:forEach items="${indentList}" var="indent" varStatus="s">
							<tr>
								<td>
									<div class="ckbox w100">
										<input name="" type="checkbox">
										<div class="ckbox_txt">订单编号 ${indent.indentNum}</div>
									</div>
									<div class="sj w100">${indent.indentTime}</div>
									<div class="sp w100">
										<img src="images/u148.png" />
										<p>${indent.commodityName }</p>
									</div>
								</td>
								<td align="center">¥ ${indent.indentPrice}<br>x
									${indent.indentQuantity }
								</td>
								<td align="center">¥ ${indent.indentMoney}</td>
								<td align="center">${indent.indentNickname}</td>
								<td align="center"><span class="gray">${indent.indentState}</span></td>
								<td align="center"><c:if
										test="${indent.indentState == '待发货'}">
										<a class="blue" href="#" onclick="deliverGoods('${indent.id}')">发货</a>
										<br>
									</c:if> <a class="blue" href="#" onclick="detailsGoods('${indent.id}')">订单详情</a>
								</td>
							</tr>
						</c:forEach>


						<tr>
							<td colspan="6">
								<div class="page">
									<span> <a href="#">共${total}条</a>
									</span> <span> <a href="#">当前第${currentPage}页</a>
									</span> <span> <a href="#" onclick="fpage('indentList.html')">首页</a>
									</span> <span> <a href="#" onclick="upPage('indentList.html')">上一页</a>
									</span> <span> <a href="#"
										onclick="downPage('indentList.html')">下一页</a>
									</span> <span> <a href="#" onclick="epage('indentList.html')">末页</a>
									</span>
								</div>
							</td>
						</tr>
					</table>

				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var currentPage = '${currentPage}';
		var totalPage = '${totalPage}';
	</script>
	<script type="text/javascript" src="../../js/page.js"></script>
	<script type="text/javascript" src="../../js/indent/indentList.js"></script>
	<script src="../js/jquery-1.11.2.min.js"></script>
	<script src="../../js/json2.js"></script>
	<script type="text/javascript" src="../lib/layer/1.9.3/layer.js"></script>
</body>
<div class="fh_box" style="display: none;">
	<input type="hidden" id="heddenID" /> <input type="hidden"
		id="indent_state" value="2" />
	<div class="w100" id="indent_nickname"></div>
	<div class="w100" id="indent_address"></div>
	<div class="w100" id="indent_phone"></div>
	<div class="wl_tab w100">
		<div class="wl_tab_ck">
			<input type="radio" name="indentIsLogistics" value="1"
				checked="checked">需要物流
		</div>
		<div class="wl_tab_ck">
			<input type="radio" value="2" name="indentIsLogistics">不需要物流
		</div>
	</div>
	<div class="wl_nr w100">
		<div class=" w100">物流公司</div>
		<div class=" w100">
			<select id="u1717_input" name="indent_logistics">
				<option value="申通快递">申通快递</option>
				<option value="顺丰快递">顺丰快递</option>
				<option value="EMS">EMS</option>
				<option value="天天快递">天天快递</option>
			</select>
		</div>
		<div class=" w100">运单号</div>
		<div class=" w100">
			<input type="text" id="indent_logistics_number"
				name="indent_logistics_number">
		</div>
		<div class="red w100 wl_nr_ts">请正确填写运单号</div>
	</div>
	<div class="wl_no w100 hide">确认此订单无需物流且已经发货吗？</div>
	<div class="wl_btn w100">
		<button type="button" class="wl_btn1" onclick="deliverSumbit()">确定</button>
		<button type="button" class="wl_btn2" onclick="closeDeliver()">取消</button>
	</div>
	<div class="clear"></div>
</div>


<div class="contentS" style="display: none;">
	<div class="dd_xq w100">
		<p>
			<span style="margin-right: 50px;">订单编号：135423436352764575684</span>
            <span>成交时间：2018-06-1 12:33</span>
		</p>
		<p>订单总价：¥ 809.9（运费 ¥10.00）</p>
		<p>
			<span class="gray">待发货</span>
		</p>
	</div>
	<div class="dd_title w100">商品信息</div>
	<div class="dd_nr w100">
		<img src="images/u148.png" class="sp_img">
		<p style="margin-top: 5px;">商品名称： 亚克力矮脚凳</p>
		<p>商品单价： ¥799.9</p>
		<p>商品规格： 红色，大</p>
		<p>购买数量： 1</p>
		<p>实收金额： ¥799.9</p>
	</div>
	<div class="dd_title w100">买家信息</div>
	<div class="dd_nr w100">
		<img src="images/u1994.png" class="mj_img">
		<p>
			昵称：小鲤<a href="#" class="blue" style="margin-left: 50px;">鱼查看历史订单</a>
		</p>
		<p style="margin-top: 20px;">收货地址：小鲤鱼，15678687236，北京市海淀区清华西路北大东门101,100091</p>
	</div>
</div>

</html>
