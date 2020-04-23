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
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/index.js"></script>
</head>
<style>
    .store-content.page-cart[data-v-e6523e26] {
        padding-top: 40px;
    }
    .store-content[data-v-e6523e26] {
        clear: both;
        width: 1220px;
        min-width: 600px;
        padding: 0 0 25px;
        margin: 0 auto;
    }
    .store-content .gray-box[data-v-e6523e26] {
        position: relative;
        margin-bottom: 30px;
        overflow: hidden;
        background: #fff;
        border-radius: 8px;
        border: 1px solid rgba(0, 0, 0, .14);
        box-shadow: 0 3px 8px -6px rgba(0, 0, 0, .1);
    }
    .store-content .gray-box .title[data-v-e6523e26] {
        padding-left: 30px;
        position: relative;
        z-index: 10;
        height: 60px;
        border-bottom: 1px solid #d4d4d4;
        border-radius: 8px 8px 0 0;
        box-shadow: 0 1px 7px rgba(0,0,0,.06);
        background: #f3f3f3;
        background: linear-gradient(#fbfbfb, #ececec);
        line-height: 60px;
        font-size: 18px;
        color: #333;
    }
    .cart-e[data-v-e6523e26] {
        margin: 0 auto;
        background: url("/image/cart-empty_@2x.png") no-repeat;
        width: 275px;
        height: 300px;
        color: #8d8d8d;
    }
    .store-content .ui-cart[data-v-e6523e26] {
        padding-bottom: 91px;
    }
    .store-content .ui-cart .cart-table-title[data-v-e6523e26] {
        position: relative;
        z-index: 1;
        line-height: 38px;
        height: 38px;
        padding: 0 0 0 30px;
        font-size: 12px;
        background: #eee;
        border-bottom: 1px solid #dbdbdb;
        border-bottom-color: rgba(0,0,0,.08);
    }
    .store-content .ui-cart .cart-table-title span[data-v-e6523e26] {
        width: 137px;
        float: right;
        text-align: center;
        color: #838383;
    }
    .store-content .ui-cart .cart-table-title .name[data-v-e6523e26] {
        float: left;
        text-align: left;
    }
    .store-content .ui-cart .name a[data-v-e6523e26] {
        color: #333;
        font-size: 16px;
    }
    .store-content .ui-cart .name[data-v-e6523e26] {
        width: 380px;
        margin-left: 20px;
        color: #323232;
        display: table;
    }
    .store-content .ui-cart .cart-group.divide .cart-top-items:first-child .cart-items[data-v-e6523e26] {
     border-top: none;
    }
    .store-content .ui-cart .cart-items[data-v-e6523e26] {
        position: relative;
        height: 140px;
        margin-left: 74px;
    }
    .store-content .ui-cart .items-choose[data-v-e6523e26] {
        position: absolute;
        left: -74px;
        top: 0;
        width: 74px;
        height: 20px;
        padding: 60px 0 0 31px;
        font-size: 12px;
        color: #999;
    }
    .page-cart .blue-checkbox-new.checkbox-disable[data-v-e6523e26],
    .page-cart .blue-checkbox-new.checkbox-on[data-v-e6523e26],
    .page-cart .blue-checkbox-new[data-v-e6523e26] {
        display: inline-block;
        position: relative;
        width: 20px;
        height: 20px;
        background: url("/image/（PNG 图像，20x60 像素）.png") no-repeat 0 -20px;
        cursor: pointer;
        -moz-user-select: none;
        -webkit-user-select: none;
        user-select: none;
        vertical-align: middle;
    }
    .page-cart .blue-checkbox-new.checkbox-on[data-v-e6523e26] {
        background: url("/image/（PNG 图像，20x60 像素）.png") no-repeat 0 0;
    }
    .page-cart .blue-checkbox-new[data-v-e6523e26] {
        float: left;
        margin-right: 9px;
    }
    .store-content .ui-cart .items-thumb[data-v-e6523e26] {
        position: relative;
        margin-top: 30px;
        overflow: hidden;
        width: 80px;
        height: 80px;
    }
    .fl {
        float: left;
    }
    .store-content .ui-cart img[data-v-e6523e26] {
        width: 80px;
        height: 80px;
    }
    .store-content .ui-cart .cart-items .items-thumb > a [data-v-e6523e26] {
        position: absolute;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        border: 1px solid #fff;
        border-radius: 3px;
        border: 0 solid hsla(0,0%,100%,.1);
        box-shadow: inset 0 0 0 1px rgba(0,0,0,.06);
    }
    .store-content .ui-cart .name-table[data-v-e6523e26] {
        display: table-cell;
        vertical-align: middle;
        height: 140px;
    }
    .store-content .ui-cart .cart-items .operation[data-v-e6523e26] {
        padding: 58px 0 0;
        font-size: 12px;
        line-height: 24px;
    }
    .store-content .ui-cart .cart-items .operation .items-delete-btn[data-v-e6523e26] {
        display: block;
        width: 24px;
        height: 24px;
        margin: 0 auto;
        color: #c2c2c2;
        background: url("/image/（JPEG 图像，48x120 像素）.jpg");
        background-size: 100% auto;
        transition: none;
    }
    .store-content .ui-cart .cart-items .operation .items-delete-btn[data-v-e6523e26]:hover {
        background-position: 0 -36px;
    }
    .store-content .ui-cart .cart-items .subtotal[data-v-e6523e26] {
        font-weight: 700;
    }
    .select .down[data-v-d10cb02a] {
        background-position: 0 -60px;
    }
    .select[data-v-d10cb02a] {
        height: 40px;
        padding-top: 4px;
    }
    .select .down.down-disabled[data-v-d10cb02a] {
        background-position: 0 -300px;
        cursor: not-allowed;
    }
    .select .down.down-disabled[data-v-d10cb02a]:hover {
        background-position: 0 -300px;
        cursor: not-allowed;
    }
    .select .down[data-v-d10cb02a],
    .select .up[data-v-d10cb02a] {
        background: url("image/cart-updown_8303731e15@2x.7d9dac6.jpg") no-repeat;
        overflow: hidden;
        float: left;
        width: 34px;
        height: 37px;
        background-size: 100% auto;
        line-height: 40px;
        text-indent: -9999em;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }
    .store-content .ui-cart .cart-items .item-cols-num[data-v-e6523e26],
    .store-content .ui-cart .cart-items .operation[data-v-e6523e26],
    .store-content .ui-cart .cart-items .price1[data-v-e6523e26],
    .store-content .ui-cart .cart-items .subtotal[data-v-e6523e26] {
        overflow: hidden;
        float: right;
        width: 137px;
        text-align: center;
        color: #666;
        line-height: 140px;
    }
    .store-content .ui-cart .cart-items .item-cols-num[data-v-e6523e26] {
        text-align: center;
        color: #666;
        line-height: 140px;
    }
    .select .num[data-v-d10cb02a] {
        position: relative;
        overflow: hidden;
        float: left;
        width: 36px;
        height: 18px;
        margin: 7px 0 0;
        border: none;
        border-radius: 3px;
        line-height: 18px;
        text-align: center;
        font-size: 14px;
    }
    .select input.show[data-v-d10cb02a] {
        visibility: visible;
    }
    .select input[data-v-d10cb02a] {
        width: 100%;
        text-align: center;
    }
    .select input[data-v-d10cb02a] {
        z-index: 10;
        width: 36px;
        height: 18px;
        background-color: #fff;
        line-height: 18px;
        font-size: 14px;
        padding: 0;
        color: #666;
        visibility: hidden;
        position: relative;
        border: none;
    }
    .select .up[data-v-d10cb02a] {
        margin: 0;
        background-position: 0 0;
    }
    .select .up[data-v-d10cb02a]:hover {
        background-position: 0 -120px;
    }
    .page-cart .fix-bottom[data-v-e6523e26] {
        height: 90px;
        width: 100%;
        position: absolute;
        bottom: 0;
        z-index: 1;
        background-position: 50%;
        background: #fdfdfd;
        background: linear-gradient(#fdfdfd,#f9f9f9);
        border-top: 1px solid #e9e9e9;
        box-shadow: 0 -3px 8px rgba(0,0,0,.04);
    }
    .page-cart .cart-bar-operation[data-v-e6523e26] {
        float: left;
        padding: 35px 26px;
        font-size: 12px;
    }
    .page-cart .shipping[data-v-e6523e26] {
        float: right;
        padding: 20px 30px;
    }
    .page-cart .choose-all[data-v-e6523e26],
    .page-cart .delete-choose-goods[data-v-e6523e26],
    .page-cart .selected-count[data-v-e6523e26] {
        float: left;
        height: 20px;
        line-height: 20px;
        cursor: pointer;
        position: relative;
    }
    .page-cart .cart-bar-operation[data-v-e6523e26] {
        font-size: 12px;
    }
    .page-cart .choose-all[data-v-e6523e26],
    .page-cart .delete-choose-goods[data-v-e6523e26],
    .page-cart .selected-count[data-v-e6523e26] {
        float: left;
        height: 20px;
        line-height: 20px;
        cursor: pointer;
        position: relative;
    }
    .page-cart .delete-choose-goods[data-v-e6523e26] {
        position: relative;
        margin-left: 21px;
        color: #bbb;
    }
    .page-cart .big-main-btn[data-v-e6523e26] {
        float: right;
        height: 48px;
    }
    .page-cart .shipping-box[data-v-e6523e26] {
        display: inline-block;
        padding-top: 1px;
        margin-right: 10px;
    }
    .page-cart .shipping-total[data-v-e6523e26]:first-child {
        border: none;
    }
    .page-cart .shipping-total.shipping-num[data-v-e6523e26] {
        text-align: right;
    }
    .page-cart .shipping-total[data-v-e6523e26] {
        display: inline-block;
        border-left: 1px solid #e1e1e1;
        padding: 0 20px;
    }
    .page-cart .shipping-total h4[data-v-e6523e26] {
        color: #323232;
    }
    .page-cart .shipping-total h4 i[data-v-e6523e26],
    .shipping-total h4 span[data-v-e6523e26]{
        color: #d44d44;
    }
    .page-cart .shipping-total h4 > i[data-v-e6523e26] {
        font-size: 18px;
        font-weight: 700;
    }
    .page-cart .shipping-total h5[data-v-e6523e26] {
        color: #959595;
    }
    .page-cart .shipping-total.shipping-num i[data-v-e6523e26] {
        width: 28px;
        display: inline-block;
        text-align: center;
    }
</style>
<body>
<div id="app">
    <div class="main" data-v-c8a942a0="">
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
                                <div class="el-autocomplete" data-v-7d15c3c3="">
                                    <div class="el-input">
                                        <!---->
                                        <i class="el-input__icon el-icon-search is-clickable"></i>
                                        <input class="el-input__inner" autocomplete="off" placeholder="请输入商品信息" type="text">
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
                                                              <span class="avatar" data-v-7d15c3c3="" style="background-image: url(/image/avatar/20190826144820.jpg)"></span>
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
                    $(function () {
                        $.ajax({
                            type:"get",
                            url: "/cart",
                            data: {"method":"findByUserIdCart"},
                            dataType:"JSON",
                            success:function (data) {
                                let cartSize = 0;
                                let totalPrice = 0;
                                cartSize = data.length;
                                console.log(data);
                                if (data.length === 0) {
                                    $("#null-cart").css("display", "block");
                                    $("#cart-list").css("display", "none");
                                    $("#cart-bottom").css("display", "none");
                                    $(".shipping-total.shipping-num h4 i").text(0);
                                    $(".shipping-total.shipping-num h5 i").text(0);
                                    $(".shipping-total.shipping-price h4 i").text(0);
                                } else {
                                    $("#null-cart").css("display", "none");
                                    $("#cart-list").css("display", "block");
                                    $("#cart-bottom").css("display", "block");
                                }
                                for (let i = 0; i < data.length; i++) {
                                    totalPrice += parseInt(data[i].goods.price);
                                    let label = '<div class="cart-table" data-v-e6523e26="">\n' +
                                        '             <div class="cart-group divide pr" data-v-e6523e26="">\n' +
                                        '                 <div class="cart-top-items" data-v-e6523e26="">\n' +
                                        '                     <div class="cart-items clearfix" data-v-e6523e26="">\n' +
                                        '                         <div class="items-choose" data-v-e6523e26="">\n' +
                                        '                             <span class="blue-checkbox-new checkbox-on" data-v-e6523e26=""></span>\n' +
                                        '                         </div>\n' +
                                        '                         <div class="items-thumb fl" data-v-e6523e26="">\n' +
                                        '                             <img data-v-e6523e26="" src="'+ data[i].goods.goodsImg +'" alt="">\n' +
                                        '                             <a data-v-e6523e26="" title="'+ data[i].goods.goodsName +'" target="_blank"></a>\n' +
                                        '                         </div>\n' +
                                        '                         <div class="name hide-row fl" data-v-e6523e26="">\n' +
                                        '                             <div class="name-table" data-v-e6523e26="">\n' +
                                        '                                 <a data-v-e6523e26="" title="'+ data[i].goods.goodsName +'" target="_blank">'+ data[i].goods.goodsName +'</a>\n' +
                                        '                             </div>\n' +
                                        '                         </div>\n' +
                                        '                         <div class="operation" data-v-e6523e26="">\n' +
                                        '                             <a id="delete-btn" class="items-delete-btn" data-id="'+ data[i].id +'" data-v-e6523e26=""></a>\n' +
                                        '                         </div>\n' +
                                        '                         <div data-v-e6523e26="">\n' +
                                        '                             <div class="subtotal" data-v-e6523e26="" style="font-size: 14px">￥ '+ data[i].goods.price +'</div>\n' +
                                        '                         </div>\n' +
                                        '                         <div class="item-cols-num clearfix" data-v-e6523e26="" data-v-d10cb02a=""\n' +
                                        '                         style="height: 140px; display: flex;align-items: center;justify-content: center;">\n' +
                                        '                             <div class="select" data-v-d10cb02a="">\n' +
                                        '                                 <span class="down down-disabled" data-v-d10cb02a="">-</span>\n' +
                                        '                                 <span class="num" data-v-d10cb02a="">\n' +
                                        '                                     <input class="show" data-v-d10cb02a="" readonly="readonly" value="1" maxlength="2" type="text">\n' +
                                        '                                 </span>\n' +
                                        '                                 <span class="up" data-v-d10cb02a="">+</span>\n' +
                                        '                             </div>\n' +
                                        '                         </div>\n' +
                                        '                         <div class="price1" data-v-e6523e26="">￥ '+ data[i].goods.price +'</div>\n' +
                                        '                     </div>\n' +
                                        '                 </div>\n' +
                                        '             </div>\n' +
                                        '         </div>';
                                    $("#cart-data").append(label);
                                }
                                $(".shipping-total.shipping-num h4 i").text(cartSize);
                                $(".shipping-total.shipping-num h5 i").text(cartSize);
                                $(".shipping-total.shipping-price h4 i").text(totalPrice);
                            }
                        });
                        $(document).on("click", "#delete-btn", function () {
                            let cartId = $(this).data("id");
                            $("#cart-data").empty();
                            $(".product_list").empty();
                            $.ajax({
                                type: "post",
                                url: "/cart",
                                data: {"method": "deleteCart", "cartId": cartId},
                                dataType: "JSON",
                                success: function (data) {
                                    console.log(data);
                                    let cartSize = data.length;
                                    let totalPrice = 0;
                                    if (0 === cartSize) {
                                        $(".cart-num .num").addClass("no").text(0);
                                        $("#cart-con").css("display", "block");
                                        $("#full-cart").css("display", "none");
                                    } else {
                                        $(".cart-num .num").removeClass("no").text(cartSize);
                                        $(".nav-cart-total p strong").text(cartSize);
                                        $("#cart-con").css("display", "none");
                                        $("#full-cart").css("display", "block");
                                    }
                                    for (let i = 0; i < data.length; i++) {
                                        console.log(data);
                                        totalPrice += parseInt(data[i].goods.price);
                                        let label = '<li class="clearfix" data-v-7d15c3c3="">\n' +
                                            '           <div class="cart-item" data-v-7d15c3c3="">\n' +
                                            '             <div class="cart-item-inner" data-v-7d15c3c3="">\n' +
                                            '               <a data-v-7d15c3c3="">\n' +
                                            '                 <object>\n' +
                                            '                   <div class="item-thumb" data-v-7d15c3c3="">\n' +
                                            '                     <img data-v-7d15c3c3="" src="' + data[i].goods.goodsImg + '" alt="">\n' +
                                            '                   </div>\n' +
                                            '                   <div class="item-desc" data-v-7d15c3c3="">\n' +
                                            '                     <div class="cart-cell" data-v-7d15c3c3="">\n' +
                                            '                       <h4 data-v-7d15c3c3=""><a data-v-7d15c3c3="">' + data[i].goods.goodsName + '</a></h4>\n' +
                                            '                       <h6 data-v-7d15c3c3="">\n' +
                                            '                         <span class="price-icon" data-v-7d15c3c3="">￥</span>\n' +
                                            '                         <span class="price-num" data-v-7d15c3c3="">' + data[i].goods.price + '</span>\n' +
                                            '                         <span class="item-num" data-v-7d15c3c3="">x 1</span>\n' +
                                            '                       </h6>\n' +
                                            '                     </div>\n' +
                                            '                   </div>\n' +
                                            '                 </object>\n' +
                                            '               </a>\n' +
                                            '               <div class="del-btn del" data-id=' + data[i].id + ' data-v-7d15c3c3="">删除</div>\n' +
                                            '             </div>\n' +
                                            '           </div>\n' +
                                            '         </li>';
                                        $(".product_list").append(label);
                                    }
                                    $("#total-price").text(totalPrice);
                                }
                            });
                            $.ajax({
                                type: "post",
                                url: "/cart",
                                data: {"method": "deleteCart", "cartId": cartId},
                                dataType: "JSON",
                                success:function (data) {
                                    let cartSize = 0;
                                    let totalPrice = 0;
                                    cartSize = data.length;
                                    console.log(data);
                                    if (data.length === 0) {
                                        $("#null-cart").css("display", "block");
                                        $("#cart-list").css("display", "none");
                                        $("#cart-bottom").css("display", "none");
                                        $(".shipping-total.shipping-num h4 i").text(0);
                                        $(".shipping-total.shipping-num h5 i").text(0);
                                        $(".shipping-total.shipping-price h4 i").text(0);
                                    } else {
                                        $("#null-cart").css("display", "none");
                                        $("#cart-list").css("display", "block");
                                        $("#cart-bottom").css("display", "block");
                                    }
                                    for (let i = 0; i < data.length; i++) {
                                        totalPrice += parseInt(data[i].goods.price);
                                        let label = '<div class="cart-table" data-v-e6523e26="">\n' +
                                            '             <div class="cart-group divide pr" data-v-e6523e26="">\n' +
                                            '                 <div class="cart-top-items" data-v-e6523e26="">\n' +
                                            '                     <div class="cart-items clearfix" data-v-e6523e26="">\n' +
                                            '                         <div class="items-choose" data-v-e6523e26="">\n' +
                                            '                             <span class="blue-checkbox-new checkbox-on" data-v-e6523e26=""></span>\n' +
                                            '                         </div>\n' +
                                            '                         <div class="items-thumb fl" data-v-e6523e26="">\n' +
                                            '                             <img data-v-e6523e26="" src="'+ data[i].goods.goodsImg +'" alt="">\n' +
                                            '                             <a data-v-e6523e26="" title="'+ data[i].goods.goodsName +'" target="_blank"></a>\n' +
                                            '                         </div>\n' +
                                            '                         <div class="name hide-row fl" data-v-e6523e26="">\n' +
                                            '                             <div class="name-table" data-v-e6523e26="">\n' +
                                            '                                 <a data-v-e6523e26="" title="'+ data[i].goods.goodsName +'" target="_blank">'+ data[i].goods.goodsName +'</a>\n' +
                                            '                             </div>\n' +
                                            '                         </div>\n' +
                                            '                         <div class="operation" data-v-e6523e26="">\n' +
                                            '                             <a id="delete-btn" class="items-delete-btn" data-id="'+ data[i].id +'" data-v-e6523e26=""></a>\n' +
                                            '                         </div>\n' +
                                            '                         <div data-v-e6523e26="">\n' +
                                            '                             <div class="subtotal" data-v-e6523e26="" style="font-size: 14px">￥ '+ data[i].goods.price +'</div>\n' +
                                            '                         </div>\n' +
                                            '                         <div class="item-cols-num clearfix" data-v-e6523e26="" data-v-d10cb02a=""\n' +
                                            '                         style="height: 140px; display: flex;align-items: center;justify-content: center;">\n' +
                                            '                             <div class="select" data-v-d10cb02a="">\n' +
                                            '                                 <span class="down down-disabled" data-v-d10cb02a="">-</span>\n' +
                                            '                                 <span class="num" data-v-d10cb02a="">\n' +
                                            '                                     <input class="show" data-v-d10cb02a="" readonly="readonly" value="1" maxlength="2" type="text">\n' +
                                            '                                 </span>\n' +
                                            '                                 <span class="up" data-v-d10cb02a="">+</span>\n' +
                                            '                             </div>\n' +
                                            '                         </div>\n' +
                                            '                         <div class="price1" data-v-e6523e26="">￥ '+ data[i].goods.price +'</div>\n' +
                                            '                     </div>\n' +
                                            '                 </div>\n' +
                                            '             </div>\n' +
                                            '         </div>';
                                        $("#cart-data").append(label);
                                    }
                                    $(".shipping-total.shipping-num h4 i").text(cartSize);
                                    $(".shipping-total.shipping-num h5 i").text(cartSize);
                                    $(".shipping-total.shipping-price h4 i").text(totalPrice);
                                }
                            })
                        })
                    })
                </script>
            </div>
        </div>
        <!--  -->
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
        </div>
        <!-- /底部 -->
    </div>
</div>
</body>
</html>
