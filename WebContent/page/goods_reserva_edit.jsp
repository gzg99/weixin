<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>服务预约</title>
    <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript">
        function goodsReserva() {
            var goodsId = $("#goodsId").val();
            var oppendId = $("#oppendId").val();
            var goodsName = $("#goodsName").val();
            var reservaTime = $("#reservaTime").val();
            var remark = $("#remark").val();
            window.location.href="goodsReserva.html?goodsId="+goodsId+"&oppendId="+oppendId+
                    "&reservaTime="+reservaTime+"&remark="+remark;
        }
    </script>
</head>

<body>
<div class="sjsc-title2">
    <a href="index.html" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
</div>
<form action="" method="post" enctype="multipart/form-data">
    <div class="pd-20" style="width: 80%">
        <input type="hidden" id="oppendId" value="000000">
        <input type="hidden" id="goodsId" value="${goodsData.goods_id}">

        联系人：<input id="user" name="name" value="张三"><br/>
        电话：<input id="tel" name="name" value="18320101112"><br/>
        地址：<input id="adderss" name="name" value="海淀区"><br/>
        服务项目：<input id="goodsName" name="goods_name" value="${goodsData.goods_name}"><br/>
        预约时间：<input id="reservaTime" name="telPhone" value="2018-11-23"><br/>
        备注：<input id="remark" name="remark" value="预约服务编辑页面"><br/>
    </div>
    <div class="col-10 col-offset-2">
        <button type="button" onclick="goodsReserva();">
            <i class="Hui-iconfont">&#xe632;</i> 提交
        </button>
        <button onClick="history.go(-1);" type="button">&nbsp;&nbsp;返回&nbsp;&nbsp;</button>
    </div>
</form>
<jsp:include page="footer5.jsp"></jsp:include>

</body>
</html>