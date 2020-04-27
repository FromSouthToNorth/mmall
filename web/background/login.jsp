<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/27
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script src="/js/jquery-3.4.1.js"></script>
    <script src="/js/bootstrap.js"></script>
</head>
<style>
    body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #eee;
    }

    .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
    }
    .form-signin .form-signin-heading,
    .form-signin .checkbox {
        margin-bottom: 20px;
    }
    .form-signin .checkbox {
        font-weight: normal;
    }
    .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
    }

    .form-signin input {
        margin-bottom: 20px;
    }

</style>
<body>
<div id="app">
    <div class="container">
        <form class="form-signin">
            <h2 class="form-signin-heading">Mmall 后台管理系统</h2>
            <input type="text" id="inputEmail" class="form-control" placeholder="管理员邮箱">
            <input type="password" id="inputPassword" class="form-control" placeholder="密码">
            <button id="login" class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        </form>
    </div>
</div>
<script>
$("#login").click(function () {
    let name = $("#inputEmail").val();
    let password = $("#inputPassword").val();
    if (name!=="" && password!=="") {
        $.ajax({
            url:"/user",
            type:"post",
            data:{"method": "admin", "userName": name, "password": password},
            success:function (result) {
                console.log(result);
            }
        });
    } else {
        alert("请输入账户名，和密码！")
    }
})
</script>
</body>
</html>
