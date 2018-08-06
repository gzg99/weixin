/**
 * 发货弹窗
 * 
 * @param id
 */
var deliver = "";
function deliverGoods(id) {
	$.ajax({
		url : 'selJdbIndent.html',
		type : 'post',
		data : 'id=' + id,
		async : false,
		success : function(rs) {
			var dataObj = eval("(" + rs + ")");// 转换为json对象
			$("#indent_nickname").html(dataObj[0].indentNickname);
			$("#indent_address").html(dataObj[0].indentAddress);
			$("#indent_phone").html(dataObj[0].indentPhone);
			$("#heddenID").val(dataObj[0].id);
			

			deliver = layer.open({
				type : 1,
				skin : 'layui-layer-rim', // 加上边框
				area : [ '300px', '480px' ], // 宽高
				content : $(".fh_box")
			});
		},
		error : function(jqXHR, textStatus, errorThrown) {
			/* 弹出jqXHR对象的信息 */
			alert(jqXHR.responseText);
			alert(jqXHR.status);
			alert(jqXHR.readyState);
			alert(jqXHR.statusText);
			/* 弹出其他两个参数的信息 */
			alert(textStatus);
			alert(errorThrown);
		}
	});
}

/**
 * 查看详情
 * @param id
 */
function detailsGoods(id) {
	$.ajax({
		url : 'selJdbIndent.html',
		type : 'post',
		data : 'id=' + id,
		async : false,
		success : function(rs) {
			var dataObj = eval("(" + rs + ")");// 转换为json对象
			/*$("#indent_nickname").html(dataObj[0].indentNickname);
			$("#indent_address").html(dataObj[0].indentAddress);
			$("#indent_phone").html(dataObj[0].indentPhone);
			$("#heddenID").val(dataObj[0].id);*/
			layout(dataObj);
			
			deliver = layer.open({
				type : 1,
				skin : 'layui-layer-rim', // 加上边框
				area : [ '850px', '600px' ], // 宽高
				content : $(".contentS")
			});
		},
		error : function(jqXHR, textStatus, errorThrown) {
			/* 弹出jqXHR对象的信息 */
			alert(jqXHR.responseText);
			alert(jqXHR.status);
			alert(jqXHR.readyState);
			alert(jqXHR.statusText);
			/* 弹出其他两个参数的信息 */
			alert(textStatus);
			alert(errorThrown);
		}
	});
}

/**
 * 关闭弹窗
 */
function closeDeliver() {
	layer.close(deliver);
}

/**
 * 发货
 */
function deliverSumbit() {
	var jdbIndent = {};
	jdbIndent.id = $('#heddenID').val();
	jdbIndent.indentNickname = $('#indent_nickname').html();
	jdbIndent.indentAddress = $('#indent_address').html();
	jdbIndent.indentPhone = $('#indent_phone').html();
	jdbIndent.indentIsLogistics = $("input[name='indentIsLogistics']:checked").val();
	jdbIndent.indentLogistics = $("#u1717_input").val();
	jdbIndent.indentLogisticsNumber = $("#indent_logistics_number").val();
	jdbIndent.indentState = $("#indent_state").val();

	$.ajax({
		url : 'deliverGood.html',
		type : 'post',
		data : jdbIndent,
		async : false,
		success : function(rs) {
			layer.msg('操作成功', function(){
				window.location.href = 'indentList.html';
			});
			
		},
		error : function(jqXHR, textStatus, errorThrown) {
			/* 弹出jqXHR对象的信息 */
			alert(jqXHR.responseText);
			alert(jqXHR.status);
			alert(jqXHR.readyState);
			alert(jqXHR.statusText);
			/* 弹出其他两个参数的信息 */
			alert(textStatus);
			alert(errorThrown);
		}
	});
}


/**
 * 订单详情页面整合
 * @param dataObj
 */
function layout(dataObj) {
	var str = '<div class="dd_xq w100"><p> <span style="margin-right: 50px;">';
	
	str += '订单编号：'+dataObj[0].indentNum + '</span>'
        + '<span>成交时间：'+dataObj[0].indentTime+'</span></p><p>订单总价：¥'
        + dataObj[0].indentMoney
        +'（运费 ¥'+dataObj[0].indentFee+'）</p><p> <span class="gray">'
	    +dataObj[0].indentState+'</span></p></div>'
	    +'<div class="dd_title w100">商品信息</div><div class="dd_nr w100">'
	    +'<img src="images/u148.png" class="sp_img">'
	    +'<p style="margin-top: 5px;">商品名称：'+ dataObj[0].commodityName+'</p>'
	    +'<p>商品单价： ¥'+dataObj[0].indentPrice+'</p>'
		+'<p>商品规格： </p>'
		+'<p>购买数量：'+dataObj[0].indentQuantity+' </p>'
		+'<p>实收金额： ¥'+dataObj[0].indentMoney+'</p></div><div class="dd_title w100">买家信息</div><div class="dd_nr w100">'
		+'<img src="images/u1994.png" class="mj_img">'
		+'<p>昵称：'
		+dataObj[0].indentNickname+'<a href="#" class="blue" style="margin-left: 50px;">鱼查看历史订单</a>'
		+'</p> <p style="margin-top: 20px;">收货地址：'
		+ dataObj[0].indentNickname,dataObj[0].indentPhone,dataObj[0].indentAddress
		+'</p></div>';
	$(".contentS").html(str);
		
}


function getPage(status) {
	window.location.href = 'indentList.html?currentPage=1' + '&indentState='+status;
	$(".dd_list_tab w100 ul li").addClass("active");
	return;
}


function getLately(lately) {
	window.location.href = 'indentList.html?currentPage=1' + '&lately='+lately;
	$(".dd_list_tab w100 ul li").addClass("active");
	return;
}