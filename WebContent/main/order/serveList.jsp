<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,member-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="../lib/html5.js"></script>
    <script type="text/javascript" src="../lib/respond.min.js"></script>
    <script type="text/javascript" src="../lib/PIE_IE678.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="../css/person.css">
    <link href="../css/H-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="../css/H-ui.admin.css" rel="stylesheet" type="text/css"/>
    <link href="../lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet"
          type="text/css"/>
    <!--[if IE 6]>
    <script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
    <title>服务订单查看</title>
</head>
<body style="/* width: 1720px */">
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
    查看 <a class="btn btn-success radius r mr-20"
          style="line-height: 1.6em; margin-top: 3px"
          href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<br>
<div class="text-c">
    <input type="text" value="${start_time}"
           id="start_time" class="input-text" onfocus="WdatePicker()"
           style="width:15%;" placeholder="请选择开始时间">
    <input type="text" value="${end_time}" onfocus="WdatePicker()"
           id="end_time" class="input-text"
           style="width: 15%;" placeholder="请选择结束时间">
    <input type="text" value="${goods_name}"
           id="goods_name" class="input-text"
           style="width: 15%;" placeholder="请输入商品名称">
    <button type="button" onclick="search()"
            class="btn btn-success radius" id="b1" name="">
        <i class="Hui-iconfont">&#xe665;</i> 查询
    </button>


    <script type="text/javascript">
        function search() {
            var type = '${type}';
            var start_time = $('#start_time').val();
            var end_time = $('#end_time').val();
            var goods_name = $('#goods_name').val();
            window.location.href = 'orderList.html?start_time=' + encodeURIComponent(encodeURIComponent(start_time))
                    + '&end_time=' + encodeURIComponent(encodeURIComponent(end_time))
                    + '&goods_name=' + encodeURIComponent(encodeURIComponent(goods_name))
                    + '&type=' + type;
        }
    </script>
