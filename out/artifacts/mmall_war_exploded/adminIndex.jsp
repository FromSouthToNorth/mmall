<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/27
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>后台主页</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script src="/js/jquery-3.4.1.js"></script>
    <script src="/js/bootstrap.js"></script>
</head>
<style>
    tbody td img {
        width: 60px;
        height: auto;
    }
    table tbody td {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    td button + button {
        margin-left: 6px;
    }
    .text-c {
        text-align: center;
    }
    th, td {
        font-size: 12px;
    }
    @-moz-document url-prefix() {
        fieldset { display: table-cell; }
    }
</style>
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${admin.userName} <span class="caret"></span></a>
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
        <!-- 商品 -->
        <div class="tab-content col-md-10 col-sm-10">
            <div role="tabpanel" class="tab-pane fade active in" id="goods">
                <form id="form-search" class="form-inline" novalidate="novalidate">
                    <div class="text-c">
                        日期范围：
                        <input class="form-control" id="minData" name="minData" type="date" style="width: 140px;">
                        -
                        <input class="form-control" id="maxData" name="maxData" type="date" style="width: 140px;">
                        <input class="form-control" type="text" name="goodsName" placeholder="商品名称" style="width: 250px;">
                        <button class="btn btn-success" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> 搜索</button>
                    </div>
                </form>
                <nav class="navbar navbar-default">
                    <button style="margin-left: 10px" type="button" class="btn btn-primary navbar-btn"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加商品</button>
                    <p style="padding-right: 30px" class="navbar-text navbar-right">共有数据： <a href="#" class="navbar-link">Mark Otto</a> 条</p>
                </nav>
                <div class="text-c" style="margin-top: 20px; margin-bottom: 70px">
                   <table class="table table-bordered table-hover table-condensed">
                       <thead>
                       <tr>
                           <th>id</th>
                           <th>略缩图</th>
                           <th>商品名称</th>
                           <th>描述</th>
                           <th>单价</th>
                           <th>创建时间</th>
                           <th>更新时间</th>
                           <th>操作</th>
                       </tr>
                       </thead>
                   </table>
                </div>
                <nav aria-label="Page navigation">
                    <ul class="pagination pull-right">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- 购物车 -->
            <div role="tabpanel" class="tab-pane fade" id="cart">购物车</div>
            <!-- 用户 -->
            <div role="tabpanel" class="tab-pane fade" id="user">用户</div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $.ajax({
            type:"post",
            url:"/adminGoods",
            data:{"method":"allGoods"},
            dataType:"json",
            success:function (data) {
                console.log(data);
                // let html = "";
                // for (let i = 0; i < data.length; i++) {
                //     html = '';
                //
                // }
            }
        })
    })
</script>
</body>
</html>
