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
    tbody tr td img {
        width: 60px;
        height: auto;
    }

    table tbody td {
        overflow: hidden;
        text-overflow: ellipsis;
    }

    td button + button {
        margin-left: 6px;
    }

    .text-c {
        text-align: center;
    }

    th, td {
        font-size: 12px;
        text-align: center;
    }

    .table th,
    .table td {
        word-break: break-all;
    }

    @-moz-document url-prefix() {
        fieldset {
            display: table-cell;
        }
    }

    .form-group img {
        display: block;
        margin-bottom: 5px;
        width: 90px;
        height: auto;
    }
    tbody td a {
        color: #000;
        display: inline-block;
    }
    .ml-5 {
        margin-left: 6px;
    }
    .label {
        display: inline-block;
    }
</style>
<body>
<div>
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Mmall 后台管理系统</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">${admin.userName} <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/adminLogin.jsp">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="container">
        <div class="col-md-2 col-sm-2">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation" class="active"><a href="#goods" aria-controls="goods" role="tab"
                                                          data-toggle="tab">商品</a></li>
                <li role="presentation" class=""><a href="#user" aria-controls="user" role="tab"
                                                    data-toggle="tab">用户</a></li>
            </ul>
        </div>
        <div class="tab-content col-md-10 col-sm-10">
            <!-- 商品 -->
            <div role="tabpanel" class="tab-pane fade in active" id="goods">
                <form id="form-search" class="form-inline" novalidate="novalidate">
                    <div class="text-c">
                        日期范围：
                        <input class="form-control" id="minDate" name="minData" type="date" style="width: 140px;">
                        -
                        <input class="form-control" id="maxDate" name="maxData" type="date" style="width: 140px;">
                        <input class="form-control" id="goodsName" type="text" name="goodsName" placeholder="商品名称"
                               style="width: 250px;">
                        <button id="goods-search" class="btn btn-primary" type="button"><span
                                class="glyphicon glyphicon-search" aria-hidden="true"></span> 搜索
                        </button>
                        <button id="refresh" class="btn btn-warning pull-right btn-sm" type="button"><span
                                class="glyphicon glyphicon-refresh" aria-hidden="true"></span></button>
                    </div>
                </form>
                <nav class="navbar navbar-default">
                    <button id="add-goods" style="margin-left: 10px" data-toggle="modal" data-target="#save-goods"
                            type="button" class="btn btn-primary navbar-btn btn-sm"><span
                            class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加商品
                    </button>
                    <button style="margin-left: 10px" data-toggle="modal" data-target="#add-goods-type" type="button"
                            class="btn btn-primary navbar-btn btn-sm"><span class="glyphicon glyphicon-plus"
                                                                            aria-hidden="true"></span> 添加商品类型
                    </button>
                    <p style="padding-right: 30px" class="navbar-text navbar-right">共有数据： <a href="#" id="total"
                                                                                             class="navbar-link"></a> 条
                    </p>
                </nav>
                <div style="margin-top: 20px;">
                    <table class="table table-bordered table-hover table-condensed">
                        <thead>
                        <tr>
                            <th style="min-width: 28px;">id</th>
                            <th style="min-width: 110px">略缩图</th>
                            <th>商品名称</th>
                            <th>描述</th>
                            <th style="min-width: 50px;">单价</th>
                            <th style="min-width: 74px;">创建时间</th>
                            <th style="min-width: 74px;">更新时间</th>
                            <th style="min-width: 112px;">操作</th>
                        </tr>
                        </thead>
                        <tbody id="goodsList">
                        </tbody>
                    </table>
                </div>
                <nav aria-label="Page navigation">
                    <ul id="goods-paging" class="pagination pull-right">
                    </ul>
                </nav>
                <div id="save-goods" class="modal fade fade bs-example-modal-sm" tabindex="-1" role="dialog">
                    <div class="modal-dialog modal-sm" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">添加商品</h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label for="img-file">商品封面</label>
                                        <img id="s-goods-img" src="" alt="未选择封面" class="img-rounded">
                                        <input id="img-file" onchange="updateImg(this)" name="goodsImg" type="file">
                                    </div>
                                    <div class="form-group">
                                        <label for="s-goods-name">商品名称</label>
                                        <input id="s-goods-name" name="goodsName" type="text" class="form-control"
                                               placeholder="商品名称">
                                    </div>
                                    <div class="form-group">
                                        <label for="s-goods-price">商品价格</label>
                                        <input id="s-goods-price" name="goodsPrice" type="number" class="form-control"
                                               placeholder="商品价格">
                                    </div>
                                    <div class="form-group">
                                        <label for="s-goods-title">商品描述</label>
                                        <textarea id="s-goods-title" name="goodsTitle" class="form-control"
                                                  rows="3"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="s-goods-type">商品类型: </label>
                                        <div class="btn-group">
                                            <input type="button" id="s-goods-type" name="goodsType"
                                                   class="btn btn-sm btn-default" value="选择类型">
                                            <button type="button" class="btn  btn-sm btn-default dropdown-toggle"
                                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="caret"></span>
                                                <span class="sr-only">Toggle Dropdown</span>
                                            </button>
                                            <ul id="goods-type-list" class="dropdown-menu">
                                            </ul>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                <button type="button" id="push-goods" class="btn btn-primary">提交</button>
                                <input type="hidden" id="operation-type" value="">
                                <input type="hidden" id="goods-id" value="">
                            </div>
                        </div>
                    </div>
                </div>
                <div id="add-goods-type" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog">
                    <div class="modal-dialog modal-sm" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">添加商品类型</h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label for="goods-type">类型</label>
                                        <input type="text" class="form-control" id="goods-type" placeholder="商品类型">
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                <button type="button" id="push-goods-type" class="btn btn-primary">提交</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 用户 -->
            <div role="tabpanel" class="tab-pane fade" id="user">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#user-vip" aria-controls="user-vip" role="tab"
                                                              data-toggle="tab">会员用户</a></li>
                    <li role="presentation"><a href="#admin" aria-controls="admin" role="tab" data-toggle="tab">管理员</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <!---->
                    <div role="tabpanel" class="tab-pane fade in active" id="user-vip"  style="margin-top: 20px">
                        <form id="u-form-search" class="form-inline" novalidate="novalidate">
                            <div class="text-c">
                                日期范围：
                                <input class="form-control" id="u-minDate" name="minData" type="date"
                                       style="width: 140px;">
                                -
                                <input class="form-control" id="u-maxDate" name="maxData" type="date"
                                       style="width: 140px;">
                                <input class="form-control" id="user-name" type="text" name="goodsName"
                                       placeholder="用户名称"
                                       style="width: 250px;">
                                <button id="user-search" class="btn btn-primary" type="button"><span
                                        class="glyphicon glyphicon-search" aria-hidden="true"></span> 搜索
                                </button>
                                <button id="u-refresh" class="btn btn-warning pull-right btn-sm" type="button"><span
                                        class="glyphicon glyphicon-refresh" aria-hidden="true"></span></button>
                            </div>
                        </form>
                        <nav class="navbar navbar-default">
                            <button id="add-user" style="margin-left: 10px" data-toggle="modal"
                                    data-target="#save-user"
                                    type="button" class="btn btn-primary navbar-btn btn-sm"><span
                                    class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加用户
                            </button>
                            <p style="padding-right: 30px" class="navbar-text navbar-right">共有数据： <a href="#"
                                                                                                     id="u-total"
                                                                                                     class="navbar-link"></a>
                                条
                            </p>
                        </nav>
                        <div style="margin-top: 20px;">
                            <table class="table table-bordered table-hover table-condensed">
                                <thead>
                                <tr>
                                    <th>id</th>
                                    <th>登录名</th>
                                    <th>性别</th>
                                    <th>手机</th>
                                    <th>邮件</th>
                                    <th>创建时间</th>
                                    <th>最后登陆时间</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="userList">
                                </tbody>
                            </table>
                        </div>
