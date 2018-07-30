<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商圈内容</title>
<link href="../../css/evaluate/jj20180626.css" rel="stylesheet" type="text/css">
</head>

<body style="padding-bottom:1.2rem; background: #E6E6E6;">

<ul class="pingjia">
	<form action="" method="post" id="addevaluate" enctype="multipart/form-data">

		<input type="hidden" name="grade" id="grade">
		<input type="hidden" name="commodityId" id="commodityId" value="fadfsadasretxd">
		<input type="hidden" name="userId" id="userId" value="dsdwe323">
		 <li class="pingjia_nr">
		      <div class="pingjia_nr_top">
			      <a href="#"><img src="images/shop_img04.jpg" alt=""/></a>
				  <div class="pingjia_nr_bt"><h2>此处为商品名称</h2><div class="pingjia_nr_num">x2</div></div>
<!-- 				  <p><span>商品属性</span><span>商品属性</span></p> -->
			 </div>
			 <div class="pingfen">
			     <div class="pingfen_txt">评分</div>
				 <ul>
					 <li class="active"></li>
					 <li class="active"></li>
					 <li class="active"></li>
					 <li class="active"></li>
					 <li class="active"></li>
				 </ul>
			 </div>
			 <textarea id="evaluateContent" placeholder="请填写1~300字的评价"></textarea>
			 <div class="sc_img">
<!-- 			 <input type="file" name="path1" id="path1"> -->
			     <div class="sc_img_btn" onclick="path1.click()"></div>
<!-- 				 <input type="text" name="upfile1" id="upfile1" style="display:none;"> -->
				 <input type="file" style="display:none;" id="path1" name="filePath" onchange="showImage();">
				 <ul><li><img id="preview" src="" alt=""/></li></ul>
			 </div>
			 <div class="pingjia_nr_sub"><input type="button" onclick="addevalclick();" value="提交"/></div>
		</li>
	</form>
</ul>

<div class="clear"></div>
<div class="menu"><img src="images/menu.png" width="100%" height="100%" alt=""/></div>
<script src="../../js/evaluate/base.js"></script>
<script src="../js/jquery-1.11.2.min.js"></script>	
<script>
$(function(){
	$("#grade").val("5");
	$(".pingfen ul li").click(function(){
		if($(this).attr("class").indexOf("active")!=-1){
			$(this).nextAll().removeClass("active");
			//alert(5-$(this).nextAll().length);
			$("#grade").val(5-$(this).nextAll().length);
		}else{
			$(this).addClass("active");
			$(this).prevAll().addClass("active");
			//alert(1+$(this).prevAll().length);
			$("#grade").val(1+$(this).prevAll().length);
		};
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
</script>

<script type="text/javascript">
    function showImage() {
        var docObj = document.getElementById("path1");
        
        var imgObjPreview = document.getElementById("preview");
        if (docObj.files && docObj.files[0]) {
            //火狐下，直接设img属性  
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '230px';
            imgObjPreview.style.height = '164px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();  
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式  
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
        } else {
            //IE下，使用滤镜  
           /*  docObj.select();
            var imgSrc = document.selection.createRange().text;
            var localImagId = document.getElementById("localImag");
            //必须设置初始大小  
            localImagId.style.width = "250px";
            localImagId.style.height = "200px";
            //图片异常的捕捉，防止用户修改后缀来伪造图片 
            try {
                localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                localImagId.filters
                        .item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
            } catch (e) {
                alert("您上传的图片格式不正确，请重新选择!");
                return false;
            }
            imgObjPreview.style.display = 'none';
            document.selection.empty(); */
        }
        return true;
    }
    
    
    function addevalclick() {
    	var formData = new FormData($("#addevaluate")[0]);
    	var filename = $("#path1").val();
    	var fileType = filename.substring(filename.indexOf("."), filename.length);
    	if (null != filename && filename != "") {
    		if(".jpg" != fileType && ".jpeg" != fileType && ".bmp" != fileType && ".gif" != fileType && ".png" != fileType  ) {
    			alertModelPop("请选择jpg,jpeg,bmp,gif,png格式的图片做为场景图片！");
    			return false;
    		}
    	}
    	var url = "toevaluate.html"
    	jQuery.ajax({
    		type : "POST",
    		url : encodeURI(url),
    		data : formData,
    		async : false,
    		cache : false,
    		contentType : false,
    		processData : false,
    		error : function(req, textStatus, errThrow){
    			var sessionstatus = req.getResponseHeader("sessionstatus");
    			if(sessionstatus){return;}// 防止超时闪现弹窗
    			alertModelPop("系统错误");
    			$("#addprizebut").removeAttr("disabled");
    		},
    		success : function(msg) {
    			closePop();
    			if (msg == "succ") {
    				alertModelPop("操作成功", function() {
    					window.location.href = prizeViewUrl;
    				});
    			} else {

    				alertModelPop("操作失败，请正确填写收件人信息");
    				$("#addprizebut").removeAttr("addprizebut");
    			}
    		}
    	});
    }
</script>
</body>
</html>