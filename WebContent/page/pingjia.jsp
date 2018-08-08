<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%@ taglib prefix="fn"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<title>商圈内容</title>
<link href="css/jj20180626.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/shoujisc.css">
</head>

<body style="padding-bottom:1.2rem;">
	<div class="sjsc-title2">
        <a href="javascript:window.location.href='orderList.html'" class="sjsc-t2r">
        	<img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/>
        </a>
    </div>
    <input type="hidden" id="goodId" name="goodId" value="${order.goods_id}">
	<ul class="pingjia">
		<li class="pingjia_nr">
			<div class="pingjia_nr_top">
			      <a href="#"><img src="${order.goods_img}" alt=""/></a>
				  <div class="pingjia_nr_bt"><h2>${order.goods_name}</h2><div class="pingjia_nr_num">x${order.goods_total_num}</div></div>
			</div>
			<div class="pingfen" style="margin-top:20px;">
				<div class="pingfen_txt">评分</div>
					<ul>
						<li class="active"></li>
						<li class="active"></li>
						<li class="active"></li>
						<li></li>
						<li></li>
					</ul>
			</div>
			<textarea style="margin-top:20px;" id="content" placeholder="请填写1~300字的评价"></textarea>
<!-- 			<div class="sc_img"> -->
<!-- 				<div class="sc_img_btn" onclick="path1.click()"></div> -->
<!-- 				<input type="text" name="upfile1" id="upfile1" style="display:none;"> -->
<!-- 				<input type="file" id="path1" style="display:none;" onchange="upfile1.value=this.value"> -->
<!-- 				<ul><li><img src="images/img01.jpg" alt=""/></li></ul> -->
<!-- 			</div> -->
			<div style="margin-top:20px;" class="pingjia_nr_sub"><input type="button" value="提交" onclick="add()"/></div>
		</li>
	</ul>

<div class="clear"></div>
<jsp:include page="footer4.jsp"></jsp:include>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script>
	$(function(){
		$(".pingfen ul li").click(function(){
			if($(this).hasClass("active")) {
				$(this).removeClass("active");
			} else {
				$(this).addClass("active");
			}
		});
		
		$(".sc_img ul li").click(function(){
			if($(this).children().length==1){
			$(this).append("<div class='remove_img' onclick='remove_img(this)'>删除</div>");
			};
		});
	});
	
	function remove_img(e){
		$(e).parent().remove();
	};
	
	function add() {
		var goodId = $("#goodId").val();
		var content = $("#content").val();
		var score = $(".pingfen ul .active").length * 20;
		if(content == null || content == "") {
			alert("请输入评价内容");
			return;
		}
		if(score == null || score=="") {
			alert("请为该商品打分");
			return;
		}
		$.ajax({
			url:"insertEval.html",
			type:"POST",
			data:{"goodId":goodId,"content":content,"score":score},
			dataType:"json",
			success:function(result) {
				if(result.success == true) {
					alert("添加评价成功");
				}
			},
			error:function() {
				
			}
		});
	}
</script>
</body>
</html>