<%--                        <nav aria-label="Page navigation">--%>
<%--                            <ul id="u-paging" class="pagination pull-right">--%>
<%--                            </ul>--%>
<%--                        </nav>--%>
                    </div>
                    <!---->
                    <!---->
                    <div role="tabpanel" class="tab-pane fade" id="admin" style="margin-top: 20px">
                        <form id="a-form-search" class="form-inline" novalidate="novalidate">
                            <div class="text-c">
                                日期范围：
                                <input class="form-control" id="a-minDate" name="minData" type="date"
                                       style="width: 140px;">
                                -
                                <input class="form-control" id="a-maxDate" name="maxData" type="date"
                                       style="width: 140px;">
                                <input class="form-control" id="admin-name" type="text" name="goodsName"
                                       placeholder="管理员名称"
                                       style="width: 250px;">
                                <button id="admin-search" class="btn btn-primary" type="button"><span
                                        class="glyphicon glyphicon-search" aria-hidden="true"></span> 搜索
                                </button>
                                <button id="a-refresh" class="btn btn-warning pull-right btn-sm" type="button"><span
                                        class="glyphicon glyphicon-refresh" aria-hidden="true"></span></button>
                            </div>
                        </form>
                        <nav class="navbar navbar-default">
                            <button id="add-admin" style="margin-left: 10px" data-toggle="modal"
                                    data-target="#save-user"
                                    type="button" class="btn btn-primary navbar-btn btn-sm"><span
                                    class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加管理员
                            </button>
                            <p style="padding-right: 30px" class="navbar-text navbar-right">共有数据： <a href="#"
                                                                                                     id="admin-total"
                                                                                                     class="navbar-link"></a>
                                条
                            </p>
                        </nav>
                        <div style="margin-top: 20px;">
                            <table class="table table-bordered table-hover table-condensed">
                                <thead>
                                <tr>
                                <tr>
                                    <th>id</th>
                                    <th>登录名</th>
                                    <th>性别</th>
                                    <th>手机</th>
                                    <th>邮件</th>
                                    <th>创建时间</th>
                                    <th>最后登陆时间</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </tr>
                                </thead>
                                <tbody id="adminList">
                                </tbody>
                            </table>
                        </div>
