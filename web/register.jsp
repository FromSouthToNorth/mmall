<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/17
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="css/login.css">
    <script src="js/jquery-3.4.1.js"></script>
</head>
<style>
    * {
        padding: 0;
        margin: 0;
    }

    li {
        list-style-type: none;
    }

    a {
        font-style: normal;
        text-decoration: none;
        color: #5079d9;
        cursor: pointer;
        transition: all .15s ease-out;
    }

    body {
        font-family: PingFang SC, Helvetica Neue, Helvetica, Arial, Hiragino Sans GB, Microsoft Yahei, \5FAE软雅黑, STHeiti, \534E文细黑, sans-serif;
        color: #666;
        font-size: 14px;
    }

    .register h4 {
        padding: 0;
        text-align: center;
        color: #666;
        border-bottom: 1px solid #dcdcdc;
        box-shadow: none;
        font-weight: 700;
        font-size: 20px;
        height: 60px;
        line-height: 60px;
    }
</style>
<body>
<div>
    <div class="login v2 main">
        <div class="wrapper">
            <div class="dialog dialog_shadow" style="display: block; margin-top: -362px">
                <div class="register">
                    <h4>注册 MMall 账号</h4>
                    <div class="content" style="margin-top: 20px">
                        <ul class="common-from">
                            <li class="username">
                                <div class="input">
                                    <input type="text" id="username" name="userName" placeholder="账号">
                                </div>
                            </li>
                            <li>
                                <div class="input">
                                    <input type="password" id="password" name="password" placeholder="密码">
                                </div>
                            </li>
                            <li>
                                <div class="input">
                                    <input type="password" id="passwordOk" name="password" placeholder="重复密码">
                                </div>
                            </li>
                        </ul>
                        <div style="margin-top: 25px;">
                            <input class="main-btn" id="register" type="button" value="注册"
                                   style="margin: 0px; width: 100%; height: 48px; font-size: 18px; line-height: 48px">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(function () {
                $("#register").click(function () {
                    let username = $("#username").val();
                    let password = $("#password").val();
                    let passwordOk = $("#passwordOk").val();
                    $.ajax({
                        type: 'post',
                        url: '/user',
                        data: {'method': 'register', 'userName': username, 'password': passwordOk},
                        success: function (url) {
                            window.location.href = url
                        }
                    });
                });
            });
        </script>
    </div>
</div>
</body>
</html>
