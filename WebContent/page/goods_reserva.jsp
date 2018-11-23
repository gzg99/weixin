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
</head>

<body>
<div class="sjsc-title2">
    <a href="index.html" class="sjsc-t2r"><img src="images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
</div>
<form action="" method="post" enctype="multipart/form-data">
    <div class="pd-20" style="width: 80%">
        订单状态：<input id="type" name="type" value="${serviceCartData.type}"><br/>
        联系人：<input id="user" name="name"><br/>
        电话：<input id="tel" name="tel"><br/>
        地址：<input id="adderss" name="address"><br/>
        服务项目：<input id="goodsNameId" name="goodsName" value="${serviceCartData.goodsName}"><br/>
        预约时间：<input id="time" name="reservaTime" value="${serviceCartData.reservaTime}"><br/>
        备注：<input id="remark" name="remark" value="${serviceCartData.remark}"><br/>
    </div>
</form>
<jsp:include page="footer5.jsp"></jsp:include>

</body>
</html>