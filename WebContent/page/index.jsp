<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!doctype html>
    <html>
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
            <title>家滴帮</title>
            <link rel="stylesheet" type="text/css" href="css/showTip.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/swiper.css">
            <link rel="stylesheet" type="text/css" href="css/style.css">
            <link rel="stylesheet" href="css/search.css">
            <link rel="stylesheet" type="text/css" href="css/shoujisc.css">
            <script type="text/javascript" src="js/jquery.js"></script>
            <script type="text/javascript" src="js/TouchSlide.1.1.js"></script>
            <script type="text/javascript" src="js/showTip.js"></script>
            <script type="text/javascript" src="js/woxiangyao.js"></script>
            <script type="text/javascript" src="js/swiper.js"></script>
            <script type="text/javascript" src="js/foot.js"></script>
        </head>

        <body id="wrap">
            <div class="quanbu-top">
                <input id="goods_name" name="keyword" class="hd_keyword" placeholder="请输入商品名称" style="width: 80%;font-size: 14px" onclick="window.location.href='secList.html'">
                <a href="areaList.html" class="qb-tleft f-l"></a>
                <div class="qb-tright f-r">
                    <a href="secList.html"> <img src="images/sjsc-13.png"> </a>
                    <a href=""> <img src="images/message.png"> </a>
                </div>
                
                <div style="clear:both;"></div>
            </div>
            <div class="banner1" id="ban1">
                <ul class="sy-ul">
                    <c:forEach items="${banList}" var="list">
                        <li><a href="${list.url}"><img src="${list.ban_img }"></a></li>
                    </c:forEach>
                </ul>
                <ol class="sy-ol">
                </ol>
            </div>
            <div class="sy-info1" style="border-bottom:4px solid #E6E6E6;">
                <ul class="info-img">
                    <li>
                        <a href="listMessage.html" class="img-1"><img src="images/b1.png" style="width:42px;height: 42px"> </a>
                        <a href="listMessage.html" class="img-txt">社区服务</a>
                    </li>
                    <li>
                        <a href="cardAll.html" class="img-1"> <img  src="images/b2.png" style="width:42px;height: 42px"></a>
                        <a href="cardAll.html" class="img-txt">安居卡</a>
                    </li>
                    <li>
                        <a href="workersShowjsp.html" class="img-1" style=""><img  src="images/b3.png" style="width:42px;height: 42px"></a>
                        <a href="workersShowjsp.html" class="img-txt">附近工匠</a>
                    </li>
                    <li>
                        <a href="category.html?ctg_id=23" class="img-1"><img  src="images/b4.png" style="width:42px;height: 42px"></a>
                        <a href="category.html?ctg_id=23" class="img-txt">家庭直购</a>
                    </li>
                    <li>
                        <a href="benfitlist.html" class="img-1"><img  src="images/b5.png" style="width:42px;height: 42px"></a>
                        <a href="benfitlist.html" class="img-txt">爱心公益</a>
                    </li>
                </ul>
                <ul class="info-img">
                    <li>
                        <a href="getAllSellerAreaList.html?type=1" class="img-1"><img  src="images/b6.png" style="width:42px;height: 42px"> </a>
                        <a href="getAllSellerAreaList.html?type=1" class="img-txt">建材优选</a>
                    </li>
                    <li>
                        <a href="getAllSellerAreaList.html?type=2" class="img-1"> <img  src="images/b7.png" style="width:42px;height: 42px"></a>
                        <a href="getAllSellerAreaList.html?type=2" class="img-txt">家居优选</a>
                    </li>
                    <li>
                        <a href="getAllSellerAreaList.html?type=3" class="img-1" style=""><img  src="images/b8.png" style="width:42px;height: 42px"></a>
                        <a href="getAllSellerAreaList.html?type=3" class="img-txt">花卉</a>
                    </li>
                    <li>
                        <a href="" class="img-1"><img  src="images/b9.png" style="width:42px;height: 42px"></a>
                        <a href="" class="img-txt">装修样板</a>
                    </li>
                </ul>
            </div>

            <div class="yu-title" style="padding-top:10px;border-bottom: 2px solid #bdb0a1;">
                <img src="images/ad_title.png" alt="">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                      <c:forEach items="${adList}" var="ad">
                        <div class="swiper-slide">${ad.name}</br>${ad.content}</div>
                      </c:forEach>
                    </div>
                </div>
            </div>

            <div class="ssjg">
                <h3 class="ui-yu-server">家滴精选 
                <a href="category.html?ctg_id=23"><img src="images/more.png" alt=""></a></h3>
                <ul class="ssjg-ul1" style="padding-top:10px;">
                    <c:forEach items="${hotGoodsList}" var="goodsList">
                        <li>
                            <div class="ssjg-tu">
                                <a href="goodsListById.html?goods_id=${goodsList.goods_id}"><img src="${goodsList.goods_img}"></a>
                            </div>
                            <h3><a href="goodsListById.html?goods_id=${goodsList.goods_id}">${goodsList.goods_name}</a></h3>
                            <p class="ssjg-p2" style="font-size: 11px;padding-left: 5px"><span>${goodsList.goods_spe}</span></p>
                            <dl class="ssjg-dl1">
                                <dt>
                                	<p class="ssjg-p1" style="margin-top:10px;"><span>￥${goodsList.goods_price}</span></p>
                                </dt>
                                <div style="clear:both;"></div>
                            </dl>
                        </li>
                    </c:forEach>
                    <div style="clear:both;"></div>
                </ul>
            </div>
            <h3 class="ui-yu-server" style="border-bottom: 2px solid #bdb0a1;">便民服务<a> <img src="images/more.png" alt=""></a></h3>
            <ul class="ui-yu-express">
                <li>
                    <img src="images/express.png" alt="">
                    <h5>同城快递服务,市区内2小时到达</h5>
                    <p>$<span>5555</span></p>
                </li>
                <li>
                    <img src="images/express.png" alt="">
                    <h5>同城快递服务,市区内2小时到达</h5>
                    <p>$<span>5555</span></p>
                </li>
                <li>
                    <img src="images/express.png" alt="">
                    <h5>同城快递服务,市区内2小时到达</h5>
                    <p>$<span>5555</span></p>
                </li>
            </ul>
            <div class="ui-yu-home">
                <h5><img src="images/yu-home.png" alt=""> <span class=""> 更多 <img src="images/more.png" alt=""></span></h5>
            </div>
            <ul>
                <c:forEach items="${newsList}" var="news">
	                <li class="yu-ui-homeWord">
