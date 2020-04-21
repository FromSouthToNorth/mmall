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
    .main[data-v-9e9501ca] {
        min-height: calc(100vh - 454px);
        background: #ededed;
        overflow: hidden;
        width: 100%;
    }
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
        <div class="header-box" data-v-7d15c3c3="" data-v-c8a942a0="">
            <div data-v-7d15c3c3="">
                <header class="w" data-v-7d15c3c3="">
                    <div class="w-box" data-v-7d15c3c3="">
                        <div class="nav-logo" data-v-7d15c3c3="">
                            <h1 data-v-7d15c3c3="">
                                <a class="router-link-active" data-v-7d15c3c3="" href="#/"
                                   title="XMall商城官网">XMall商城官网</a>
                            </h1>
                        </div>
                        <div class="right-box" data-v-7d15c3c3="">
                            <div class="nav-list" data-v-7d15c3c3="">
                                <div class="el-autocomplete" data-v-7d15c3c3="" minlength="1" maxlength="100">
                                    <div class="el-input" props="[object Object]"
                                         fetchsuggestions="function() { [native code] }" triggeronfocus="true">
                                        <!---->
                                        <i class="el-input__icon el-icon-search is-clickable"></i>
                                        <input class="el-input__inner" autocomplete="off" placeholder="请输入商品信息"
                                               icon="search" type="text" rows="2" validateevent="true">
                                        <!---->
                                        <!---->
                                    </div>
                                </div>
                                <a class="" data-v-7d15c3c3="" href="#/goods"><object><a
                                        data-v-7d15c3c3="">全部商品</a></object></a>
                            </div>
                            <div class="nav-aside" data-v-7d15c3c3="">
                                <div class="user pr" data-v-7d15c3c3="">
                                    <a class="" data-v-7d15c3c3="" href="${user == null ? '/login.jsp' : '#'}">个人中心</a>
                                    <c:if test="${user != null}">
                                        <div class="nav-user-wrapper pa" data-v-7d15c3c3="">
                                            <div class="nav-user-list"data-v-7d15c3c3="">
                                                <ul>
                                                    <li class="nav-user-avatar" data-v-7d15c3c3="">
                                                        <div data-v-7d15c3c3="">
                              <span class="avatar" data-v-7d15c3c3=""
                                    style="background-image: url(/image/avatar/20190826144820.jpg)">
                              </span>
                                                        </div>
                                                        <p class="name" data-v-7d15c3c3="">${user.userName}</p>
                                                    </li>
                                                    <li data-v-7d15c3c3=""><a class="" href="" data-v-7d15c3c3="">我的订单</a></li>
                                                    <li data-v-7d15c3c3=""><a class="" href="" data-v-7d15c3c3="">账号资料</a></li>
                                                    <li data-v-7d15c3c3=""><a class="" href="" data-v-7d15c3c3="">收货地址</a></li>
                                                    <li data-v-7d15c3c3=""><a class="" href="" data-v-7d15c3c3="">售后服务</a></li>
                                                    <li data-v-7d15c3c3=""><a class="" href="" data-v-7d15c3c3="">我的优惠</a></li>
                                                    <li data-v-7d15c3c3=""><a class="" href="/user?method=remove" data-v-7d15c3c3="">退出</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                                <div class="shop pr" data-v-7d15c3c3="">
                                    <a class="" data-v-7d15c3c3="" href="#/cart"></a>
                                    <span class="cart-num" data-v-7d15c3c3="">
                                            <i class="num no" data-v-7d15c3c3="">0</i>
                                        </span>
                                    <div class="nav-user-wrapper pa active" data-v-7d15c3c3=""
                                         style="display: none;">
                                        <div class="nav-user-list" data-v-7d15c3c3="">
                                            <div class="full" data-v-7d15c3c3="" style="display: none;">
                                                <div class="nav-cart-items">
                                                    <ul class="product_list" data-v-7d15c3c3="">
                                                    </ul>
                                                </div>
                                                <div class="nav-cart-total" data-v-7d15c3c3="">
                                                    <p data-v-7d15c3c3="">
                                                        共
                                                        <strong data-v-7d15c3c3=""></strong>
                                                        件商品
                                                    </p>
                                                    <h5 data-v-7d15c3c3="">
                                                        合计：
                                                        <span class="price-icon" data-v-7d15c3c3="">￥</span>
                                                        <span class="price-num" data-v-7d15c3c3=""></span>
                                                    </h5>
                                                    <h6 data-v-7d15c3c3="">
                                                        <input class="main-btn" data-v-612d7650=""
                                                               data-v-7d15c3c3="" type="button" readonly="readonly"
                                                               value="去购物车"
                                                               style="height: 40px; width: 100%; margin: 0px; color: rgb(255, 255, 255); font-size: 14px; line-height: 38px;">
                                                    </h6>
                                                </div>
                                            </div>
                                            <div class="cart-con" data-v-7d15c3c3=""
                                                 style="height: 313px; text-align: center;">
                                                <p data-v-7d15c3c3="">您的购物车竟然是空的！</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="nav-sub" data-v-7d15c3c3="">
                    <div class="nav-sub-bg" data-v-7d15c3c3=""></div>
                    <div class="nav-sub-wrapper" data-v-7d15c3c3="">
                        <div class="w" data-v-7d15c3c3="">
                            <ul class="nav-list2" data-v-7d15c3c3="">
                                <li data-v-7d15c3c3=""><a class="router-link-active" data-v-7d15c3c3=""
                                                          href="/index.jsp"><object><a id="index" class="" data-v-7d15c3c3="">首页</a></object></a>
                                </li>
                                <li data-v-7d15c3c3=""><a id="all" href="/goods?method=goods&term=all" class="" data-v-7d15c3c3="">全部</a></li>
                                <li data-v-7d15c3c3=""><a id="goods-phone" href="/goods?method=goods&term=phone" class="" data-v-7d15c3c3="">手机</a></li>
                                <li data-v-7d15c3c3=""><a id="costume" href="/goods?method=goods&term=costume" class="" data-v-7d15c3c3="">服饰</a></li>
                                <li data-v-7d15c3c3=""><a id="goodsCity" href="/goods?method=goods&term=goodsCity" class="" data-v-7d15c3c3="">配件</a></li>
                                <li data-v-7d15c3c3=""><a id="github" href="https://github.com/FromSouthToNorth/mmall" class="" data-v-7d15c3c3="">Github</a></li>
                            </ul>
                            <div data-v-7d15c3c3=""></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /头部 -->
        <!---->
        <div class="goods main" data-v-9e9501ca="" data-v-c8a942a0="">
            <div class="nav" data-v-9e9501ca="">
                <div class="w" data-v-9e9501ca="">
                    <a id="synthesize" class="" href="/goods?method=goods&term=${term}" data-v-9e9501ca="">综合排序</a>
                    <a id="descending" class="" href="/goods?method=goods&term=${term}&sort=descending" data-v-9e9501ca="">价格从高到底</a>
                    <a id="ascending" class="" href="/goods?method=goods&term=${term}&sort=ascending" data-v-9e9501ca="">价格从低到高</a>
