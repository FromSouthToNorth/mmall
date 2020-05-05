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
<body>
<div id="app">
    <div class="main" data-v-c8a942a0="">
        <!-- 头部 -->
        <%@include file="jsp/head.jsp" %>
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
                                <li class="" data-v-541523cd=""><a id="shipping-address" data-v-541523cd="">收货地址</a>
                                </li>
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
                                    <span id="add-the-address" data-v-26da3b24="" data-v-26571f4f=""
                                          style="display:none;">
                                        <input class="default-btn add-the-address" data-v-26571f4f="" data-v-26da3b24=""
                                               data-v-612d7650=""
                                               type="button" readonly="readonly" value="添加地址" style="margin: 0;">
                                    </span>
                                </div>
                            </div>
                            <div data-v-26571f4f="">
                                <div data-v-0cbd190="" data-v-26571f4f="">
                                    <div class="no-info" data-v-0cbd190="" data-v-26571f4f="" style="position: static">
                                        <!-- 我的订单 -->
                                        <div id="order-form" data-v-0cbd190="" data-v-26571f4f=""
                                             style="padding: 100px 0px; text-align: center;">你还没创建过订单
                                        </div>
                                        <!-- /我的订单 -->
                                        <!--账户资料-->
                                        <div id="account-data-box" class="avatar-box" data-v-2b6c3c9e=""
                                             data-v-26571f4f="" style="display: none;">
                                            <div class="img-box" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                <img id="user-avatar" src="${user.avatar}" alt="" data-v-2b6c3c9e=""
                                                     data-v-26571f4f="">
                                            </div>
                                            <div class="r-box" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                <h3 data-v-2b6c3c9e="" data-v-26571f4f="" style="margin-left: 13px;">
                                                    修改头像</h3>
                                                <input id="avatar-btn" data-v-2b6c3c9e="" data-v-26571f4f=""
                                                       value="上传头像" class="uploading-btn" type="button"
                                                       readonly="readonly">
                                            </div>
                                        </div>
                                        <!---->
                                        <!-- 编辑头像 -->
                                        <div id="edit-avatar" class="edit-avatar" data-v-2b6c3c9e="" data-v-26571f4f=""
                                             style="display: none;">
                                            <div class="gray-box" data-v-26571f4f="" data-v-2b6c3c9e="">
                                                <div class="title" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                    <h2 data-v-26571f4f="">设置头像</h2>
                                                    <div data-v-26571f4f=""></div>
                                                </div>
                                                <div data-v-26571f4f="">
                                                    <div class="content" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                        <form action="/user?method=updateAvatar" method="post"
                                                              enctype="multipart/form-data">
                                                            <input type="hidden" name="id" value="${user.id}">
                                                            <div class="edit-l" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                                <div data-v-2b6c3c9e="" data-v-26571f4f=""
                                                                     style="width: 100px; height: 100px; border: 1px solid rgb(204,204,204); margin-bottom: 20px; overflow: hidden">
                                                                    <div data-v-2b6c3c9e="" data-v-26571f4f="">
                                                                        <img id="avatar-img" data-v-2b6c3c9e=""
                                                                             data-v-26571f4f="" src="${user.avatar}"
                                                                             alt="">
                                                                    </div>
                                                                </div>
