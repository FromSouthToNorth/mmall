<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/18
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品详情</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/details.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/index.js"></script>
</head>
<style>
 .gray-box[data-v-f85ff452] {
        display: -ms-flexbox;
        display: flex;
        padding: 60px;
        margin: 20px 0;
 }
 .down.down-disabled[data-v-d10cb02a] {
     background-position: 0 -300px;
     cursor: not-allowed;
 }

 .select .down[data-v-d10cb02a] {
     background-position: 0 -60px;
 }

 .item-info .gray-box[data-v-f85ff452] {
     padding: 0;
     display: block;
 }
</style>
<body>
<div id="add">
    <div class="main" data-v-c8a942a0="">
        <!-- 头部 -->
        <%@include file="jsp/head.jsp"%>
        <!-- /头部 -->
        <!---->
        <!---->
        <div class="w store-content main" data-v-f85ff452="" data-v-c8a942a0="">
            <div class="gray-box" data-v-f85ff452="">
                <div class="gallery-wrapper">
                    <div class="gallery" data-v-f85ff452="">
                        <div class="thumbnail" data-v-f85ff452="">
                            <ul data-v-f85ff452="">
                                <c:forEach items="${goodsThumb}" var="thumb">
                                    <li class=""  data-v-f85ff452="">
                                        <img src="${thumb.goodsImg}" alt="" data-v-f85ff452="">
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="thumb" data-v-f85ff452="">
                            <div class="big" data-v-f85ff452="">
                                <img data-v-f85ff452="" src="${goods.goodsImg}" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="banner" data-v-f85ff452="">
                    <div class="sku-custom-title" data-v-f85ff452="">
                        <h4 data-v-f85ff452="">${goods.goodsName}</h4>
                        <h6 data-v-f85ff452="">
                            <span data-v-f85ff452="">${goods.goodsTitle}</span>
                            <span class="price" data-v-f85ff452="">
                                <em data-v-f85ff452="">￥</em>
                                <i data-v-f85ff452="">${goods.price}</i>
                            </span>
                        </h6>
                    </div>
                    <div class="number" data-v-f85ff452="">
                        <span class="params-name" data-v-f85ff452="">数量</span>
                        <div class="item-cols-num clearfix" data-v-d10cb02a="" data-v-f85ff452="">
                            <div class="select" data-v-d10cb02a="">
                                <span class="down down-disabled" data-v-d10cb02a="">-</span>
                                <span class="number" data-v-d10cb02a="">
                                    <input class="show" data-v-d10cb02a="" readonly="readonly" value="1" maxlength="2" type="text">
                                    <ul data-v-d10cb02a="" style="z-index: 1; transition: all 0s ease 0s; transform: translateY(-36px);"></ul>
                                </span>
                                <span class="up" data-v-d10cb02a="">+</span>
                            </div>
                        </div>
                    </div>
                    <div class="buy" data-v-f85ff452="">
                        <input class="main-btn" data-id="${goods.id}" data-v-612d7650="" data-v-f85ff452="" type="button" value="加入购物车" style="width: 145px; height: 50px; line-height: 48px">
                        <input class="default-btn" data-v-612d7650="" data-v-f85ff452="" type="button" value="现在购买" style="width: 145px; height: 50px; margin-left: 10px">
                    </div>
                </div>
            </div>
            <div class="item-info" data-v-f85ff452="">
                <div class="gray-box" data-v-26571f4f="" data-v-f85ff452="">
                    <div class="title" data-v-26571f4f="">
                        <h2 data-v-26571f4f="">产品信息</h2>
                        <div class="" data-v-26571f4f=""></div>
                    </div>
                    <div data-v-26571f4f="">
                        <div data-v-f85ff452="" data-v-26571f4f="">
                            <div class="img-item" data-v-f85ff452="" data-v-26571f4f="">
                                <div data-v-26571f4f="" data-v-f85ff452="">
                                    <p style="text-align: center">
                                        <c:forEach items="${goodsInfo}" var="info">
                                            <img class="info-img" src="${info.goodsInfoImg}" alt="">
                                        </c:forEach>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!---->
        <script>
            $(function () {
                $(".thumbnail ul li").click(function () {
                    $(this).addClass("on").siblings().removeClass("on");
                    let path = $(this).children("img")[0].src;
                    $(".big img").attr("src",path);
                })
            })
        </script>
        <!---->
        <!-- 底部 -->
        <%@include file="jsp/bottom.jsp"%>
        <!-- /底部 -->
    </div>
</div>
</body>
</html>
