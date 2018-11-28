<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>服务预约</title>
    <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
    <script type="text/javascript" src="../js/jquery.js"></script>
</head>

<body>
<div class="body">
    <div class="sjsc-title2">
        <a href="javascript:history.back();" class="sjsc-t2r"><img src="../images/back.png" alt=""
                                                      style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    </div>
    <div class="sjsc-title2">
        <a href="index.html" class="sjsc-t2r"><img src="images/back.png" alt=""
                                                   style="width:20px;height: 20px;padding-top: 11px;padding-left: 5px"/></a>
    </div>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="pd-20" style="width: 80%">
            联系人：<input id="user" name="name" value="${addressData.addr_user}"><br/>
            电话：<input id="tel" name="tel" value="${addressData.addr_tel}"><br/>
            地址：<input id="adderss" name="address" value="${addressData.addr_name}"><br/>
        </div><br/>
        <div class="pd-20" style="width: 80%">
            服务项目：<input id="goodsNameId" name="goodsName" value="${serviceCartData.goodsName}"><br/>
            预约时间：<input id="time" name="reservaTime" value="${serviceCartData.reservaTime}"><br/>
            备注：<input id="remark" name="remark" value="${serviceCartData.remark}"><br/>
        </div><br/>
        <div class="pd-20" style="width: 80%">
            工匠：<input id="gong" name="goodsName" value="${workerData.name}"><br/>
            工号：<input id="code" name="reservaTime" value="${workerData.id}"><br/>
            手机号：<input id="phone" name="remark" value="${workerData.telPhone}"><br/>
        </div><br/>
        <div id="payDivId" style="display: none;">
            服务金额：<input id="goodsTotalId" name="goodsTotal" value=""/>
            <div class="col-10 col-offset-2">
                <button onClick="serviceGoodsPayCommit()" id="butt"
                        class="btn btn-primary radius" type="button">
                    <i class="Hui-iconfont">&#xe632;</i>立即支付
                </button>
                <button onClick="history.go(-1);" class="btn btn-default radius"
                        type="button">&nbsp;&nbsp;线下支付&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>