<%--                        <nav aria-label="Page navigation">--%>
<%--                            <ul id="admin-paging" class="pagination pull-right">--%>
<%--                            </ul>--%>
<%--                        </nav>--%>
                    </div>
                    <!---->
                </div>
            </div>
            <div class="modal fade" id="save-user" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 id="u-title" class="modal-title"></h4>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="user-avatar">头像</label>
                                    <img id="user-avatar-show" src="" alt="未选择头像" class="img-rounded">
                                    <input id="user-avatar" onchange="updateAvatar(this)" type="file">
                                </div>
                                <div class="form-group">
                                    <label for="user-name">登录名称</label>
                                    <input id="name" type="text" class="form-control"
                                           placeholder="名称">
                                </div>
                                <div class="form-group">
                                    <label for="password">密码</label>
                                    <input id="password" type="password" class="form-control"
                                           placeholder="密码">
                                </div>
                                <div class="form-group">
                                    <label for="phone-call">电话号码</label>
                                    <input id="phone-call" type="number" class="form-control"
                                           placeholder="电话">
                                </div>
                                <div class="form-group">
                                    <label for="email">邮件</label>
                                    <input id="email" type="email" class="form-control"
                                           placeholder="邮件">
                                </div>
                                <div class="form-group">
                                    <label for="sex">性别</label>
                                    <div class="btn-group">
                                        <input type="button" id="sex" name="goodsType"
                                               class="btn btn-sm btn-default" value="性别">
                                        <button type="button" class="btn  btn-sm btn-default dropdown-toggle"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul id="sex-list" class="dropdown-menu">
                                            <li><a href="#">男</a></li>
                                            <li><a href="#">女</a></li>
                                            <li><a href="#">保密</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary">提交</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
        </div>
        <script>
            $(function () {
                let num = 6;//每页显示多少条数据，暂定设为6.
                let page;//总页数
                let now_page = 1;//当前页数
                function defaultData() {
                    $.ajax({
                        type: "post",
                        url: "/adminGoods",
                        data: {"method": "allGoods"},
                        dataType: "json",
                        success: function (data) {
                            console.log(data);
                            getData(data);
                        }
                    });
                }

                defaultData();
                $("#refresh").click(function () {
                    location.reload();
                });
                $("#goods-search").click(function () {
                    let minDate = $("#minDate").val();
                    let maxDate = $("#maxDate").val();
                    let goodsName = $("#goodsName").val();
                    if (minDate !== "" && maxDate !== "" && goodsName !== "") {
                        $.ajax({
                            url: "/adminGoods",
                            type: "post",
                            data: {
                                "method": "findByMinDateAndMaxDateAndLikeNameGoods",
                                "minDate": minDate,
                                "maxDate": maxDate,
                                "goodsName": goodsName
                            },
                            dataType: "json",
                            success: function (data) {
                                if (data.length !== 0) {
                                    getData(data);
                                } else {
                                    alert("没有检索到数据！");
                                }
                            }
                        })
                    } else {
                        alert("请输入需要检索的商品信息！")
                    }
                });

                function dataDisplay(data, begin, end) {
                    $("#goodsList").empty();
                    let html = "";
                    for (let i = begin; i < end; i++) {
                        html = '<tr>\n' +
                            '<td>' + data[i].id + '</td>\n' +
                            '<td><img src="' + data[i].goodsImg + '" alt="..." class="img-rounded"></td>\n' +
                            '<td>' + data[i].goodsName + '</td>\n' +
                            '<td>' + data[i].goodsTitle + '</td>\n' +
                            '<td>' + data[i].price + '</td>\n' +
                            '<td>' + data[i].registerDate + '</td>\n' +
                            '<td>' + data[i].updateDate + '</td>\n' +
                            '<td>\n' +
                            '    <button type="button" id="update-goods" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#save-goods" data-id="' + data[i].id + '"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>\n' +
                            '    <button type="button" id="delete-goods" class="btn btn-danger btn-sm" data-id="' + data[i].id + '"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>\n' +
                            '</td>\n' +
                            ' </tr>';
                        $("#goodsList").append(html);
                    }
                }

                function getData(data) {
                    $("#total").text(data.length);
                    $("#goodsList").empty();
                    if (data.length % num === 0) {
                        page = data.length / num;
                    } else {
                        page = Math.ceil(data.length / num);
                    }
                    let li = "<li id=\"g-previous\">\n" +
                        "<a href=\"#\" aria-label=\"Previous\">\n" +
                        "    <span aria-hidden=\"true\">&laquo;</span>\n" +
                        "</a>\n" +
                        "</li>";
                    for (let i = 1; i <= page; i++) {
                        li += ' <li class="g-number"><a href="#">' + i + '</a></li>';
                    }
                    $("#goods-paging.pagination.pull-right").empty();
                    $("#goods-paging.pagination.pull-right").append(li + "<li id=\"g-next\">\n" +
                        "    <a href=\"#\"  aria-label=\"Next\">\n" +
                        "        <span aria-hidden=\"true\">&raquo;</span>\n" +
                        "    </a>\n" +
                        "</li>");
                    let index;
                    dataDisplay(data, 0, num);
                    $(".pagination.pull-right li").eq(now_page).addClass("active");
                    $(document).on("click", "#g-next", function () {
                        console.log("page=" + page);
                        console.log("now_page=" + now_page);
                        if (now_page + 1 > page) {
                            $(this).addClass("disabled");
                            return;
                        } else {
                            now_page++;
                            $(".pagination.pull-right li").eq(now_page).addClass("active").siblings().removeClass("active");
                            $(this).removeClass("disabled");
                        }
                        if (now_page - 1 < 1) {
                            $("#previous").addClass("disabled");
                            return;
                        } else {
                            $("#previous").removeClass("disabled");
                        }
                        index = num * now_page
                        dataDisplay(data, index - num, index);
                    });
                    $(document).on("click", "#g-previous", function () {
                        if (now_page - 1 < 1) {
                            $(this).addClass("disabled");
                            return;
                        } else {
                            now_page--;
                            $(".pagination.pull-right li").eq(now_page).addClass("active").siblings().removeClass("active");
                            $(this).removeClass("disabled");
                        }
                        if (now_page + 1 > page) {
                            $("#next").addClass("disabled");
                            return;
                        } else {
                            $("#next").removeClass("disabled");
                        }
                        index = num * now_page
                        dataDisplay(data, index - num, index);
                    });
                    $(document).on("click", ".g-number", function () {
                        $(this).addClass("active");
                        $(".g-number").not(this).removeClass("active");
                        now_page = parseInt($(this).text());
                        console.log(now_page);
                        let index = parseInt($(this).text()) * num;
                        dataDisplay(data, index - num, index);
                    });
                }

                $("#add-goods").click(function () {
                    $("#operation-type").val("addGoods");
                    $("#s-goods-img").attr("src", "");
                    $("#s-goods-name").val("");
                    $("#s-goods-title").val("");
                    $("#s-goods-price").val("");
                    $("#s-goods-type").val("选择类型");
                    getAllGoodsType();
                });
                // 编辑商品按钮
                $(document).on("click", "#update-goods", function () {
                    $("#operation-type").val("updateGoods");
                    $("#goods-id").val($(this).data("id"));
                    getAllGoodsType();
                    getGoods($(this).data("id"));
                });
                // 删除商品按钮
                $(document).on("click", "#delete-goods", function () {
                    deleteGoods($(this).data("id"));
                    setTimeout(function () {
                        location.reload();
                    }, 200);
                });

                function deleteGoods(id) {
                    $.ajax({
                        url: "/adminGoods",
                        type: "post",
                        data: {"method": "deleteGoods", "id": id}
                    })
                }

                function getGoods(id) {
                    $.ajax({
                        url: "/adminGoods",
                        type: "post",
                        data: {"method": "findByIdGoods", "id": id},
                        success: function (data) {
                            data = eval("(" + data + ")");
                            console.log(data);
                            $("#s-goods-img").attr("src", data.goodsImg);
                            $("#s-goods-name").val(data.goodsName);
                            $("#s-goods-title").val(data.goodsTitle);
                            $("#s-goods-price").val(data.price);
                            $("#s-goods-type").val(data.goodsType.type);
                        }
                    })
                }

                function getAllGoodsType() {
                    $.ajax({
                        url: "/adminGoods",
                        type: "get",
                        dataType: "json",
                        data: {"method": "findByGoodsType"},
                        success: function (data) {
                            showAllGoodsType(data);
                        }
                    });
                }

                function showAllGoodsType(data) {
                    $("#goods-type-list").empty();
                    let html = "";
                    for (let i = 0; i < data.length; i++) {
                        html = ' <li><a href="#">' + data[i].type + '</a></li>';
                        $("#goods-type-list").append(html);
                    }
                }

                $(document).on("click", "#goods-type-list li", function () {
                    $("#s-goods-type").val($(this).text());
                });
                $("#push-goods").click(function () {
                    if ($("#s-goods-type").val() === "选择类型") {
                        alert("请选择商品类型！")
                        return;
                    }
                    pushData();
                    setTimeout(function () {
                        location.reload();
                    }, 3400);
                });

                function pushData() {
                    let id = $("#goods-id").val();
                    if (id === "") {
                        id = 0;
                    }
                    console.log(id);
                    let files = $("#img-file").prop("files");
                    let formData = new FormData();
                    formData.append("img-file", files[0]);
                    formData.append("goodsName", $("#s-goods-name").val());
                    formData.append("goodsTitle", $("#s-goods-title").val());
                    formData.append("goodsPrice", $("#s-goods-price").val());
                    formData.append("goodsType", $("#s-goods-type").val());
                    formData.append("method", $("#operation-type").val());
                    formData.append("goodsId", id);
                    console.log(formData);
                    $.ajax({
                        type: "post",
                        url: "/files",
                        cache: false,
                        data: formData,
                        processData: false,
                        contentType: false
                    });
                }

                $("#push-goods-type").click(function () {
                    let type = $("#goods-type").val()
                    if (type === "") {
                        alert("请输入类型！");
                    } else {
                        pushGoodsType(type);
                        location.reload();
                    }
                })

                function pushGoodsType(type) {
                    $.ajax({
                        url: "/adminGoods",
                        type: "post",
                        data: {"method": "saveGoodsType", "type": type}
                    })
                }
            })

            function updateImg(obj) {
                let img = document.getElementById("s-goods-img");
                let file = obj.files[0];
                let reader = new FileReader();
                reader.readAsDataURL(file);
                reader.onload = function () {
                    img.setAttribute("src", this.result);
                }
            }
        </script>
        <script>
            $(function () {
                let vip = [];
                let admin = [];
                $.ajax({
                    url:"/adminUser",
                    type: "get",
                    data:{"method":"findByAllUser"},
                    dataType:"json",
                    success:function (data) {
                        classifyUser(data);
                    }
                });
                function classifyUser(data) {
                    for (let i = 0; i < data.length; i++) {
                        if (data[i].userType === 0) {
                            vip.push(data[i]);
                        } else {
                            admin.push(data[i]);
                        }
                    }
                    $("#u-total").text(vip.length);
                    $("#admin-total").text(admin.length);
                    showData(admin,$("#adminList"), $("#u-paging"));
                    showData(vip,$("#userList"),$("#admin-paging"));
                }
                function showData(data, dom,) {
                    let html = "";
                    let user_state = "";
                    $(dom).empty();
                    for (let i = 0; i < data.length; i ++) {
                        if (data[i].state === 1) {
                            user_state = '<span class="label label-success">已启用</span>';
                        } else {
                            user_state = '<span class="label label-danger">已停用</span>';
                        }
                        html = '<tr>' +
                            '<td>'+ data[i].id +'</td>' +
                            '<td>'+ data[i].userName +'</td>' +
                            '<td>'+ data[i].sex +'</td>' +
                            '<td>'+ data[i].phoneCall +'</td>' +
                            '<td>'+ data[i].mail +'</td>' +
                            '<td>'+ data[i].registerDate +'</td>' +
                            '<td>'+ data[i].loginDate +'</td>' +
                            '<td>'+ user_state +'</td>' +
                            '<td>' +
                            '<a data-toggle="tooltip" data-pacement="bottom" title="停用" href="#state">' +
                            '<span class="glyphicon glyphicon-off" aria-hidden="true"></span>' +
                            '</a>' +
                            '<a data-toggle="tooltip" data-pacement="bottom" title="编辑" class="ml-5" href="#update">' +
                            '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>' +
                            '<a data-toggle="tooltip" data-pacement="bottom" title="修改密码" class="ml-5" href="#passowrd">' +
                            '<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>' +
                            '</a>' +
                            '<a data-toggle="tooltip" data-pacement="bottom" title="删除用户" class="ml-5" href="#delete">' +
                            '<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>' +
                            '</a>' +
                            '</td>' +
                            '</tr>';
                        $(dom).append(html);
                    }
                }
                $("#add-user").click(function () {
                    $("#u-title").text("添加用户");
                });
                $("#add-admin").click(function () {
                    $("#u-title").text("添加管理员")
                });
                $("#sex-list li a").click(function () {
                    $("#sex").val($(this).text())
                });
            });
            function updateAvatar(obj) {
                let img = document.getElementById("user-avatar-show");
                let file = obj.files[0];
                let reader = new FileReader();
                reader.readAsDataURL(file);
                reader.onload = function () {
                    img.setAttribute("src", this.result);
                }
            }
        </script>
    </div>
</div>
</body>
</html>
