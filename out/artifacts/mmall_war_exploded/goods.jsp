<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/18
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品</title>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/index.js"></script>
</head>
<style>
    .nav[data-v-9e9501ca] {
        height: 60px;
        line-height: 60px;
    }
    .nav > div[data-v-9e9501ca] {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
    }
    .nav > div a.active[data-v-9e9501ca] {
        color: #6683ea;
    }
    .nav > div a[data-v-9e9501ca] {
        padding: 0 15px;
        height: 100%;
        font-size: 12px;
        color: #999;
    }
    .nav .price-interval[data-v-9e9501ca] {
        padding: 0 15px;
    }
    .nav .price-interval[data-v-9e9501ca],
    .nav > div a[data-v-9e9501ca] {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        -ms-flex-pack: center;
        justify-content: center;
    }
    .nav .price-interval input[type="number"][data-v-9e9501ca] {
        border: 1px solid #ccc;
        text-align: center;
        background: none;
        border-radius: 5px;
    }
    .nav > div input[data-v-9e9501ca] {
        width: 80px;
        height: 30px;
        border: 1px solid #ccc;
    }
    input[type="number"],
    textarea {
        -moz-appearance: textfield;
    }
    .img-item[data-v-9e9501ca] {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-direction: column;
        flex-direction: column;
    }
    .goods-box > div[data-v-9e9501ca] {
        float: left;
        border: 1px solid #efefef;
    }
    .paging {
        margin: 3vw 10vw 2vw;
        align-self: flex-end;
        padding: 2px 6px;
        white-space: nowrap;
        font-size: 0;
    }
    .paging span,
    .paging button,
    .paging p,
    .pager,
    .pager li {
        display: inline-block;
        font-size: 14px;
        min-width: 28px;
        height: 28px;
        line-height: 28px;
        vertical-align: top;
        box-sizing: border-box;
    }
    .goods .paging .total {
        min-width: 10px;
        padding-right: 3px;
        text-align: center;
    }
    .paging p {
        margin: 0 10px;
    }
    .pager {
        list-style: none;
        font-size: 0;
        padding: 0;
    }
    .pager li,
    .btn-prev,
    .btn-next {
        background: 50% no-repeat #fff;
        background-size: 16px;
        border: 1px solid #d1dbe5;
        text-align: center;
        cursor: pointer;
    }
    .pager li.active {
        border-color: #20a0ff;
        background-color: #20a0ff;
        color: #fff;
        cursor: default;
    }
    .pager li.active:hover {
        color: #fff;
    }
    .paging button:hover,
    .pager li:hover {
        color: #20a0ff;
    }
    .paging .btn-prev,
    .paging .btn-next {
        color: #bebebe;
        font-size: 14px;
    }
    .paging .btn-prev {
        border-radius: 2px 0 0 2px;
        border-right: 0;
    }
    .paging .btn-next {
        border-radius: 0 2px 2px 0;
        border-left: 0;
    }
    .pager li.active + li {
        border-left: 0;
        padding-left: 5px;
    }
    .pager li:last-child {
        border-right: 1px solid #d1dbe5;
    }
