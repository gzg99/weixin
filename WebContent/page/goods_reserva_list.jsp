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
    <script type="text/javascript">
        // 所有订单
        function serviceAll() {
            $("#all").show();
            $("#fulfil").hide();
            $("#undone").hide();
        }
        // 完成订单
        function serviceFulfil() {
            $("#all").hide();
            $("#fulfil").show();
            $("#undone").hide();
        }
        // 未完成订单
        function serviceUndone() {
            $("#all").hide();
            $("#fulfil").hide();
            $("#undone").show();
        }
    </script>
</head>

<body>
<div class="sjsc-title2">
    <a href="javascript:history.back();" class="sjsc-t2r">
        <img src="../images/back.png" alt="" style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/>
    </a>
</div>
<ul class="quanbu-title2">
    <li class="current" style="display: inline;"><a onclick="serviceAll();">全部</a></li>
    <li style="display: inline;"><a onclick="serviceFulfil();">已完成</a></li>
    <li style="display: inline;"><a onclick="serviceUndone();">未完成</a></li>
    <div style="clear:both;"></div>
</ul>

<div class="my-dd" id="all" style="display:block;">
    所有<br/>
    <c:forEach items="${serviceCartList}" var="list" varStatus="s">
        <a href="selServiceOrder.html?id=${list.id}">
            <input value="${list.goodsName}"/><br/>
        </a>
    </c:forEach>
</div>

<div class="my-dd" id="fulfil" style="display:none;">
    完成<br/>
    <c:forEach items="${serviceCartList}" var="list" varStatus="s">
        <c:if test="${list.type == 3}">
            <a href="selServiceOrder.html?id=${list.id}">
                <input value="${list.goodsName}"/><br/>
            </a>
        </c:if>
    </c:forEach>
</div>

<div class="my-dd" id="undone" style="display:none;">
    未完成<br/>
    <c:forEach items="${serviceCartList}" var="list" varStatus="s">
        <c:if test="${list.type != 3}">
            <a href="selServiceOrder.html?id=${list.id}">
                <input value="${list.goodsName}"/><br/>
            </a>
        </c:if>
    </c:forEach>
</div>
</body>
</html>
