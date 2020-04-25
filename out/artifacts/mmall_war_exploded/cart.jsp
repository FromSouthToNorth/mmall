<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/22
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>购物车</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/cart.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/index.js"></script>
    <script src="js/cart.js"></script>
</head>
<body>
<div id="app">
    <div class="main" data-v-c8a942a0="">
        <!-- 头部 -->
        <%@include file="jsp/head.jsp"%>
        <!-- /头部 -->
        <!--  -->
        <div class="store-content page-cart" data-v-e6523e26="">
            <div class="gray-box" data-v-e6523e26="">
                <div class="title" data-v-e6523e26="">
                    <h2 data-v-e6523e26="">购物清单</h2>
                </div>
                <!---->
                <div id="cart-list" data-v-e6523e26="">
                    <div class="ui-cart" data-v-e6523e26="">
                        <div data-v-e6523e26="">
                            <div class="cart-table-title" data-v-e6523e26="">
                                <span class="name" data-v-e6523e26="">商品信息</span>
                                <span class="operation" data-v-e6523e26="">操作</span>
                                <span class="subtotal" data-v-e6523e26="">小计</span>
                                <span class="num" data-v-e6523e26="">数量</span>
                                <span class="price1" data-v-e6523e26="">单价</span>
                            </div>
                            <!-- -->
                            <div id="cart-data"></div>
                            <!-- -->
                        </div>
                    </div>
                </div>
                <!---->
                <div id="cart-bottom" class="cart-bottom-bg fix-bottom" data-v-e6523e26="">
                    <div class="fix-bottom-inner" data-v-e6523e26="">
                        <div class="cart-bar-operation" data-v-e6523e26="">
                            <div data-v-e6523e26="">
                                <div class="choose-all" data-v-e6523e26="">
                                    <span class="blue-checkbox-new checkbox-on" data-v-e6523e26=""></span>
                                    <span data-v-e6523e26="">全选</span>
                                </div>
                                <div class="delete-choose-goods" data-v-e6523e26="">
                                    删除选中的商品
                                </div>
                            </div>
                        </div>
                        <div class="shipping" data-v-e6523e26="">
                            <div class="shipping-box" data-v-e6523e26="">
                                <div class="shipping-total shipping-num" data-v-e6523e26="">
                                    <h4 class="highlight" data-v-e6523e26="">
                                        已选择 <i data-v-e6523e26=""></i> 件商品
                                    </h4>
                                    <h5 data-v-e6523e26="">
                                        共计 <i data-v-e6523e26=""></i> 件商品
                                    </h5>
                                </div>
                                <div class="shipping-total shipping-price" data-v-e6523e26="">
                                    <h4 class="highlight" data-v-e6523e26="">
                                        应付总额：<span data-v-e6523e26="">￥</span>
                                        <i data-v-e6523e26=""></i>
                                    </h4>
                                    <h5 class="shipping-tips ng-scope" data-v-e6523e26="">应付金额不含运费</h5>
                                </div>
                            </div>
                            <input class="big-main-btn cart-btn" data-v-612d7650="" data-v-e6523e26="" type="button" readonly value="现在结算"
                            style="margin: 0; width: 130px; height: 50px; line-height: 50px; font-size: 16px">
                        </div>
                    </div>
                </div>
                <!---->
                <div id="null-cart" data-v-e6523e26="" style="padding: 50px;">
                    <div class="cart-e" data-v-e6523e26=""></div>
                    <p data-v-e6523e26="" style="text-align: center; padding: 20px; color: rgb(141, 141, 141)">你的购物车空空如也</p>
                    <div  data-v-e6523e26="" style="text-align: center;">
                        <a class="" data-v-e6523e26="" href="/goods?method=goods&term=all">
                            <input class="default-btn" data-v-e6523e26="" data-v-612d7650="" type="button" value="现在去购买"
                            style="width: 150px; height: 40px; line-height: 38px; color: rgb(141, 141, 141);">
                        </a>
                    </div>
                </div>
                <!---->
                <script>

                </script>
            </div>
        </div>
        <!--  -->
        <!-- 底部 -->
        <%@include file="jsp/bottom.jsp"%>
        <!-- /底部 -->
        </div>
    </div>
</div>
</body>
</html>
