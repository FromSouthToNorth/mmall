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
    <link rel="stylesheet" href="css/user.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/index.js"></script>
    <script src="js/user.js"></script>
</head>
<style>

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
                                        <input class="default-btn add-the-address" data-v-26571f4f="" data-v-26da3b24="" data-v-612d7650=""
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
                                            <!---->
                                            <!---->
                                            <!---->
                                            <!---->
                                        </div>
                                        <!-- 空收货地址 -->
                                        <div id="null-address" data-v-26da3b24="" data-v-26571f4f="" style="padding: 80px 0px; text-align: center; display: none;">
                                            <div data-v-26da3b24="" data-v-26571f4f="" style="font-size: 20px;text-align: center;">你还没有添加收货地址</div>
                                            <div data-v-26da3b24="" data-v-26571f4f="" style="margin: 20px">
                                                <input class="default-btn add-the-address" data-v-612d7650="" data-v-26da3b24="" data-v-26571f4f="" type="button" readonly="readonly" value="添加收货地址">
                                                <input id="null-address-show" type="hidden" value="0">
                                                <input id="null-address-hide" type="hidden" value="0">
                                            </div>
                                        </div>
                                        <!-- /空收货地址 -->
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
                                                                <input id="user-name" data-v-26da3b24="" data-v-d301be5e="" type="text" placeholder="收货人姓名">
                                                            </div>
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <input id="user-phone" data-v-26da3b24="" data-v-d301be5e="" type="number" placeholder="手机号码">
                                                            </div>
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <input id="address" data-v-26da3b24="" data-v-d301be5e="" type="text" placeholder="收货地址">
                                                            </div>
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <label class="m-checkbox auto-login" data-v-26da3b24="" data-v-d301be5e="">
                                                                    <span class="m-checkbox__input is-clickable">
                                                                        <span class="m-checkbox__inner"></span>
                                                                        <input class="m-checkbox__original" type="hidden" value="0">
                                                                    </span>
                                                                    <span class="m-checkbox__label">设为默认</span>
                                                                </label>
                                                            </div>
                                                            <input id="save" class="btn save-btn" data-v-26da3b24="" data-v-d301be5e="" value="保存" type="button">
                                                            <input id="update-type" type="hidden" value="">
                                                            <input id="address-id" type="hidden" value="">
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
