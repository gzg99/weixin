<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>社区</title>
<link href="../../css/evaluate/jj20180626.css" rel="stylesheet" type="text/css">
</head>

<body style="padding-bottom:1.2rem; background: #E6E6E6;">

<ul class="pingjia">
	<form action="" method="post" id="addmessage" enctype="multipart/form-data">

		<%-- <input type="hidden" name="grade" id="grade">
		<input type="hidden" name="commodityId" id="commodityId" value="${goods.id}">
		<input type="hidden" name="sellerId" id="sellerId" value="${goods.sellerId}"> --%>
		<li class="pingjia_nr">
		     <%--  <div class="pingjia_nr_top">
			      <a href="#"><img src="${goods.goodsImg }" alt=""/></a>
				  <div class="pingjia_nr_bt"><h2>${goods.goodsName }</h2>
				  
				  </div>
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
			 </div> --%>
			 <input id="title" name="title" placeholder="标题"></input><br/>
			 <textarea id="messageContent" name="messageContent" placeholder="说说你的现在想法"></textarea>
			 <div class="pingjia_nr_sub"><input type="button" onclick="addevalclick();" value="提交"/></div>
		</li>
	</form>
</ul>

<div class="clear"></div>
<script type="text/javascript" src="../../js/evaluate/base.js"></script>
<script type="text/javascript" src="../../main/lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>	
<script>
/* $(function(){
	$("#grade").val("5");
	$(".pingfen ul li").click(function(){
		if($(this).attr("class").indexOf("active")!=-1){
			$(this).nextAll().removeClass("active");
			$("#grade").val(5-$(this).nextAll().length);
		}else{
			$(this).addClass("active");
			$(this).prevAll().addClass("active");
			$("#grade").val(1+$(this).prevAll().length);
		};
	});
	$(".sc_img ul li").click(function(){
		if($(this).children().length==1){
		$(this).append("<div class='remove_img' onclick='remove_img(this)'>删除</div>");
		};
	});
}); */
/* function remove_img(e){
	$(e).parent().remove();
}; */
</script>

<script type="text/javascript">
   /*  function showImage() {
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
            docObj.select();
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
            document.selection.empty(); 
        }
        return true;
    }
     */
    
    function addevalclick() {
    	 
    	var formData = new FormData($("#addmessage")[0]);

    	var url = "insertSelective.html"
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
    			alert("系统错误");
    			$("#addprizebut").removeAttr("disabled");
    		},
    		success : function(msg) {
    			
    			if (msg == "1") {
    				alert('发表成功');
    				window.location.href='/weixin/page/listMessage.html';
    			} else {

    				layer.msg("操作失败");
    			}
    		}
    	});
    }
    
    /* function upload() {
		var fp = document.getElementById("file").value;
		//为了避免转义反斜杠出问题，这里将对其进行转换
		var re = /(\\+)/g;
		var fn = fp.replace(re, "#");
		//对路径字符串进行剪切截取
		var one = fn.split("#");
		//获取数组中最后一个，即文件名
		var two = one[one.length - 1];
		//再对文件名进行截取，以取得后缀名
		var three = two.split(".");
		//获取截取的最后一个字符串，即为后缀名
		var last = three[three.length - 1];
		last = last.toLowerCase();

		if (last != 'png' && last != 'jpg' && last != 'gif'
				&& last != 'PNG' && last != 'JPG' && last != 'GIF') {
			alert("请上传png、jpg或者gif文件！");
			return;
		}
		$.ajaxFileUpload({
			url : 'upload.html', //需要链接到服务器地址  
			secureuri : false,
			fileElementId : "file", //文件选择框的id属性  
			dataType : 'text', //服务器返回的格式，可以是json  
			success : function(rs) //相当于java中try语句块的用法  
			{	
				if (rs != "") {
					$('#img').html("");
					$('#img').append("<img src='"+rs+"' width='100' height='100'>");
					$('#pictureFirst').val(rs);
				} else {
					alert('失败');
					//document.getElementById("msg"+m[1]).value="失败"; 
				}
			},
			error : function(data, status, e) //相当于java中catch语句块的用法  
			{alert('失败');
				
			}
		});
	} */
</script>
</body>
</html>