</div>
<div class="pd-20">
    <div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
				<a href="../serviceCart/selServiceCartToWeb.html" class="btn btn-primary radius">
				<i class="Hui-iconfont"></i>全部
				</a>
				<a href="../serviceCart/selServiceCartToWeb.html?type=3" class="btn btn-primary radius">
					<i class="Hui-iconfont"></i>已完成
				</a>
				<a href="../serviceCart/selServiceCartToWeb.html?type=0" class="btn btn-primary radius">
					<i class="Hui-iconfont"></i>未完成
				</a>
			</span>
    </div>
    <div class="mt-20">
        <table
                class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
            <tr class="text-c">
                <th width="20%">服务商品</th>
                <th width="15%">支付金额</th>
                <th width="25%">备注</th>
                <th width="15%">状态</th>
                <th width="15%">订单日期</th>
                <th width="10%">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${jdbServiceCarts}" var="list" varStatus="s">
                <input type="hidden" id="typeId" value="${list.type }"/>
                <td align="left">${list.goodsName}<br>
                <td>${list.goodsTotal}</td>
                <td>${list.remark}</td>
                <td>
                    <c:if test="${list.type==1 }">等待接单</c:if>
                    <c:if test="${list.type==2 }">接单成功</c:if>
                    <c:if test="${list.type==3 }">订单完成</c:if>
                </td>
                <td>${list.reservaTime}</td>
                <td>
                    <a href="javascript:;" onclick="del('${list.id}')">删除</a>
                </td>
                </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
        <div class="panel-foot text-center">
            <ul class="pagination">
                <li><a href="javascript:;">共${total}条</a></li>
            </ul>
            <ul class="pagination">
                <li><a href="javascript:;">当前第${currentNum}页</a></li>
            </ul>

            <ul class="pagination">
                <li><a href="javascript:;" onclick="fpage()">首页</a></li>
            </ul>
            <ul class="pagination">
                <li><a href="javascript:;" onclick="upPage()">上一页</a></li>
            </ul>

            <ul class="pagination">
                <li><a href="javascript:;" onclick="downPage()">下一页</a></li>
            </ul>
            <ul class="pagination">
                <li><a href="javascript:;" onclick="epage()">末页</a></li>
            </ul>
            <ul class="pagination" style="width:4%;">
                <li><input type="tel" class="input-text" id="seastr"></li>
            </ul>
            <ul class="pagination">
                <li><a href="javascript:;" onclick="spage()">go</a></li>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    function del(id) {
        var type = $("#typeId").val();
        if (type != 3) {
            alert("订单未完成不能删除！");
        } else {
            var b = confirm('确定删除？');
            if (!b) {
                return;
            }
            $.ajax({
                url: '../serviceCart/delServiceOrder.html',
                type: 'post',
                data: 'id=' + id,
                success: function (rs) {
                    if (rs == 1) {
                        alert("成功！");
                        location.reload();
                    } else {
                        alert("失败！");
                    }
                }
            })
        }
    }
    function send(order_id) {

        $.ajax({
            url: 'orderUptype.html',
            type: 'post',
            data: 'order_id=' + order_id + '&type=2',
            success: function (rs) {
                if (rs == 1) {
                    alert("成功！");
                    location.reload();
                } else {
                    alert("失败！");
                }
            }
        })
    }
    var start_time = '${start_time}';
    var end_time = '${end_time}';
    var goods_name = '${goods_name}';
    var currentNum = '${currentNum}';
    var totalPage = '${totalPage}';
    var type = '${type}';
    function upPage() {
        if (currentNum > 1) {
            window.location.href = 'orderList.html?currentNum='
                    + (parseInt(currentNum) - 1) + '&type=' + type + '&start_time=' + encodeURIComponent(encodeURIComponent(start_time))
                    + '&end_time=' + encodeURIComponent(encodeURIComponent(end_time)) + '&ctg_name=' + encodeURIComponent(encodeURIComponent(ctg_name))
                    + '&goods_name=' + encodeURIComponent(encodeURIComponent(goods_name)) + '&addr_name=' + encodeURIComponent(encodeURIComponent(addr_name));
            return;
        }
    }
    function downPage() {
        if (parseInt(currentNum) < parseInt(totalPage)) {
            window.location.href = 'orderList.html?currentNum='
                    + (parseInt(currentNum) + 1) + '&type=' + type + '&start_time=' + encodeURIComponent(encodeURIComponent(start_time))
                    + '&end_time=' + encodeURIComponent(encodeURIComponent(end_time)) + '&ctg_name=' + encodeURIComponent(encodeURIComponent(ctg_name))
                    + '&goods_name=' + encodeURIComponent(encodeURIComponent(goods_name)) + '&addr_name=' + encodeURIComponent(encodeURIComponent(addr_name));
            ;
            return;
        }
    }
    function fpage() {
        window.location.href = 'orderList.html?currentNum=1' + '&type=' + type + '&start_time=' + encodeURIComponent(encodeURIComponent(start_time))
                + '&end_time=' + encodeURIComponent(encodeURIComponent(end_time)) + '&ctg_name=' + encodeURIComponent(encodeURIComponent(ctg_name))
                + '&goods_name=' + encodeURIComponent(encodeURIComponent(goods_name)) + '&addr_name=' + encodeURIComponent(encodeURIComponent(addr_name));
        return;
    }
    function epage() {
        window.location.href = 'orderList.html?currentNum=' + totalPage + '&type=' + type + '&start_time=' + encodeURIComponent(encodeURIComponent(start_time))
                + '&end_time=' + encodeURIComponent(encodeURIComponent(end_time)) + '&ctg_name=' + encodeURIComponent(encodeURIComponent(ctg_name))
                + '&goods_name=' + encodeURIComponent(encodeURIComponent(goods_name)) + '&addr_name=' + encodeURIComponent(encodeURIComponent(addr_name));
        return;
    }
    function spage() {
        var seastr = $('#seastr').val();
        if (parseInt(seastr) < parseInt(totalPage) || parseInt(seastr) == parseInt(totalPage)) {
            window.location.href = 'orderList.html?currentNum=' + seastr + '&type=' + type + '&start_time=' + encodeURIComponent(encodeURIComponent(start_time))
                    + '&end_time=' + encodeURIComponent(encodeURIComponent(end_time)) + '&ctg_name=' + encodeURIComponent(encodeURIComponent(ctg_name))
                    + '&goods_name=' + encodeURIComponent(encodeURIComponent(goods_name)) + '&addr_name=' + encodeURIComponent(encodeURIComponent(addr_name));
        }
        return;
    }
</script>

<script type="text/javascript" src="../lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="../lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="../lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="../js/H-ui.js"></script>
<script type="text/javascript" src="../js/H-ui.admin.js"></script>
<script type="text/javascript">
    $(function () {
        $('.table-sort').dataTable({
            "aaSorting": [[1, "desc"]],//默认第几个排序
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                {
                    "orderable": false,
                    "aTargets": [0, 2, 4]
                } // 制定列不参与排序
            ]
        });
        $('.table-sort tbody').on('click', 'tr', function () {
            if ($(this).hasClass('selected')) {
                $(this).removeClass('selected');
            } else {
                table.$('tr.selected').removeClass('selected');
                $(this).addClass('selected');
            }
        });
    });
</script>
</body>
</html>