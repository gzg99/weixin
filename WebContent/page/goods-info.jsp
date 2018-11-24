<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <title>商品详情</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/woxiangyao.js"></script>
    <script type="text/javascript" src="js/TouchSlide.1.1.js"></script>
    <%--<script type="text/javascript" src="js/foot.js"></script>--%>
    <link href="css/iconfont20180818.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/showTip.css">
    <script type="text/javascript" src="js/showTip.js"></script>

    <style type="text/css">
        .shop_index_pj_bt {
            float: left;
            padding-left: 10px;
        }

        .shop_index_pj_right {
            float: right;
            display: block;
            margin-right: 10px;
        }

        .shop_index_pj_right i {
            font-size: 18px;
            float: right;
            color: #999;
        }

        .title {
            padding: 0 2%;
            height: 44px;
            line-height: 44px;
            background: #ffffff;
            font-size: 16px;
            color: #f29133;
        }

        .title-left {
            float: left;
            padding-top: 11px;
        }

        .title-right {
            float: right;
            padding-top: 11px;
        }
    </style>

</head>

<body id="wrap">
<div class="title" style="border-bottom:1px solid rgba(204, 204, 204, 0.15);text-align:center;">
    <div class="title-left"><a href="javascript:history.back();"><img src="images/back.png" alt=""></a></div>
    <div class="title-right"><a href="secList.html"><img src="images/sjsc-13.png" alt=""></a></div>
</div>
<div class="detailDiv">
    <c:forEach items="${list}" var="list">
        <input type="hidden" value="${list.goods_id}" id="goods_id">
        <input type="hidden" value="${list.goods_name}" id="goods_name">
        <input type="hidden" value="${list.goods_img}" id="goods_img">
        <input type="hidden" value="${list.goods_spe}" id="goods_spe">
        <input type="hidden" value="${list.goods_price}" id="goods_price">
        <input type="hidden" value="${list.ctg_id}" id="ctg_id">
        <input type="hidden" value="${list.collection}" id="collection">

        <div class="banner1">
            <ul class="sy-ul">
                <li><a href="#"><img src="${list.goods_img}"></a></li>
            </ul>
            <ol class="sy-ol">
            </ol>
        </div>
        <div class="spxq-info1">
            <ul class="spxq-ul1">
                <li>
                    <h3><a href="#">${list.goods_name}</a></h3>
                    <div>
                        <p class="spxq-p1" style="font-size: 12px;line-height:35px;"><span>${list.goods_spe}</span></p>
                        <p class="spxq-p1"><font style="font-size: 9px;color: #f60">￥</font><span
                                style="color: #f60">${list.goods_price}</span></p>

                        <div style="clear:both;"></div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="shop_index_pj" onclick="window.location.href='showjdbEvaluate.html?commodityId=${list.goods_id}'">
            <div class="shop_index_pj_bt">商品评价</div>
            <a href="###" class="shop_index_pj_right"><i class="iconfont icon-you"></i></a>
        </div>
        <div class="spxq-info2">
            <div class="spxq-box">
                <div class="spxq-k spxq-k1">
                        ${list.goods_detail}
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<div class="spxq-info3" id="commodityId">
    <a onclick="goodsCollection();" class="if3-aa f-l">
        <img id="yes" src="images/notCol.png">
        <img id="no" src="images/orderCar.png"/>
    </a>
    <a href="cartList.html" class="if3-aa f-l"><img src="images/orderCar.png"/><span
            style="position:fixed;color: #f29133" id="cart_num">${cart_num }</span></a>
    <button class="if3-btnn1 if3-btn1 f-l"
            onclick="window.location.href='goodsOrderSure.html?goods_id=${goods_id}&goods_num=1'">立即购买
    </button>
    <button class="if3-btnn1 if3-btn2 f-l" onclick="add()">加入购物车</button>
</div>

<div class="spxq-info3" id="serveId">
    <a onclick="goodsCollection();" class="if3-aa f-l">
        <img id="y" src="images/notCol.png">
        <img id="n" src="images/orderCar.png"/>
    </a>
    <button class="if3-btnn1 if3-btn1 f-l"
            onclick="window.location.href='toGoodsReserva.html?goodsId=${goods_id}'">预约服务
    </button>
</div>
<script type="text/javascript">
    $(function () {
        // 服务商品和实物商品页面展示区别
        if ($("#ctg_id").val() == "42") {
            $("#serveId").hide();
        } else {
            $("#commodityId").hide();
        }

        //收藏相关
        var collection = $("#collection").val();
        if ($("#ctg_id").val() == "42") {
            if(collection ==  "1"){
                $("#no").hide();
            }else{
                $("#yes").hide();
            }
        }else{
            if(collection ==  "1"){
                $("#n").hide();
            }else{
                $("#y").hide();
            }
        }
    });

    function add() {
        var goods_id = $('#goods_id').val();

        var goods_name = $('#goods_name').val();
        var goods_img = $('#goods_img').val();
        var goods_spe = $('#goods_spe').val();
        var goods_price = $('#goods_price').val();

        $.ajax({
            url: 'cartInsert.html',
            type: 'post',
            data: 'goods_id=' + goods_id + '&goods_name=' + goods_name + '&goods_img=' + goods_img + '&goods_price=' + goods_price + '&goods_num=1' + '&goods_spe=' + goods_spe,
            success: function (rs) {
                var data = eval('(' + rs + ')');
                if (data.rs_code == 1) {
                    $('#cart_num').text(data.cart_num);
                    showTip("已加入购物车！");
                    //					location.reload();
                } else if (data.rs_code == 1005) {
                    showTip("登录已失效，重新登录中，请稍后...");
                    setTimeout('window.location.href=history.go(-1)', 2000);
                } else {
                    showTip("加入购物车失败！");
                }
            }
        });
    }

    function buy() {
        var goods_id = $('#goods_id').val();

        $.ajax({
            url: 'goodsOrder.html',
            type: 'post',
            data: 'goods_id=' + goods_id,
            success: function (rs) {
                if (rs == 1) {
                    showTip("已加入购物车！");
                    //location.reload();
                } else {
                    showTip("加入购物车失败！");
                }
            }
        })
    }

    /**
     * 商品收藏
     */
    function goodsCollection() {
        var goods_id = $('#goods_id').val();
        var collection = $('#collection').val();
        var url = "goodsCollection.html";
        var id = $("#id").val();
        $.ajax({
            url : encodeURI(url),
            type : 'POST',
            data : {
                "goodsId":goods_id,
                "collection":collection
            },
            success : function(rs) {
                if (rs == 1) {
                    window.location.href = 'goodsListById.html?goods_id='+goods_id;
                }
            }
        });
    }

</script>

</body>
</html>
