<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>服务订单</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
    <script type="text/javascript" src="../js/jquery.js"></script>

</head>

<body>
<div class="sjsc-title2">
    <a href="javascript:history.back();" class="sjsc-t2r">
        <img src="../images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/>
    </a>
</div>

<div class="my-dd" id="all" style="display:block;">
    <h1>我的收藏</h1>
    <c:forEach items="${goodses}" var="list" varStatus="s">
        <a href="../goodsListById.html?goods_id=${list.goods_id}">
            <input value="${list.goods_name}"/><br/>
        </a>
    </c:forEach>
</div>
</body>
</html>