<%--                                                                <div id="img-preview" data-v-2b6c3c9e=""--%>
<%--                                                                     data-v-26571f4f="" style="padding: 10px 0px;">头像预览--%>
<%--                                                                </div>--%>
                                                                <div class="btn" data-v-2b6c3c9e="" data-v-26571f4f="">
                                                                    <a data-v-2b6c3c9e="" data-v-26571f4f="">重新选择</a>
                                                                    <input id="new-avatar" name="avatar" onchange="updateImg(this)"
                                                                           data-v-2b6c3c9e="" data-v-26571f4f=""
                                                                           type="file" value="上传头像">
                                                                </div>
                                                            </div>
                                                            <div class="bootom-btn pa" data-v-2b6c3c9e=""
                                                                 data-v-26571f4f="">
                                                                <input id="avatar-close" class="default-btn"
                                                                       type="button" data-v-612d7650=""
                                                                       data-v-2b6c3c9e="" data-v-26571f4f=""
                                                                       readonly="readonly" value="取消"
                                                                       style="width: 140px; height: 40px; line-height: 40px">
                                                                <input id="update-avatar" class="ok-btn"
                                                                       data-v-612d7650="" data-v-2b6c3c9e=""
                                                                       data-v-26571f4f="" type="submit"
                                                                       readonly="readonly" value="确认"
                                                                       style="width: 140px; height: 40px; line-height: 40px">
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /编辑头像 -->
                                        <!-- /账户资料 -->
                                        <!-- 收货地址 -->
                                        <div id="address-title" class="table-title" data-v-26da3b24=""
                                             data-v-26571f4f="" style="display: none;">
                                            <span class="name" data-v-26da3b24="" data-v-26571f4f="">姓名</span>
                                            <span class="address" data-v-26da3b24="" data-v-26571f4f="">详细地址</span>
                                            <span class="tel" data-v-26da3b24="" data-v-26571f4f="">电话</span>
                                        </div>
                                        <div id="address-list" v-for="item in list" :key="item.id" data-v-26da3b24=""
                                             data-v-26571f4f="" style="display: none;">
                                            <!---->
                                            <!---->
                                            <!---->
                                            <!---->
                                        </div>
                                        <!-- 空收货地址 -->
                                        <div id="null-address" data-v-26da3b24="" data-v-26571f4f=""
                                             style="padding: 80px 0px; text-align: center; display: none;">
                                            <div data-v-26da3b24="" data-v-26571f4f=""
                                                 style="font-size: 20px;text-align: center;">你还没有添加收货地址
                                            </div>
                                            <div data-v-26da3b24="" data-v-26571f4f="" style="margin: 20px">
                                                <input class="default-btn add-the-address" data-v-612d7650=""
                                                       data-v-26da3b24="" data-v-26571f4f="" type="button"
                                                       readonly="readonly" value="添加收货地址">
                                                <input id="null-address-show" type="hidden" value="0">
                                                <input id="null-address-hide" type="hidden" value="0">
                                            </div>
                                        </div>
                                        <!-- /空收货地址 -->
                                        <!-- /收货地址 -->
                                        <!-- 编辑收货地址 -->
                                        <div id="edit-the-address" class="popup" data-v-d301be5e="" data-v-26da3b24=""
                                             style="display: none;">
                                            <div class="mask" data-v-d301be5e="">
                                                <div class="content" data-v-d301be5e="">
                                                    <div class="topbar" data-v-d301be5e="">
                                                        <div class="dialog-tit" data-v-d301be5e="">
                                                            <h4 data-v-d301be5e="">管理收货地址</h4>
                                                        </div>
                                                        <span id="close" class="close" data-v-d301be5e=""><i
                                                                data-v-d301be5e="">×</i></span>
                                                    </div>
                                                    <div class="s-content" data-v-d301be5e="">
                                                        <div class="md" data-v-26da3b24="" data-v-d301be5e="">
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <input id="user-name" data-v-26da3b24=""
                                                                       data-v-d301be5e="" type="text"
                                                                       placeholder="收货人姓名">
                                                            </div>
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <input id="user-phone" data-v-26da3b24=""
                                                                       data-v-d301be5e="" type="number"
                                                                       placeholder="手机号码">
                                                            </div>
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <input id="address" data-v-26da3b24=""
                                                                       data-v-d301be5e="" type="text"
                                                                       placeholder="收货地址">
                                                            </div>
                                                            <div data-v-26da3b24="" data-v-d301be5e="">
                                                                <label class="m-checkbox auto-login" data-v-26da3b24=""
                                                                       data-v-d301be5e="">
                                                                    <span class="m-checkbox__input is-clickable">
                                                                        <span class="m-checkbox__inner"></span>
                                                                        <input class="m-checkbox__original"
                                                                               type="hidden" value="0">
                                                                    </span>
                                                                    <span class="m-checkbox__label">设为默认</span>
                                                                </label>
                                                            </div>
                                                            <input id="save" class="btn save-btn" data-v-26da3b24=""
                                                                   data-v-d301be5e="" value="保存" type="button">
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

        </div>
        <!-- 底部 -->
        <%@include file="jsp/bottom.jsp" %>
        <!-- /底部 -->
    </div>
</div>
<!--  -->
<script>
</script>
<!--  -->
</body>
</html>
