<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/25
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>头部</title>
</head>
<body>
<!-- 头部 -->
<div class="header-box" data-v-7d15c3c3="" data-v-c8a942a0="">
    <div data-v-7d15c3c3="">
        <header class="w" data-v-7d15c3c3="">
            <div class="w-box" data-v-7d15c3c3="">
                <div class="nav-logo" data-v-7d15c3c3="">
                    <h1 data-v-7d15c3c3="">
                        <a class="router-link-active" data-v-7d15c3c3="" href="/index.jsp" title="XMall商城官网">XMall商城官网</a>
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
                        <a class="" data-v-7d15c3c3="" href="/goods?method=goods&term=all"><object><a
                                data-v-7d15c3c3="">全部商品</a></object></a>
                    </div>
                    <div class="nav-aside" data-v-7d15c3c3="">
                        <div class="user pr" data-v-7d15c3c3="">
                            <a class="" data-v-7d15c3c3="" href="${user == null ? '/login.jsp' : '/user.jsp'}">个人中心</a>
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
                            <a id="go-cart" class="" data-v-7d15c3c3=""></a>
                            <span class="cart-num" data-v-7d15c3c3="">
                                            <i class="num no" data-v-7d15c3c3="">0</i>
                                        </span>
                            <div class="nav-user-wrapper pa active" data-v-7d15c3c3=""
                                 style="display: none;">
                                <div class="nav-user-list" data-v-7d15c3c3="">
                                    <div id="full-cart" class="full" data-v-7d15c3c3="" style="display: none">
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
                                                <span id="total-price" class="price-num" data-v-7d15c3c3=""></span>
                                            </h5>
                                            <h6 data-v-7d15c3c3="">
                                                <a href="/cart.jsp">
                                                    <input class="go-cart-btn" data-v-612d7650=""
                                                           data-v-7d15c3c3="" type="button" readonly="readonly"
                                                           value="去购物车"
                                                           style="height: 40px; width: 100%; margin: 0px; color: rgb(255, 255, 255); font-size: 14px; line-height: 38px;">
                                                </a>
                                            </h6>
                                        </div>
                                    </div>
                                    <div id="cart-con" class="cart-con" data-v-7d15c3c3=""
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
                        <input type="hidden" id="term" value="${term}">
                    </ul>
                    <div data-v-7d15c3c3=""></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /头部 -->
</body>
</html>
