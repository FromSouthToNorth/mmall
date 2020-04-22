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
                  <div class="el-autocomplete" data-v-7d15c3c3="" minlength="1" maxlength="100">
                    <div class="el-input" props="[object Object]"
                         fetchsuggestions="function() { [native code] }" triggeronfocus="true">
                      <!---->
                      <i class="el-input__icon el-icon-search is-clickable"></i>
                      <input class="el-input__inner" autocomplete="off" placeholder="请输入商品信息"
                             icon="search" type="text" rows="2" validateevent="true">
                      <!---->
                      <!---->
                    </div>
                  </div>
                  <a class="" data-v-7d15c3c3="" href="/goods?method=goods&term=all"><object><a
                          data-v-7d15c3c3="">全部商品</a></object></a>
                </div>
                <div class="nav-aside" data-v-7d15c3c3="">
                  <div class="user pr" data-v-7d15c3c3="">
                    <a class="" data-v-7d15c3c3="" href="${user == null ? '/login.jsp' : '#'}">个人中心</a>
                    <c:if test="${user != null}">
                      <div class="nav-user-wrapper pa" data-v-7d15c3c3="">
                        <div class="nav-user-list"data-v-7d15c3c3="">
                          <ul>
                            <li class="nav-user-avatar" data-v-7d15c3c3="">
                              <div data-v-7d15c3c3="">
                              <span class="avatar" data-v-7d15c3c3=""
                                    style="background-image: url(/image/avatar/20190826144820.jpg)">
                              </span>
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

      <div class="home main" data-v-4af9704d="">
        <div data-v-4af9704d="" style="min-height: 35vw; position: static;">
          <!--轮播图-->
          <div class="banner" data-v-4af9704d="">
            <div class="bg" data-v-4af9704d="">
              <div data-v-4af9704d="" class="">
                <img class="img1" data-v-4af9704d=""
                     src="https://i.loli.net/2019/09/30/CAZ6QrXPBoh5aIT.png">
                <img class="img2 a" data-v-4af9704d=""
                     src="https://i.loli.net/2019/09/30/9Y5MHc8sfhJLk3u.png">
                <img class="img3 b" data-v-4af9704d=""
                     src="https://i.loli.net/2019/09/30/lLv8xp3IWqa7Oz6.png">
              </div>
              <div data-v-4af9704d="" class="">
                <img class="img1" data-v-4af9704d=""
                     src="https://i.loli.net/2018/11/04/5bdeba4028e90.png">
                <img class="img2 a" data-v-4af9704d=""
                     src="https://i.loli.net/2018/11/04/5bdebb109a29a.png">
                <img class="img3 b" data-v-4af9704d=""
                     src="https://i.loli.net/2018/11/04/5bdeba6753403.png">
              </div>
              <div data-v-4af9704d="" class="">
                <img class="img1" data-v-4af9704d=""
                     src="https://resource.smartisan.com/resource/f1cc61461e08141debf520be50ab362f.png?x-oss-process=image/resize,w_1525/quality,Q_100">
              </div>
              <div data-v-4af9704d="" class="">
                <img class="img1" data-v-4af9704d=""
                     src="https://resource.smartisan.com/resource/130e1b36391d9a13ec19d4659abe70a7.png?x-oss-process=image/resize,w_1525/quality,Q_100">
              </div>
            </div>
            <div class="page" data-v-4af9704d="">
              <ul class="dots" data-v-4af9704d="">
                <li class="dot-active" data-v-4af9704d=""></li>
                <li class="dot-active dot" data-v-4af9704d=""></li>
                <li class="dot-active dot" data-v-4af9704d=""></li>
                <li class="dot-active dot" data-v-4af9704d=""></li>
              </ul>
            </div>
          </div>
          <!--/轮播图-->
          <div data-v-4af9704d="">
            <!---->
            <!---->
            <!---->
          </div>
          <div class="" data-v-4af9704d="">
            <div class="activity-panel" data-v-4af9704d="">
              <ul class="box" data-v-4af9704d="">
                <li class="content" data-v-4af9704d=""><img class="i" data-v-4af9704d=""
                                                            src="https://resource.smartisan.com/resource/6/610400xinpinpeijian.jpg"><a
                        class="cover-link" data-v-4af9704d=""></a></li>
                <li class="content" data-v-4af9704d=""><img class="i" data-v-4af9704d=""
                                                            src="https://resource.smartisan.com/resource/fe2f969d1f297e1a1eec6eb8e9f77277.jpg?x-oss-process=image/resize,w_750"><a
                        class="cover-link" data-v-4af9704d=""></a></li>
                <li class="content" data-v-4af9704d=""><img class="i" data-v-4af9704d=""
                                                            src="https://resource.smartisan.com/resource/4/489673079577637073.png"><a
                        class="cover-link" data-v-4af9704d=""></a></li>
                <li class="content" data-v-4af9704d=""><img class="i" data-v-4af9704d=""
                                                            src="https://resource.smartisan.com/resource/fdc4370d1ce14a67fadc35d74209ac0f.jpg?x-oss-process=image/resize,w_750"><a
                        class="cover-link" data-v-4af9704d=""></a></li>
              </ul>
            </div>
          </div>
          <!---->
          <!---->
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
        <div data-v-4af9704d="">
          <div class="activity-panel" data-v-4af9704d="">
            <ul class="box" data-v-4af9704d="">
              <li class="content" data-v-4af9704d=""><img class="i" data-v-4af9704d=""
                                                          src="https://resource.smartisan.com/resource/33ea4bfa05068e0741b7278fec9da8a6.jpg?x-oss-process=image/resize,w_750"
                                                          alt=""><a class="cover-link" data-v-4af9704d=""></a></li>
              <li class="content" data-v-4af9704d=""><img class="i" data-v-4af9704d=""
                                                          src="https://resource.smartisan.com/resource/5ea6f0905535d7b11258e9a0f9b1abeb.jpg"
                                                          alt=""><a class="cover-link" data-v-4af9704d=""></a></li>
              <li class="content" data-v-4af9704d=""><img class="i" data-v-4af9704d=""
                                                          src="https://resource.smartisan.com/resource/c245ada282824a4a15e68bec80502ad4.jpg"
                                                          alt=""><a class="cover-link" data-v-4af9704d=""></a></li>
              <li class="content" data-v-4af9704d=""><img class="i" data-v-4af9704d=""
                                                          src="https://resource.smartisan.com/resource/m/minibanner_03.jpg" alt=""><a
                      class="cover-link" data-v-4af9704d=""></a></li>
            </ul>
          </div>
          <!---->
          <!---->
        </div>
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
            dataType:'JSON',
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
              for (let i = 0; i < phone.length; i++) {
                if (i === 6)
                  break;
                let label = '<div class="good-item" data-v-0265f772="" data-v-4af9704d="">\n' +
                        '                    <div data-v-0265f772="">\n' +
                        '                      <div class="good-img" data-v-0265f772="">\n' +
                        '                        <a data-v-0265f772=""><img data-v-0265f772="" src='+ phone[i].goodsImg +'></a>\n' +
                        '                      </div>\n' +
                        '                      <h6 class="good-title" data-v-0265f772="">'+ phone[i].goodsName +'</h6>\n' +
                        '                      <h3 class="sub-title ellipsis" data-v-0265f772="">' + phone[i].goodsTitle + '</h3>\n' +
                        '                      <div class="good-price pr" data-v-0265f772="">\n' +
                        '                        <div class="ds pa" data-v-0265f772="">\n' +
                        '                          <a href="/goods?method=info&goodsId='+ phone[i].id +'" data-v-0265f772="">\n' +
                        '                            <input class="default-btn" data-v-612d7650="" data-v-0265f772=""\n' +
                        '                                   type="button" readonly="readonly" value="查看详情"\n' +
                        '                                   style="margin: 0px 5px;">\n' +
                        '                          </a>\n' +
                        '                          <input data-id='+ phone[i].id +' class="main-btn" data-v-612d7650 data-v-0265f772=""\n' +
                        '                                 type="button" readonly="readonly" value="加入购物车"\n' +
                        '                                 style="margin: 0px 5px;">\n' +
                        '                        </div>\n' +
                        '                        <p data-v-0265f772="">\n' +
                        '                          <span data-v-0265f772="" style="font-size: 14px;">￥</span> ' + phone[i].price + '</p>\n' +
                        '                      </div>\n' +
                        '                    </div>\n' +
                        '                  </div>';
                $("#phone").append(label);
              }
              for (let i = 0; i < clothing.length; i++) {
                if(i===6) {
                  break;
                }
                let label = '<div class="good-item" data-v-0265f772="" data-v-4af9704d="">\n' +
                        '                    <div data-v-0265f772="">\n' +
                        '                      <div class="good-img" data-v-0265f772="">\n' +
                        '                        <a data-v-0265f772=""><img data-v-0265f772="" src='+ clothing[i].goodsImg +'></a>\n' +
                        '                      </div>\n' +
                        '                      <h6 class="good-title" data-v-0265f772="">'+ clothing[i].goodsName +'</h6>\n' +
                        '                      <h3 class="sub-title ellipsis" data-v-0265f772="">' + clothing[i].goodsTitle + '</h3>\n' +
                        '                      <div class="good-price pr" data-v-0265f772="">\n' +
                        '                        <div class="ds pa" data-v-0265f772="">\n' +
                        '                          <a href="/goods?method=info&method=info&goodsId='+ clothing[i].id +'" data-v-0265f772="">\n' +
                        '                            <input class="default-btn" data-v-612d7650="" data-v-0265f772=""\n' +
                        '                                   type="button" readonly="readonly" value="查看详情"\n' +
                        '                                   style="margin: 0px 5px;">\n' +
                        '                          </a>\n' +
                        '                          <input data-id='+ clothing[i].id +' class="main-btn" data-v-612d7650 data-v-0265f772=""\n' +
                        '                                 type="button" readonly="readonly" value="加入购物车"\n' +
                        '                                 style="margin: 0px 5px;">\n' +
                        '                        </div>\n' +
                        '                        <p data-v-0265f772="">\n' +
                        '                          <span data-v-0265f772="" style="font-size: 14px;">￥</span> ' + clothing[i].price + '</p>\n' +
                        '                      </div>\n' +
                        '                    </div>\n' +
                        '                  </div>';
                $("#clothing").append(label);
              }
              for (let i = 0; i < parts.length; i++) {
                if(i===6) {
                  break;
                }
                let label = '<div class="good-item" data-v-0265f772="" data-v-4af9704d="">\n' +
                        '                    <div data-v-0265f772="">\n' +
                        '                      <div class="good-img" data-v-0265f772="">\n' +
                        '                        <a data-v-0265f772=""><img data-v-0265f772="" src='+ parts[i].goodsImg +'></a>\n' +
                        '                      </div>\n' +
                        '                      <h6 class="good-title" data-v-0265f772="">'+ parts[i].goodsName +'</h6>\n' +
                        '                      <h3 class="sub-title ellipsis" data-v-0265f772="">' + parts[i].goodsTitle + '</h3>\n' +
                        '                      <div class="good-price pr" data-v-0265f772="">\n' +
                        '                        <div class="ds pa" data-v-0265f772="">\n' +
                        '                          <a href="/goods?method=info&goodsId='+ parts[i].id +'" data-v-0265f772="">\n' +
                        '                            <input class="default-btn" data-v-612d7650="" data-v-0265f772=""\n' +
                        '                                   type="button" readonly="readonly" value="查看详情"\n' +
                        '                                   style="margin: 0px 5px;">\n' +
                        '                          </a>\n' +
                        '                          <input data-id='+ parts[i].id +' class="main-btn" data-v-612d7650 data-v-0265f772=""\n' +
                        '                                 type="button" readonly="readonly" value="加入购物车"\n' +
                        '                                 style="margin: 0px 5px;">\n' +
                        '                        </div>\n' +
                        '                        <p data-v-0265f772="">\n' +
                        '                          <span data-v-0265f772="" style="font-size: 14px;">￥</span> ' + parts[i].price + '</p>\n' +
                        '                      </div>\n' +
                        '                    </div>\n' +
                        '                  </div>';
                $("#parts").append(label);
              }
              for (let i = 0; i < hot.length; i++) {
                if (i == 2) {
                  break;
                }
                let label = '<div class="good-item" data-v-0265f772="" data-v-4af9704d="" data-v-26571f4f="">\n' +
                        '                      <div data-v-0265f772="">\n' +
                        '                        <div class="good-img" data-v-0265f772="">\n' +
                        '                          <a data-v-0265f772=""><img src='+ hot[i].goodsImg +' data-v-0265f772="" alt="支付测试商品 IPhone 11 Pro Max 4G手机 双卡双待"></a>\n' +
                        '                        </div>\n' +
                        '                        <h6 class="good-title" data-v-0265f772="">'+ hot[i].goodsName +'</h6>\n' +
                        '                        <h3 class="sub-title ellipsis" data-v-0265f772="">'+ hot[i].goodsTitle +'</h3>\n' +
                        '                        <div class="good-price pr" data-v-0265f772="1">\n' +
                        '                          <div class="ds pa" data-v-0265f772="">\n' +
                        '                            <a href="/goods?method=info&goodsId='+ hot[i].id +'" data-v-0265f772="">\n' +
                        '                              <input class="default-btn" data-v-612d7650=""\n' +
                        '                                     data-v-0265f772="" type="button" readonly="readonly"\n' +
                        '                                     value="查看详情" style="margin: 0px 5px;">\n' +
                        '                            </a>\n' +
                        '                            <input data-id='+ hot[i].id +' class="main-btn" data-v-612d7650 data-v-0265f772=""\n' +
                        '                                   type="button" readonly="readonly" value="加入购物车"\n' +
                        '                                   style="margin: 0px 5px;">\n' +
                        '                          </div>\n' +
                        '                          <p data-v-0265f772="">\n' +
                        '                            <span data-v-0265f772="" style="font-size: 14px;">￥</span>'+ hot[i].price +'</p>\n' +
                        '                        </div>\n' +
                        '                      </div>\n' +
                        '                    </div>';
                $("#hot").append(label);
              }
            }
          });
        });
      </script>
      <!---->
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
  </div>
  </body>
</html>
