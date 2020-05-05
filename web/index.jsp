<%--
  Created by IntelliJ IDEA.
  User: musix
  Date: 2020/4/16
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>M</title>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/index.js"></script>
</head>
<body>
<div id="app">
    <div class="main" data-v-c8a942a0="">
        <!-- 头部 -->
        <%@include file="jsp/head.jsp" %>
        <!-- /头部 -->

        <div class="home main" data-v-4af9704d="">
            <div data-v-4af9704d="" style="min-height: 35vw; position: static;">
                <!--轮播图-->
                <%@include file="jsp/marquee.jsp" %>
                <!--/轮播图-->
                <div data-v-4af9704d="">
                    <!---->
                    <!---->
                    <!---->
                </div>
                <!-- 顶部推荐 -->
                <%@include file="jsp/topRecommend.jsp" %>
                <!-- /顶部推荐 -->
                <div data-v-4af9704d="">
                    <!---->
                    <section class="w mt30 clearfix" data-v-4af9704d="">
                        <div class="gray-box" data-v-26571f4f="" data-v-4af9704d="">
                            <div class="title" data-v-26571f4f="">
                                <h2 data-v-26571f4f="">热门商品</h2>
                                <div data-v-26571f4f=""></div>
                            </div>
                            <div data-v-26571f4f="">
                                <div class="hot" id="hot" data-v-4af9704d="" data-v-26571f4f="">

                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <!---->
            </div>
            <div class="" data-v-4af9704d="">
                <!---->
                <!---->
                <section class="w mt30 clearfix" data-v-4af9704d="">
                    <div class="gray-box" data-v-26571f4f="" data-v-4af9704d="">
                        <div class="title" data-v-26571f4f="">
                            <h2 data-v-26571f4f="">坚果Pro 3</h2>
                            <div data-v-26571f4f=""></div>
                        </div>
                        <div data-v-26571f4f="">
                            <div class="floors" id="phone" data-v-4af9704d="" data-v-26571f4f="">
                                <div class="imgbanner" data-v-0265f772="" data-v-4af9704d="" data-v-26571f4f="">
                                    <img data-v-4af9704d="" data-v-26571f4f=""
                                         data-src="https://resource.smartisan.com/resource/a5e102c24a38ee7d7a38d88b18ea157e.png?x-oss-process=image/resize,w_750"
                                         src="https://resource.smartisan.com/resource/a5e102c24a38ee7d7a38d88b18ea157e.png?x-oss-process=image/resize,w_750">
                                    <a class="cover-link" data-v-4af9704d="" data-v-26571f4f=""></a>
                                </div>
                                <!---->
                                <!---->
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="" data-v-4af9704d="">
                <!---->
                <!---->
                <section class="w mt30 clearfix" data-v-4af9704d="">
                    <div class="gray-box" data-v-26571f4f="" data-v-4af9704d="">
                        <div class="title" data-v-26571f4f="">
                            <h2 data-v-26571f4f="">周边服饰</h2>
                            <div data-v-26571f4f=""></div>
                        </div>
                        <div data-v-26571f4f="">
                            <div class="floors" id="clothing" data-v-4af9704d="" data-v-26571f4f="">
                                <div class="imgbanner" data-v-0265f772="" data-v-4af9704d="" data-v-26571f4f="">
                                    <img data-v-4af9704d="" data-v-26571f4f=""
                                         data-src="https://resource.smartisan.com/resource/z/zhoubianshangpin1220858web.jpg"
                                         src="https://resource.smartisan.com/resource/z/zhoubianshangpin1220858web.jpg">
                                    <a class="cover-link" data-v-4af9704d="" data-v-26571f4f=""></a>
                                </div>
                                <!---->
                                <!---->
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="" data-v-4af9704d="">
                <!---->
                <!---->
                <section class="w mt30 clearfix" data-v-4af9704d="">
                    <div class="gray-box" data-v-26571f4f="" data-v-4af9704d="">
                        <div class="title" data-v-26571f4f="">
                            <h2 data-v-26571f4f="">精品配件</h2>
                            <div data-v-26571f4f=""></div>
                        </div>
                        <div data-v-26571f4f="">
                            <div class="floors" id="parts" data-v-4af9704d="" data-v-26571f4f="">
                                <div class="imgbanner" data-v-0265f772="" data-v-4af9704d="" data-v-26571f4f="">
                                    <img data-v-4af9704d="" data-v-26571f4f=""
                                         data-src="https://resource.smartisan.com/resource/a/acillouceng1220856.jpg"
                                         src="https://resource.smartisan.com/resource/a/acillouceng1220856.jpg">
                                    <a class="cover-link" data-v-4af9704d="" data-v-26571f4f=""></a>
                                </div>
                                <!---->
                                <!---->
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <!-- 底部推荐 -->
            <%@include file="jsp/bottomRecommend.jsp" %>
            <!-- /底部推荐 -->
        </div>
        <script>
            $(function () {
                let clothing = [];
                let parts = [];
                let phone = [];
                let hot = [];
                $.ajax({
                    type: 'get',
                    url: '/goods',
                    data: {},
                    dataType: 'JSON',
                    success: function (data) {
                        for (let i = 1; i < data.length; i++) {
                            if (data[i].goodsType.id === 1) {
                                clothing.push(data[i]);
                            }
                            if (data[i].goodsType.id === 2) {
                                parts.push(data[i]);
                            }
                            if (data[i].goodsType.id === 4) {
                                phone.push(data[i]);
                            }
                            if (data[i].goodsType.id === 5) {
                                hot.push(data[i]);
                            }
                        }
                        let phoneHtml = $("#phone");
                        getData(phone, phoneHtml, 6);
                        let clothingHtml = $("#clothing");
                        getData(clothing, clothingHtml, 6)
                        let partsHtml = $("#parts");
                        getData(parts, partsHtml, 6)
                        let hotHtml = $("#hot");
                        getData(hot, hotHtml, 2)
                    }
                });

                function getData(data, dom, number) {
                    for (let i = 0; i < data.length; i++) {
                        if (i === number) {
                            break;
                        }
                        let label = '<div class="good-item" data-v-0265f772="" data-v-4af9704d="" data-v-26571f4f="">\n' +
                            '                      <div data-v-0265f772="">\n' +
                            '                        <div class="good-img" data-v-0265f772="">\n' +
                            '                          <a data-v-0265f772=""><img src=' + data[i].goodsImg + ' data-v-0265f772="" alt="支付测试商品 IPhone 11 Pro Max 4G手机 双卡双待"></a>\n' +
                            '                        </div>\n' +
                            '                        <h6 class="good-title" data-v-0265f772="">' + data[i].goodsName + '</h6>\n' +
                            '                        <h3 class="sub-title ellipsis" data-v-0265f772="">' + data[i].goodsTitle + '</h3>\n' +
                            '                        <div class="good-price pr" data-v-0265f772="1">\n' +
                            '                          <div class="ds pa" data-v-0265f772="">\n' +
                            '                            <a href="/goods?method=info&goodsId=' + data[i].id + '" data-v-0265f772="">\n' +
                            '                              <input class="default-btn" data-v-612d7650=""\n' +
                            '                                     data-v-0265f772="" type="button" readonly="readonly"\n' +
                            '                                     value="查看详情" style="margin: 0px 5px;">\n' +
                            '                            </a>\n' +
                            '                            <input data-id=' + data[i].id + ' class="main-btn" data-v-612d7650 data-v-0265f772=""\n' +
                            '                                   type="button" readonly="readonly" value="加入购物车"\n' +
                            '                                   style="margin: 0px 5px;">\n' +
                            '                          </div>\n' +
                            '                          <p data-v-0265f772="">\n' +
                            '                            <span data-v-0265f772="" style="font-size: 14px;">￥</span>' + data[i].price + '</p>\n' +
                            '                        </div>\n' +
                            '                      </div>\n' +
                            '                    </div>';
                        $(dom).append(label);
                    }
                }
            });
        </script>
        <!-- 底部 -->
        <%@include file="jsp/bottom.jsp" %>
        <!-- /底部 -->
    </div>
</div>
</body>
</html>
