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
        fieldset { display: table-cell; }
    }
    .form-group img {
        display: block;
        margin-bottom: 5px;
        width: 80px;
        height: auto;
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
                        <input class="form-control" id="minDate" name="minData" type="date" style="width: 140px;">
                        -
                        <input class="form-control" id="maxDate" name="maxData" type="date" style="width: 140px;">
                        <input class="form-control" id="goodsName" type="text" name="goodsName" placeholder="商品名称" style="width: 250px;">
                        <button id="goods-search" class="btn btn-success" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> 搜索</button>
                        <button id="refresh" class="btn btn-warning pull-right btn-sm" type="button"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></button>
                    </div>
                </form>
                <nav class="navbar navbar-default">
                    <button id="add-goods" style="margin-left: 10px" data-toggle="modal" data-target="#save-goods" type="button" class="btn btn-primary navbar-btn btn-sm"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加商品</button>
                    <p style="padding-right: 30px" class="navbar-text navbar-right">共有数据： <a href="#" id="total" class="navbar-link"></a> 条</p>
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
                <nav id="paging" aria-label="Page navigation">
                    <ul class="pagination pull-right">
                    </ul>
                </nav>
                <div id="save-goods" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog">
                    <div class="modal-dialog modal-sm" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">添加商品</h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="form-group">
                                        <label>商品封面</label>
                                        <img id="s-goods-img" src="..." alt="未选择封面" class="img-rounded">
                                        <input id="img-file" onchange="updateImg(this)" name="goodsImg" type="file" id="exampleInputFile">
<%--                                        <button id="s-img-show" class="btn btn-info btn-sm" type="button" style="margin-top: 5px">显示封面</button>--%>
                                    </div>
                                    <div class="form-group">
                                        <label>商品名称</label>
                                        <input id="s-goods-name" name="goodsName" type="test" class="form-control" id="exampleInputEmail1" placeholder="商品名称">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">商品价格</label>
                                        <input id="s-goods-price" name="goodsPrice" type="number" class="form-control" id="exampleInputPassword1" placeholder="商品价格">
                                    </div>
                                    <div class="form-group">
                                        <label>商品描述</label>
                                        <textarea id="s-goods-title" name="goodsTitle" class="form-control" rows="3"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>商品类型: </label>
                                        </select>
                                        <!-- Split button -->
                                        <div class="btn-group">
                                            <input type="button" id="s-goods-type" name="goodsType" type="button" class="btn btn-sm btn-default" value="选择类型">
<%--                                            <button id="s-goods-type" name="goodsType" type="button" class="btn btn-sm btn-default">选择类型</button>--%>
                                            <button type="button" class="btn  btn-sm btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" id="push-goods" class="btn btn-primary">提交</button>
                                <input type="hidden" id="operation-type" value="">
                                <input type="hidden" id="goods-id" value="">
                            </div>
                        </div>
                    </div>
                </div>
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
        let num = 6;//每页显示多少条数据，暂定设为6.
        let page;//总页数
        let now_page = 1;//当前页数
        function defaultData() {
            $.ajax({
                type:"post",
                url:"/adminGoods",
                data:{"method":"allGoods"},
                dataType:"json",
                success:function (data) {
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
             if (minDate!==""&&maxDate!==""&&goodsName!==""){
                 $.ajax({
                     url:"/adminGoods",
                     type: "post",
                     data:{"method":"findByMinDateAndMaxDateAndLikeNameGoods","minDate":minDate,"maxDate":maxDate,"goodsName":goodsName},
                     dataType: "json",
                     success:function (data) {
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
                            '<td>'+ data[i].id +'</td>\n' +
                            '<td><img src="' + data[i].goodsImg + '" alt="..." class="img-rounded"></td>\n' +
                            '<td>'+ data[i].goodsName +'</td>\n' +
                            '<td>'+ data[i].goodsTitle +'</td>\n' +
                            '<td>'+ data[i].price +'</td>\n' +
                            '<td>'+ data[i].registerDate +'</td>\n' +
                            '<td>'+ data[i].updateDate +'</td>\n' +
                            '<td>\n' +
                            '    <button type="button" id="update-goods" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#save-goods" data-id="'+ data[i].id +'"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>\n' +
                            '    <button type="button" id="delete-goods" class="btn btn-danger btn-sm" data-id="'+ data[i].id +'"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>\n' +
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
                page = Math.ceil(data.length / num );
            }
            let li = "<li id=\"previous\">\n" +
                "<a href=\"#\" aria-label=\"Previous\">\n" +
                "    <span aria-hidden=\"true\">&laquo;</span>\n" +
                "</a>\n" +
                "</li>";
            for (let i = 1; i <= page; i++) {
                li += ' <li class="number"><a href="#">'+ i +'</a></li>';
            }
            $(".pagination.pull-right").empty();
            $(".pagination.pull-right").append(li + "<li id=\"next\">\n" +
                "    <a href=\"#\"  aria-label=\"Next\">\n" +
                "        <span aria-hidden=\"true\">&raquo;</span>\n" +
                "    </a>\n" +
                "</li>");
            let index;
            dataDisplay(data, 0 ,num);
            $(".pagination.pull-right li").eq(now_page).addClass("active");
            $(document).on("click","#next", function () {
                console.log("page=" + page);
                console.log("now_page=" + now_page);
                if (now_page + 1 > page) {
                    $(this).addClass("disabled");
                    return;
                } else {
                    now_page ++;
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
            $(document).on("click","#previous", function () {
                if (now_page - 1 < 1) {
                    $(this).addClass("disabled");
                    return;
                } else {
                    now_page --;
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
            $(document).on("click", ".number", function () {
                $(this).addClass("active");
                $(".number").not(this).removeClass("active");
                now_page = parseInt($(this).text());
                console.log(now_page);
                let index = parseInt($(this).text()) * num;
                dataDisplay(data,  index - num,  index);
            });
        }
        $("#add-goods").click(function () {
            $("#operation-type").val("addGoods");
            $("#s-goods-img").attr("src","");
            $("#s-goods-name").val("");
            $("#s-goods-title").val("");
            $("#s-goods-price").val("");
            $("#s-goods-type").val("选择类型");
            getAllGoodsType();
        });
        // 编辑商品按钮
        $(document).on("click","#update-goods", function () {
            $("#operation-type").val("updateGoods");
            $("#goods-id").val($(this).data("id"));
            getAllGoodsType();
            getGoods($(this).data("id"));
        });
        function getGoods(id) {
            $.ajax({
                url:"/adminGoods",
                type:"post",
                data:{"method": "findByIdGoods","id" :id},
                success:function (data) {
                    data = eval("("+data+")");
                    console.log(data);
                    $("#s-goods-img").attr("src",data.goodsImg);
                    $("#s-goods-name").val(data.goodsName);
                    $("#s-goods-title").val(data.goodsTitle);
                    $("#s-goods-price").val(data.price);
                    $("#s-goods-type").val(data.goodsType.type);
                }
            })
        }
        function getAllGoodsType() {
            $.ajax({
               url:"/adminGoods",
               type:"get",
               dataType:"json",
               data:{"method": "findByGoodsType"},
               success:function (data) {
                   showAllGoodsType(data);
               }
            });
        }
        function showAllGoodsType(data) {
            $("#goods-type-list").empty();
            let html = "";
            for (let i = 0; i < data.length; i++) {
                html = ' <li><a href="#">'+ data[i].type +'</a></li>';
                $("#goods-type-list").append(html);
            }
        }
        $(document).on("click","#goods-type-list li", function () {
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
            }, 3800);
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
</body>
</html>
