<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/27
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台主页</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script src="/js/jquery-3.4.1.js"></script>
    <script src="/js/bootstrap.js"></script>
</head>
<body>
<div>
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Mmall 后台管理系统</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">user <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="container">
        <div class="col-md-2 col-sm-2">
            <!-- Nav tabs -->
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation" class="active"><a href="#goods" aria-controls="goods" role="tab" data-toggle="tab">商品</a></li>
                <li role="presentation"><a href="#cart" aria-controls="cart" role="tab" data-toggle="tab">购物车</a></li>
                <li role="presentation"><a href="#user" aria-controls="user" role="tab" data-toggle="tab">用户</a></li>
            </ul>
        </div>
        <!-- Tab panes -->
        <div class="tab-content col-md-10 col-sm-10">
            <div role="tabpanel" class="tab-pane fade active" id="goods">全部商品</div>
            <div role="tabpanel" class="tab-pane fade" id="cart">购物车</div>
            <div role="tabpanel" class="tab-pane fade" id="user">用户</div>
        </div>
    </div>
</div>
</body>
</html>