<%-- 	                    <img src="${news.head_img}"> --%>
						<img src="images/yu-home.png">
	                    <p>${news.content}</p>
	                    <div>
	                       <span><img src="images/up_normal.png" alt="">${news.praise_count}</span>
	                       <span><img src="images/comment.png" alt="">${news.review_count}</span>
	                    </div>
	                </li>
                </c:forEach>
            </ul>
            <div class="sy-ft"></div>
            <!--返回顶部-->
            <div class="sy-fanhui">
                <a href="JavaScript:;"><img src="images/sjsc29.gif"></a>
            </div>
            <script type="text/javascript">
            //加入购物车
            function add(goods_id, goods_name, goods_img, goods_spe, goods_price) {
                $.ajax({
                    url: 'cartInsert.html',
                    type: 'post',
                    data: 'goods_id=' + goods_id + '&goods_name=' + goods_name + '&goods_img=' + goods_img + '&goods_price=' + goods_price + '&goods_num=1' + '&goods_spe=' + goods_spe,
                    success: function(rs) {
                        var data = eval('(' + rs + ')');
                        if (data.rs_code == 1) {
                            $('#cart_num').text(data.cart_num);
                            showTip("已加入购物车！");
                        } else if (data.rs_code == 1005) {
                            showTip("登录已失效，重新登录中，请稍后...");
                            setTimeout('window.location.href=history.go(-1)', 2000);
                        } else {
                            showTip("加入购物车失败！");
                        }

                    }
                })
            }
            </script>
            <jsp:include page="footer5.jsp"></jsp:include>
        </body>

        </html>