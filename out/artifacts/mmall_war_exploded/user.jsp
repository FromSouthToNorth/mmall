<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/22
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户</title>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/index.js"></script>
</head>
<style>
    .w[data-v-541523cd] {
        padding-top: 40px;
    }
    .account-sidebar[data-v-541523cd] {
        width: 210px;
        border-radius: 6px;
    }
    .gray-box {
        overflow: hidden;
        background: #fff;
        border: 1px solid #cdcdcd;
        border-color: rgba(0,0,0,.14);
        box-shadow: 0 3px 8px -6px rgba(0,0,0,.1);
    }
    .content[data-v-541523cd] {
        display: -ms-flexbox;
        display: flex;
        height: 100%;
    }
    .account-sidebar .avatar[data-v-541523cd] {
        padding-top: 20px;
        border-radius: 10px;
        text-align: center;
    }
    .account-sidebar .avatar img[data-v-541523cd] {
        width: 168px;
        height: 168px;
    }
    .account-sidebar .avatar h5[data-v-541523cd] {
        font-size: 18px;
        line-height: 48px;
        font-weight: 700;
    }
    .account-sidebar .account-nav[data-v-541523cd] {
        padding-top: 15px;
    }
    .account-sidebar .account-nav li[data-v-541523cd] {
        position: relative;
        height: 48px;
        border-top: 1px solid #ebebeb;
        line-height: 48px;
    }
    li {
        list-style-type: none;
    }
    .account-sidebar .account-nav li.current a[data-v-541523cd] {
        position: relative;
        z-index: 1;
        height: 50px;
        background-color: #98afee;
        line-height: 50px;
        color: #fff;
    }
    .account-sidebar .account-nav li:hover a[data-v-541523cd] {
        position: relative;
        z-index: 1;
        height: 50px;
        background-color: #98afee;
        line-height: 50px;
        color: #fff;
    }
    .account-sidebar .account-nav li a[data-v-541523cd] {
        display: block;
    }
    .account-content[data-v-541523cd] {
        margin-left: 20px;
        -ms-flex: 1;
        flex: 1;
    }
    .avatar-box[data-v-2b6c3c9e] {
        height: 124px;
        display: -ms-flexbox;
        margin: 0 30px 30px;
        border-bottom: 1px solid #dadada;
        line-height: 30px;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
    }
    .avatar-box .img-box[data-v-2b6c3c9e] {
        width: 80px;
        height: 80px;
        border-radius: 5px;
        overflow: hidden;
    }
    .avatar-box img[data-v-2b6c3c9e] {
        display: block;
        width: 100%;
        height: 100%;
    }
    .avatar-box .r-box[data-v-2b6c3c9e] {
        margin-left: 20px;
    }
    .avatar-box .r-box h3[data-v-2b6c3c9e] {
        font-size: 18px;
        font-weight: 400;
        color: #333;
    }
    .uploading-btn[data-v-2b6c3c9e]:hover,
    .ok-btn[data-v-2b6c3c9e]:hover {
        background-color: #6c8cd4;
        background-image: linear-gradient(180deg,#6c8cd4,#4769c2);
    }
    .uploading-btn[data-v-2b6c3c9e],
    .ok-btn[data-v-26571f4f],
    .save-btn[data-v-26da3b24] {
        width: 100px;
        height: 30px;
        line-height: 28px;
        vertical-align: middle;
        border: 1px solid #5c81e3;
        border-radius: 4px;
        font-size: 12px;
        color: #fff;
        background-color: #678ee7;
        background-image: linear-gradient(180deg,#678ee7,#5078df);
    }
    .avatar-box[data-v-2b6c3c9e] {
        height: 124px;
        display: -ms-flexbox;
        margin: 0 30px 30px;
        border-bottom: 1px solid #dadada;
        line-height: 30px;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
    }
    .avatar-box .img-box[data-v-2b6c3c9e] {
        width: 80px;
        height: 80px;
        border-radius: 5px;
        overflow: hidden;
    }
    .avatar-box img[data-v-2b6c3c9e] {
        display: block;
        width: 100%;
        height: 100%;
    }
    .avatar-box .r-box[data-v-2b6c3c9e] {
        margin-left: 20px;
    }
    .edit-avatar[data-v-2b6c3c9e] {
        z-index: 9999;
        position: fixed;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0,0,0,.5);
    }
    .edit-avatar > div[data-v-2b6c3c9e] {
        box-sizing: content-box;
        width: 460px;
        height: 400px;
        margin: 0;
    }
    .close[data-v-2b6c3c9e],
    .edit-avatar[data-v-2b6c3c9e] {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        -ms-flex-pack: center;
        justify-content: center;
    }
    .edit-avatar .content[data-v-2b6c3c9e] {
        display: -ms-flexbox;
        display: flex;
        padding: 45px 100px 0;
    }
    .edit-avatar .edit-l[data-v-2b6c3c9e] {
        width: 100px;
        text-align: center;
    }
    #avatar-img[data-v-2b6c3c9e] {
        display: block;
        width: 100px;
        height: 100px;
        cursor: pointer;
    }
    #img-preview {
        cursor: pointer;
    }
    #img-preview:hover {
        color: #5683ea;
    }
    .edit-avatar .btn[data-v-2b6c3c9e] {
        width: 80px;
        height: 30px;
        margin-left: 10px;
        position: relative;
        text-align: center;
        line-height: 30px;
        text-shadow: hsla(0,0%,100%,.496094) 0 1px 0;
        border: 1px solid #e6e6e6;
        border-radius: 10px;
    }
    .edit-avatar .btn a[data-v-2b6c3c9e] {
        color: #666;
        display: block;
        width: 100%;
        height: 100%;
    }
    .edit-avatar input[type="file"][data-v-2b6c3c9e] {
        position: absolute;
        right: 0;
        left: 0;
        top: 0;
        opacity: 0;
        width: 80px;
        height: 30px;
        cursor: pointer;
        box-sizing: border-box;
        border: 15px solid #000;
        overflow: hidden;
    }
    .bootom-btn[data-v-2b6c3c9e] {
        padding: 0 15px;
        border-top: 1px solid #e6e6e6;
        bottom: 0;
        height: 60px;
        right: 0;
        left: 0;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        -ms-flex-pack: justify;
        justify-content: space-between;
    }
    .default-btn[data-v-2b6c3c9e] {
        border: 1px solid #e1e1e1;
        border-radius: 4px;
        font-size: 12px;
        color: #646464;
        background-color: #f9f9f9;
        background-image: linear-gradient(180deg,#fff,#f9f9f9);
    }
    .default-btn[data-v-612d7650],
    .disabled-btn[data-v-612d7650],
    .main-btn[data-v-612d7650] {
        width: 100px;
        height: 30px;
        line-height: 28px;
        vertical-align: middle;
    }
    .table-title[data-v-26da3b24] {
        position: relative;
        z-index: 1;
        line-height: 38px;
        height: 38px;
        padding: 0 0 0 38px;
        font-size: 12px;
        background: #eee;
        border-bottom: 1px #dbdbdb;
        border-bottom-color:  rgba(0,0,0,.08);
    }
    .table-title span[data-v-26da3b24] {
        width: 137px;
        float: left;
        text-align: center;
        color: #838383;
    }
    .table-title span.name[data-v-26da3b24] {
        float: left;
        text-align: left;
    }
    .table-title .address[data-v-26da3b24] {
        margin-left: 115px;
    }
    .table-title .tel[data-v-26da3b24] {
        margin-left: 195px;
    }
    .address-item[data-v-26da3b24] {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        height: 115px;
        text-align: center;
    }
    .address-item .name[data-v-26da3b24] {
        width: 106px;
    }
    .address-item .address-msg[data-v-26da3b24] {
        -ms-flex: 1;
        flex: 1;
    }
    .address-item .telephone[data-v-26da3b24] {
        width: 160px;
    }
    .address-item .defalut[data-v-26da3b24] {
        width: 80px;
    }
    .address-item .defalut > a[data-v-26da3b24] {
        text-align: center;
    }
    .defalut-address[data-v-26da3b24] {
        font-size: 12px;
        color: #626262;
        display: block;
        pointer-events: none;
        cursor: default;
    }
    .address-item .operation[data-v-26da3b24] {
        width: 135px;
    }
    .button--small {
        padding: 7px 9px;
        font-size: 12px;
        border-radius: 4px;
    }
    .m-button {
        display: inline-block;
        line-height: 1;
        white-space: nowrap;
        cursor: pointer;
        background: #fff;
        border: 1px solid #c4c4c4;
    }
    .m-button + .m-button{
        margin-left: 10px;
    }
    .button--primary {
        color: #fff;
        background-color: #20a0ff;
        border-color: #20a0ff;
    }
    .button--danger {
        color: #fff;
        background-color: #ff4949;
        border-color: #ff4949;
    }
    .button--primary:hover {
        background: #4db3ff;
        border-color: #4db3ff;
        color: #fff;
    }
    .button--danger:hover {
        background: #ff6d6d;
        border-color: #ff6d6d;
        color: #fff;
    }
    .popup[data-v-d301be5e] {
        position: fixed;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        z-index: 1000;
        text-align: center;
        transition: opacity .2s ease-in;
    }
    .popup .mask[data-v-d301be5e] {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-pack: center;
        justify-content: center;
        -ms-flex-align: center;
        align-items: center;
        position: absolute;
        width: 100%;
        height: 100%;
        background: rgba(0,0,0,.5);
    }
    .popup .content[data-v-d301be5e] {
        width: 30%;
        background: #fff;
        border-radius: 10px;
    }
    .popup .topbar[data-v-d301be5e] {
        position: relative;
        z-index: 10;
        overflow: hidden;
        width: 100%;
        height: 60px;
        background: #f5f5f5;
        background: linear-gradient(#fff,#f5f5f5);
        border-bottom: 1px solid #dcdcdc;
        border-radius: 10px 10px 0 0;
        box-shadow: 2px 0 5px rgba(0,0,0,.1);
    }
    .popup .dialog-tit[data-v-d301be5e] {
        height: 60px;
        padding: 0 15px;
        line-height: 60px;
    }
    .popup .dialog-tit h4[data-v-d301be5e] {
        text-align: center;
        font-size: 18px;
        font-weight: 400;
        color: #666;
    }
    .popup .close[data-v-d301be5e] {
        position: absolute;
        right: 10px;
        top: 50%;
        width: 20px;
        height: 20px;
        cursor:pointer;
    }
    .popup .close i[data-v-d301be5e] {
        font-size: 18px;
        font-weight: 600;
        cursor:pointer;
    }
    .popup .s-content[data-v-d301be5e] {
        padding: 30px 15px;
    }
    .md > div[data-v-26da3b24] {
        text-align: left;
        margin-bottom: 15px;
    }
    .md > div > input[data-v-26da3b24] {
        width: 100%;
        height: 50px;
        font-size: 18px;
        padding: 10px 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-shadow: inset 0 3px 5px -4px rgba(0,0,0,.4),inset -1px 0 3px -2px rgba(0,0,0,.1);
        line-height: 46px;
    }
    .btn[data-v-26da3b24] {
        margin: 0;
        width: 100%;
        height: 50px;
        font-size: 14px;
        line-height: 48px;
    }
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none !important;
        margin: 0;
    }
    input[type="number"] {
        -moz-appearance: textfield;
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
        <div class="w" data-v-541523cd="">
            <div class="content" data-v-541523cd="">
                <div class="account-sidebar" data-v-541523cd="">
                    <div class="avatar gray-box" data-v-541523cd="">
                        <div data-v-541523cd="">
                            <img data-v-541523cd="" src="${user.avatar}" alt="">
                            <h5 data-v-541523cd="">${user.userName}</h5>
                        </div>
                        <div class="box-inner" data-v-541523cd="">
                            <ul class="account-nav" data-v-541523cd="">
                                <li class="current" data-v-541523cd=""><a id="mine-for" data-v-541523cd="">我的订单</a></li>
                                <li class="" data-v-541523cd=""><a id="account-data" data-v-541523cd="">账户资料</a></li>
                                <li class="" data-v-541523cd=""><a id="shipping-address" data-v-541523cd="">收货地址</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div class="account-content" data-v-541523cd="">
                    <div data-v-0cbd190="">
                        <div class="gray-box" data-v-26571f4f="" data-v-0cbd190="">
                            <div class="title" data-v-26571f4f="">
                                <h2 id="title" data-v-26571f4f="">我的订单</h2>
                                <div data-v-26571f4f="">
                                    <span id="add-the-address" data-v-26da3b24="" data-v-26571f4f="" style="display:none;">
                                        <input class="default-btn" data-v-26571f4f="" data-v-26da3b24="" data-v-612d7650=""
                                        type="button" readonly="readonly" value="添加地址" style="margin: 0;">
                                    </span>
                                </div>
                            </div>
                            <div data-v-26571f4f="">
                                <div data-v-0cbd190="" data-v-26571f4f="">
                                    <div class="no-info" data-v-0cbd190="" data-v-26571f4f="" style="position: static">
                                        <!-- 我的订单 -->
                                        <div id="order-form" data-v-0cbd190="" data-v-26571f4f="" style="padding: 100px 0px; text-align: center;">你还没创建过订单</div>
                                        <!-- /我的订单 -->
                                        <!--账户资料-->
                                        <div id="account-data-box" class="avatar-box" data-v-2b6c3c9e="" data-v-26571f4f="" style="display: none;">
                                            <div class="img-box" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                <img id="user-avatar" src="${user.avatar}" alt="" data-v-2b6c3c9e="" data-v-26571f4f="">
                                            </div>
                                            <div class="r-box" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                <h3 data-v-2b6c3c9e="" data-v-26571f4f="" style="margin-left: 13px;">修改头像</h3>
                                                <input id="avatar-btn" data-v-2b6c3c9e="" data-v-26571f4f="" value="上传头像" class="uploading-btn" type="button" readonly="readonly">
                                            </div>
                                        </div>
                                        <!---->
                                        <!-- 编辑头像 -->
                                        <div id="edit-avatar" class="edit-avatar" data-v-2b6c3c9e="" data-v-26571f4f="" style="display: none;">
                                            <div class="gray-box" data-v-26571f4f="" data-v-2b6c3c9e="">
                                                <div class="title" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                    <h2 data-v-26571f4f="">设置头像</h2>
                                                    <div data-v-26571f4f=""></div>
                                                </div>
                                                <div data-v-26571f4f="">
                                                    <div class="content" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                        <form action="/user?method=updateAvatar" method="post" enctype="multipart/form-data">
                                                            <input type="hidden" name="id" value="${user.id}">
                                                            <div class="edit-l" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                                <div data-v-2b6c3c9e="" data-v-26571f4f="" style="width: 100px; height: 100px; border: 1px solid rgb(204,204,204); margin-bottom: 20px; overflow: hidden">
                                                                    <div data-v-2b6c3c9e="" data-v-26571f4f="">
                                                                        <img id="avatar-img" data-v-2b6c3c9e="" data-v-26571f4f="" src="${user.avatar}" alt="">
                                                                    </div>
                                                                </div>
                                                                <div id="img-preview" data-v-2b6c3c9e="" data-v-26571f4f="" style="padding: 10px 0px;">头像预览</div>
                                                                <div class="btn" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                                    <a data-v-2b6c3c9e="" data-v-26571f4f="">重新选择</a>
                                                                    <input id="new-avatar" name="avatar" data-v-2b6c3c9e="" data-v-26571f4f="" type="file" value="上传头像">
                                                                </div>
                                                            </div>
                                                            <div class="bootom-btn pa" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                                <input id="avatar-close" class="default-btn" type="button" data-v-612d7650="" data-v-2b6c3c9e="" data-v-26571f4f=""
                                                                       readonly="readonly" value="取消" style="width: 140px; height: 40px; line-height: 40px">
                                                                <input id="update-avatar" class="ok-btn" data-v-612d7650="" data-v-2b6c3c9e="" data-v-26571f4f="" type="submit"
                                                                       readonly="readonly" value="确认" style="width: 140px; height: 40px; line-height: 40px">
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /编辑头像 -->
                                        <!-- /账户资料 -->
                                        <!-- 收货地址 -->
                                        <div id="address-title" class="table-title" data-v-26da3b24="" data-v-26571f4f="" style="display: none;">
                                            <span class="name" data-v-26da3b24="" data-v-26571f4f="">姓名</span>
                                            <span class="address" data-v-26da3b24="" data-v-26571f4f="">详细地址</span>
                                            <span class="tel" data-v-26da3b24="" data-v-26571f4f="">电话</span>
                                        </div>
                                        <div id="address-list" data-v-26da3b24="" data-v-26571f4f="" style="display: none;">
                                            <div class="address-item" data-v-26da3b24="" data-v-26571f4f="">
                                                <div class="name" data-v-26da3b24="" data-v-26571f4f="">123</div>
                                                <div class="address-msg" data-v-26da3b24="" data-v-26571f4f="">123</div>
                                                <div class="telephone" data-v-26da3b24="" data-v-26571f4f="">123</div>
                                                <div class="defalut" data-v-26da3b24="" data-v-26571f4f="">
                                                    <a class="defalut-address" data-v-26da3b24="" data-v-26571f4f="">（默认地址）</a>
                                                </div>
                                                <div class="operation" data-v-26da3b24="" data-v-26571f4f="">
                                                    <button id="update-address" class="m-button button--primary button--small" type="button" data-v-26da3b24="" data-v-26571f4f="" data-id="">编辑</button>
                                                    <button id="delete-address" class="m-button button--danger button--small" type="button" data-v-26da3b24="" data-v-26571f4f="" data-id="">删除</button>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /收货地址 -->
                                        <!-- 编辑收货地址 -->
                                        <div id="edit-the-address" class="popup" data-v-d301be5e="" data-v-26da3b24="" style="display: none;">
                                            <div class="mask" data-v-d301be5e="">
                                                <div class="content" data-v-d301be5e="">
                                                    <div class="topbar" data-v-d301be5e="">
                                                        <div class="dialog-tit" data-v-d301be5e="">
                                                            <h4 data-v-d301be5e="">管理收货地址</h4>
                                                        </div>
                                                        <span id="close" class="close" data-v-d301be5e=""><i data-v-d301be5e="">×</i></span>
                                                    </div>
                                                    <div class="s-content" data-v-d301be5e="">
                                                        <div class="md" data-v-26da3b24="" data-v-d301be5e="">
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <input data-v-26da3b24="" data-v-d301be5e="" type="text" placeholder="收货人姓名">
                                                            </div>
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <input data-v-26da3b24="" data-v-d301be5e="" type="number" placeholder="手机号码">
                                                            </div>
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <input data-v-26da3b24="" data-v-d301be5e="" type="text" placeholder="收货地址">
                                                            </div>
                                                            <input class="btn save-btn" data-v-26da3b24="" data-v-d301be5e="" value="保存" type="button">
                                                            <input id="update-type" type="hidden" value="">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--  -->
            <script>
                $(function () {
                    $(".account-nav li").click(function () {
                        $(this).addClass("current").siblings().removeClass("current");
                    });
                    $("#mine-for").click(function () {
                        $("#title").text("我的订单");
                        $("#order-form").show();
                        $("#account-data-box").hide();
                        $("#address-title").hide();
                        $("#address-list").hide();
                        $("#add-the-address").hide();
                    });
                    $("#account-data").click(function () {
                        $("#title").text("我的资料");
                        $("#order-form").hide();
                        $("#account-data-box").show();
                        $("#address-title").hide();
                        $("#address-list").hide();
                        $("#add-the-address").hide();
                    });
                    $("#shipping-address").click(function () {
                        $("#title").text("收货地址");
                        $("#order-form").hide();
                        $("#account-data-box").hide();
                        $("#address-title").show();
                        $("#address-list").show();
                        $("#add-the-address").show();
                    });
                    $("#avatar-btn").click(function () {
                        $("#edit-avatar").show();
                    });
                    $("#avatar-close").click(function () {
                        $("#edit-avatar").hide();
                    });
                    // 添加地址按钮
                    $("#add-the-address").click(function () {
                        $("#edit-the-address").show();
                        $("#update-type").val("save");
                        alert($("#update-type").val());
                    });
                    $("#close").click(function () {
                        $("#edit-the-address").hide();
                    });
                    // 编辑地址按钮
                    $(document).on("click", "#update-address", function () {
                        $("#edit-the-address").show();
                        $("#update-type").val("update");
                        alert($("#update-type").val());
                    });
                    $(document).on("click", "#delete-address", function () {
                    });
                    let avatar = document.getElementById("img-preview");
                    avatar.onclick = function () {
                        let f = document.getElementById("new-avatar").files[0];
                        let url = URL.createObjectURL(f);
                        document.getElementById("avatar-img").src = url
                    }
                    $("#update-avatar").click(function () {
                        let f = document.getElementById("new-avatar").files[0];
                        let url = URL.createObjectURL(f);
                        document.getElementById("user-avatar").src = url
                    });
                })
            </script>
            <!--  -->
        </div>
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