</style>
<body>
<div id="add">
    <div class="main" data-v-c8a942a0="">
        <!-- 头部 -->
        <%@include file="jsp/head.jsp"%>
        <!-- /头部 -->
        <!---->
        <div class="goods main" data-v-9e9501ca="" data-v-c8a942a0="">
            <div class="nav" data-v-9e9501ca="">
                <div class="w" data-v-9e9501ca="">
                    <a id="synthesize" class="" href="/goods?method=goods&term=${term}" data-v-9e9501ca="">综合排序</a>
                    <a id="descending" class="" href="/goods?method=goods&term=${term}&sort=descending" data-v-9e9501ca="">价格从高到底</a>
                    <a id="ascending" class="" href="/goods?method=goods&term=${term}&sort=ascending" data-v-9e9501ca="">价格从低到高</a>
                    <div class="price-interval" data-v-9e9501ca="">
                        <input id="lowPrice" class="input" data-v-9e9501ca="" type="number" placeholder="价格">
                        <span data-v-9e9501ca="" style="margin: 0 5px">-</span>
                        <input id="highPrice" data-v-9e9501ca="" type="number" placeholder="价格">
                        <input id="ok" class="main-btn" data-v-612d7650="" data-v-9e9501ca="" type="button" value="确定" style="margin-left: 10px">
                    </div>
                </div>
            </div>
            <div data-v-9e9501ca="" class="" style="min-height: 35vw; position: static">
                <div class="img-item" data-v-9e9501ca="">
                    <div class="goods-box w" data-v-9e9501ca="">
                        <c:forEach items="${goodsList}" var="goods">
                            <div class="good-item" data-v-0265f772="" data-v-9e9501ca="">
                                <div data-v-0265f772="">
                                    <div class="good-img" data-v-0265f772="">
                                        <a data-v-0265f772=""><img src="${goods.goodsImg}" data-v-0265f772=""></a>
                                    </div>
                                    <h6 class="good-title" data-v-0265f772="">${goods.goodsName}</h6>
                                    <h3 class="sub-title ellipsis" data-v-0265f772="">${goods.goodsTitle}</h3>
                                    <div class="good-price pr" data-v-0265f772="">
                                        <div class="ds pa" data-v-0265f772="">
                                            <a href="/goods?method=info&goodsId=${goods.id}" data-v-0265f772="">
                                                <input class="default-btn" data-v-612d7650="" data-v-0265f772=""
                                                       type="button" readonly="readonly" value="查看详情"
                                                       style="margin: 0px 5px;">
                                            </a>
                                            <input data-id="${goods.id}" class="main-btn" data-v-612d7650 data-v-0265f772=""
                                                   type="button" readonly="readonly" value="加入购物车"
                                                   style="margin: 0px 5px;">
                                        </div>
                                        <p data-v-0265f772="">
                                            <span data-v-0265f772="" style="font-size: 14px;">￥</span>
                                            ${goods.price}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="paging">
                        <p>共 <span class="total">${total}</span>件</p>
                        <button class="btn-prev"><<</button>
                        <ul class="pager">
                        </ul>
                        <button class="btn-next">>></button>
                    </div>
                    <input id="term" type="hidden" value="${term}">
                    <input type="hidden" id="page" value="${page}">
                    <input type="hidden" id="sort" value="${sort}">
                </div>
                <script>
                    $(function () {
                        let sort = $("#sort").val();
                        if ("descending" === sort) {
                            $("#descending").addClass("active");
                        } else if ("ascending" === sort) {
                            $("#ascending").addClass("active");
                        } else {
                            $("#synthesize").addClass("active");
                        }
                        let pager = "";
                        let page = parseInt($("#page").val());
                        let total = parseInt($(".total").text());
                        let term = $("#term").val();
                        let pageCount;
                        pageCount = Math.ceil(total / 8);
                        for (let i = 1; i <= pageCount; i++) {
                            pager = '<li>' + i + '</li>';
                            $(".pager").append(pager);
                        }
                        $(".pager li").eq(page - 1).addClass("active");
                        $(".pager li").click(function () {
                            $(this).addClass("active").siblings().removeClass("active");
                            location.href = "/goods?method=goods&page=" + $(this).text() + "&term=" + term + "&sort=" + sort;
                        });
                        // 下一页
                        $(".btn-next").click(function () {
                            if (page === pageCount)
                                return;
                            page ++;
                            location.href = "/goods?method=goods&page=" + page + "&term=" + term + "&sort=" + sort;
                        });
                        // 上一页
                        $(".btn-prev").click(function () {
                            if (page === 1)
                                return;
                            page --;
                            location.href = "/goods?method=goods&page=" + page + "&term=" + term + "&sort=" + sort;
                        });
                    })
                </script>
            </div>
        </div>
        <!---->
        <!---->
        <!-- 底部 -->
        <%@include file="jsp/bottom.jsp"%>
        <!-- /底部 -->
    </div>
</div>
</body>
</html>