<%--                    <div class="price-interval" data-v-9e9501ca="">--%>
<%--                        <input id="lowPrice" class="input" data-v-9e9501ca="" type="number" placeholder="价格">--%>
<%--                        <span data-v-9e9501ca="" style="margin: 0 5px">-</span>--%>
<%--                        <input id="highPrice" data-v-9e9501ca="" type="number" placeholder="价格">--%>
<%--                        <input id="ok" class="main-btn" data-v-612d7650="" data-v-9e9501ca="" type="button" value="确定" style="margin-left: 10px">--%>
<%--                    </div>--%>
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
                                            <input class="main-btn" data-v-612d7650 data-v-0265f772=""
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
        <div class="footer" data-v-5be35fd1="" data-v-c8a942a0="">
            <div class="container" data-v-5be35fd1="">
                <div class="siteinfo" data-v-5be35fd1="">
                    <ul class="c0" data-v-5be35fd1="">
                        <h3 class="c1" data-v-5be35fd1="">订单服务</h3>
                        <ul data-v-5be35fd1="">
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">购买服务</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">支付方式</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">送货政策</a></object></a></li>
                        </ul>
                    </ul>
                    <ul class="c0" data-v-5be35fd1="">
                        <h3 class="c1" data-v-5be35fd1="">服务支持</h3>
                        <ul data-v-5be35fd1="">
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">官方开源</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">项目前端</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">项目后端</a></object></a></li>
                        </ul>
                    </ul>
                    <ul class="c0" data-v-5be35fd1="">
                        <h3 class="c1" data-v-5be35fd1="">自助服务</h3>
                        <ul data-v-5be35fd1="">
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">个人博客</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">个人简介</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">个人视频</a></object></a></li>
                        </ul>
                    </ul>
                    <ul class="c0" data-v-5be35fd1="">
                        <h3 class="c1" data-v-5be35fd1="">其他项目</h3>
                        <ul data-v-5be35fd1="">
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">XPay支付系统</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">数据共享</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">待开发...</a></object></a></li>
                        </ul>
                    </ul>
                    <ul class="c0" data-v-5be35fd1="">
                        <h3 class="c1" data-v-5be35fd1="">友情链接</h3>
                        <ul data-v-5be35fd1="">
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">宇ccc</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">Smartisan</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">Vue</a></object></a></li>
                        </ul>
                    </ul>
                    <ul class="c0" data-v-5be35fd1="">
                        <h3 class="c1" data-v-5be35fd1="">关注我吧</h3>
                        <ul data-v-5be35fd1="">
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">腾讯 QQ</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">新浪微博</a></object></a></li>
                            <li class="c2" data-v-5be35fd1=""><a data-v-5be35fd1=""><object><a class="c3"
                                                                                               data-v-5be35fd1="">送货政策</a></object></a></li>
                        </ul>
                    </ul>
                    <ul class="c4" data-v-5be35fd1="">
                        <li class="tel" data-v-5be35fd1=""><a class="c5" data-v-5be35fd1="">1012139570</a></li>
                        <li class="time" data-v-5be35fd1="">周一至周五 10:00-23:00（限Starrer或捐赠人联系）</li>
                        <li class="online" data-v-5be35fd1=""><input class="button default-btn" data-v-5be35fd1=""
                                                                     type="button" value="在线帮助"></li>
                    </ul>
                </div>
                <div class="copyright" data-v-5be35fd1="">
                    <h4 class="content-c2" data-v-5be35fd1="">Copyright ©2017, exrick.cn Co., Ltd. All Rights
                        Reserved.本网站设计内容大部分属锤子科技</h4>
                    <ul class="privacy" data-v-5be35fd1="">
                        <li class="content-c1" data-v-5be35fd1=""><a class="content-c0" data-v-5be35fd1="">法律声明</a>
                        </li>
                        <li class="content-c1" data-v-5be35fd1=""><a class="content-c0" data-v-5be35fd1="">隐私条款</a>
                        </li>
                        <li class="content-c1" data-v-5be35fd1=""><a class="content-c0" data-v-5be35fd1="">开发者中心</a>
                        </li>
                    </ul>
                </div>
                <div class="cop" data-v-5be35fd1="">
                    <a class="content-c3" data-v-5be35fd1="">
                        <span class="content-c3" data-v-5be35fd1="">蜀ICP备16030308号-1</span>
                        <span class="content-c3" data-v-5be35fd1="">蜀ICP证16030308号</span>
                    </a>
                </div>
            </div>
        </div>
        <!-- /底部 -->
    </div>
</div>
</body>
</html>
