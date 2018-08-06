<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title>订单</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>

<link rel="stylesheet" type="text/css" href="css/showTip.css">
<script type="text/javascript" src="js/showTip.js"></script>
<script type="text/javascript" src="js/area.js"></script>
<script type="text/javascript">
$(function(){
	showStr("province","city","area");
});
$(function(){
	init("province","city","area");
});
</script>

</head>

<body id="wrap">
	
    <div class="sjsc-title2">
        <a href="" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
     </div>
     
<!--      <dl class="drdd-info6"> -->
<!-- 		<ul class="xzdz-ul1"> -->
<!-- 	    	<li style="float:left;"> -->
<!-- 	            <input type="text" class="xzdz-ipt1 f-l" id="addr_user1" value="刘诗诗"/> -->
<!--           	</li> -->
<!-- 	    	<li style="margin-left:30%;"> -->
<!-- 	            <input type="text" class="xzdz-ipt1 f-l" id="addr_tel1" value="15090989098"/> -->
<!-- 	            <input type="text" class="xzdz-ipt1 f-l" id="area1" value="北京市昌平区昌平西山口"/>          -->
<!-- 	        </li> -->
<!--     	</ul> -->
<!--     </dl> -->
     
    <dl class="drdd-info6">
		<ul class="xzdz-ul1">
	    	<li>
	        	<p class="xzdz-p1 f-l">收货人</p>
	            <input type="text" placeholder="姓名" class="xzdz-ipt1 f-l" id="addr_user"/>
	            <div style="clear:both;"></div>            
	        </li>
	    	<li>
	        	<p class="xzdz-p1 f-l">手机号</p>
	            <input type="text" placeholder="11位手机号" class="xzdz-ipt1 f-l" id="addr_tel"/>
	            <div style="clear:both;"></div>            
	        </li>
	    	<li>
	        	<p class="xzdz-p1 f-l">详细地址</p>
	        	<p>
	        		<select id="province" name="province" lang="23" class="input-text" style="width: 20%"></select>
	    			<select id="city" name="city" lang="2" class="input-text" style="width: 20%"></select>
	    			<select id="area" name="area" lang="0" class="input-text" style="width: 20%"></select>
	    		</p>
	            <input type="text" placeholder="具体到街道门牌信息" class="xzdz-ipt1 f-l" id="addr_name" />
	            <div style="clear:both;"></div>            
	        </li>
    	</ul>
    </dl>
     
     <input type="hidden" value="${addr_id}" id='addr_id'>
     <input type="hidden" value="${goods_num}" id='tnum'>
     <input type="hidden" value="${tprice}" id='tprice'>
     <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
  	   	商品信息
     </div>
	     <input type="hidden" value="${goods.id}" name='goods_id'>
	     <input type="hidden" value="${goods.goodsName}" name='goods_name'>
	     <input type="hidden" value="${goods.goodsImg}" name='goods_img'>
	     <input type="hidden" value="${goods.goodsNum}" name='goods_num'>
	     <input type="hidden" value="${goods.goodsPrice}" name='goods_price'>
	     <input type="hidden" value="${goods.sellerId}" name='userId'>
    
	     <div class="drdd-info3">
	    	<div class="drdd-if3tu f-l">
	        	<a href="#"><img src="${goods.goodsImg}" style="width: 43px"></a>
	        </div>
	        <h3 class="drdd-h31 f-l"><a href="#">${goods.goodsName} x${tnum}</a></h3>
	        <p class="drdd-p1 f-r">￥${goods.goodsPrice}</p>
	        <div style="clear:both;"></div>
	     </div>
    
    <div style="font-size:12px;padding-left:5px; margin-top:13px;color: #A09E9E;display:none;" id="zitidian-str">
  	  选择自提点
    </div>
    <div class="drdd-info2" style="display:none" id="zitidian-choose" >
    <select id="area_area"  style="border: 0;width: 20%" onchange="choose_area()">
    <option value="-2">请选择区</option>
    <c:forEach items="${areaList}" var="areaList">
    <option value="${areaList.area_id }">${areaList.area_name }</option>
    </c:forEach>
    </select>
    <select id="area_addr"  style="border: 0;width:75%">
    <option value="-2">请选择自提点</option>
    </select>
    </div>
    
    <div style="font-size: 12px;padding-left:5px; margin-top:13px;color: #A09E9E">
  	  订单价格
    </div>
    <div class="drdd-info2">
    
    	<p class="p1 f-l">商品总价</p>
    	<p class="p2 f-r"><span id="">￥${price}</span></p>
        <br>
       
        <p class="p1 f-l">物流费用</p>
    	<p class="p2 f-r"><span id="wuliu">￥8</span></p>
        <br>
        
        <p class="p1 f-l">共<span id="tnumStr">${tnum }</span>件商品</p>
    	<p class="p2 f-r">总计：<span id="tpriceStr" style="color: #f60">￥${tprice}</span></p>
        <div style="clear:both;"></div>
    </div>
    <button class="drdd-btn" onclick="add()">确认付款</button>
    <script type="text/javascript">
    function fgt(){
    	var wuliu ='${fgt_price}';
    	var tprice= '${tprice}';
    	var fgt_price= $('#fgt_price').val();
    	if(fgt_price!=-2&&fgt_price!=-1){ //选择自提点
    		$('#zitidian-str').show();
    		$('#zitidian-choose').show();
    		wuliu=0;
    	}
    	else{
    		$('#zitidian-str').hide();
    		$('#zitidian-choose').hide();
    		fgt_price=0;
    	}
    
    	$('#wuliu').text('￥'+wuliu);
    	tprice = tprice - fgt_price;
   		$('#tpriceStr').text('￥'+tprice);
   		$('#tprice').val(tprice);
   		
    }
    function choose_area(){
    	var area =$('#area_area').val();
    	
    	$.ajax({
    		url:'areaJson.html',
    		type:'post',
    		data:'level='+area,
    		success :function(rs){
    			
    			$('#area_addr').html("");
    			$('#area_addr').append('<option value="-2">请选择自提点</option>');
    			var data = eval(rs);
    			$.each(data,function(i,item){
    				$('#area_addr').append('<option value='+data[i].area_name+'>'+data[i].area_name+'</option>');
    			})
    		}
    	});
    }
    </script>
    <script type="text/javascript">
    function add(){
    	var goods_id="";
    	var goods_name="";
    	var goods_img="";
    	var goods_price="";
    	var goods_num="";
    	var fgt_price= $('#fgt_price').val();
    	var goods_ids=$("input[name='goods_id']");
    	for (var i = 0; i < goods_ids.length; i++) {
			if (i == 0) {
				goods_id += goods_ids[i].value;
			} else {
				goods_id += ",-=" + goods_ids[i].value;
			}
		}
    	
    	var goods_names=$("input[name='goods_name']") ;
    	for (var i = 0; i < goods_names.length; i++) {
			if (i == 0) {
				goods_name += goods_names[i].value;
			} else {
				goods_name += ",-=" + goods_names[i].value;
			}
		}
    	var goods_imgs =$("input[name='goods_img']");
    	for (var i = 0; i < goods_imgs.length; i++) {
			if (i == 0) {
				goods_img += goods_imgs[i].value;
			} else {
				goods_img += ",-=" + goods_imgs[i].value;
			}
		}
    	var goods_prices=$("input[name='goods_price']") ;
    	for (var i = 0; i < goods_prices.length; i++) {
			if (i == 0) {
				goods_price += goods_prices[i].value;
			} else {
				goods_price += ",-=" + goods_prices[i].value;
			}
		}
    	var goods_nums =$("input[name='goods_num']");
    	for (var i = 0; i < goods_nums.length; i++) {
			if (i == 0) {
				goods_num += goods_nums[i].value;
			} else {
				goods_num += ",-=" + goods_nums[i].value;
			}
		}
    	var goods_total= $('#tprice').val();
    	var goods_total_num= $('#tnum').val();
    	
    	var addr_user=$('#addr_user').val();
    	var addr_tel=$('#addr_tel').val();
    	var addr_name=$('#addr_name').val();
    	if(typeof(addr_user)=='undefined'){
    		addr_user='';
    	}
    	if(typeof(addr_tel)=='undefined'){
    		addr_tel='';
    	}
    	if(typeof(addr_name)=='undefined'){
    		addr_name='';
    	}
    	
    	
    	if(fgt_price!=-1){
    		var area_area = $('#area_area').val();
    		var area_addr = $('#area_addr').val();
    		if(area_area==-2){
    			showTip('请选择区域');
        		return ;
    		}
			if(area_addr==-2){
				showTip('请选择自提点');
	    		return ;
    		}
    		receive=$('#area_area').find("option:selected").text()+area_addr;
    		
    	}
		
    	if(addr_user==''||addr_tel==''||addr_name==''){
    		showTip('请填写有效的收货地址');
    		return ;
    	}
     	var province =$('#province').val();
		if(province==''){
			showTip("收货地址填写有误，请重新编辑！");return;
		}
		var city =$('#city').val();
		if(city==''){
			showTip("收货地址填写有误，请重新编辑！");return;
		}
		var area =$('#area').val();
		if(area==''){
			showTip("收货地址填写有误，请重新编辑！");return;
		}

    	var addr_name=addr_user+' '+addr_tel+' '+province+' '+city+' '+ area+' '+addr_name;
    	$.ajax({
			url:'indentInsert.html',
			type:'post',
			data:'goods_id='+goods_id
			+'&goods_name='+goods_name
			+'&goods_img='+goods_img
			+'&goods_price='+goods_price
			+'&goods_num='+goods_total_num
			+'&goods_total='+goods_total
			+'&goods_total_num='+goods_total_num
			+'&addr_name='+addr_name,
			success:function(rs){
				var re = /^[0-9]+.?[0-9]*$/;    
				if(re.test(rs)&&rs!=0){
					
					window.location.href='payOrder.html?id='+rs;
				}else{
					alert("失败！");
				}
			}
		});

    }
    </script>

</body>
</html>
