<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/17
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
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

    body{
        font-family: PingFang SC,Helvetica Neue,Helvetica,Arial,Hiragino Sans GB,Microsoft Yahei,\5FAE软雅黑,STHeiti,\534E文细黑,sans-serif;
        color: #666;
        font-size: 14px;
    }
</style>
<body>
<div>
<div class="login v2 main">
    <div class="wrapper">
        <div class="dialog dialog_shadow" style="display: block; margin-top: -362px">
            <div class="title">
                <h4>使用 MMall 账号 登录官网</h4>
            </div>
            <div class="content">
                <ul class="common-from">
                    <li class="username">
                        <div class="input">
                            <input type="text" id="name" name="userName" placeholder="账号">
                        </div>
                    </li>
                    <li>
                        <div class="input">
                            <input type="password" id="password" name="password" placeholder="密码">
                        </div>
                    </li>
                    <li class="pr" style="text-align: right;">
                        <labeel class="el-checkbox auto-login">
                            <span class="el-checkbox__input">
                                <span class="el-checkbox__inner"></span>
                                <input class="el-checkbox__original" type="checkbox" value="">
                            </span>
                            <span class="el-checkbox__label">记住我</span>
                        </labeel>
                        <a class="register" href="/register.jsp">注册 MMall 账号</a>
                        <a style="padding: 1px 0px 0px 10px" href="">忘记密码?</a>
                    </li>
                </ul>
                <div style="margin-top: 25px;">
                    <input class="main-btn" id="login" type="button" value="登录" style="margin: 0px; width: 100%; height: 48px; font-size: 18px; line-height: 48px">
                </div>
            </div>
        </div>
        <script>
            $(function () {
                $("#login").click(function () {
                    let username = $("#name").val();
                    let password = $("#password").val();
                    $.ajax({
                        type:'post',
                        url:'/user',
                        data:{'method':'login', 'userName': username, 'password' : password},
                        success:function (result) {
                            if (result !== 'adminIndex.jsp') {
                                alert(result);
                                return;
                            }
                            window.location.href = result;
                        }
                    });
                });
            });
        </script>
    </div>
</div>
</div>
</body>
</html>
