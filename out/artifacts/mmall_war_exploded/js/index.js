$(function () {
    $("#index").click(function () {
        $("#term").val("index");
        location.href = "/goods?method=removeTerm";
    })
    let term = $("#term").val();
    // 这个可以改为switch
    if (term === "all") {
        $("#all").addClass("active");
    } else if (term === "phone") {
        $("#goods-phone").addClass("active");
    } else if (term === "costume") {
        $("#costume").addClass("active");
    } else if (term === "goodsCity") {
        $("#goodsCity").addClass("active");
    } else {
        $("#index").addClass("active");
    }

    $(".shop").mouseover(function () {
        $(".shop .nav-user-wrapper").show();
    }).mouseout(function () {
        $(".shop .nav-user-wrapper").hide();
    });

    function changeImg(a) {
        $(".bg div").eq(a).show(300).siblings().hide();
        $(".page li").eq(a).removeClass("dot").siblings().addClass("dot");
    }

    let step = 0;
    changeImg(step);
    let timer = null;

    function autoPlay() {
        timer = setInterval(function () {
            step++;
            if (step === $(".bg div").length) {
                step = 0;
            }
            changeImg(step);
        }, 4000);
    }

    autoPlay();
    $(".page li").click(function () {
        step = $(this).index();
        changeImg(step);
        clearInterval(timer);
    });
    $(".bg").mouseover(function () {
        clearInterval(timer);
    }).mouseout(function () {
        autoPlay();
    });

    $(window).scroll(function () {
        // 为了保证兼容性，这里两个值，那个有值取那个
        // scrollTop 就是触发滚轮事件时滚轮的高度
        // body没有scrollTop
        let scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        // console.debug("滚动距离：" + scrollTop);
        if (scrollTop >= 124) {
            $(".nav-aside").addClass("fixed");
            $(".nav-sub").addClass("fixed");
            $(".nav-sub-wrapper").addClass("fixed");
        } else {
            $(".nav-aside").removeClass("fixed");
            $(".nav-sub").removeClass("fixed");
            $(".nav-sub-wrapper").removeClass("fixed");
        }
    });

    function getDate() {
        $.ajax({
            type: "get",
            url: "/cart",
            data: {"method": "findByUserIdCart"},
            dataType: "JSON",
            success: function (data) {
                getData(data);
            }
        });
    }

    getDate();
    /* 购物车点击事件 */
    $(document).on("click", ".main-btn", function () {
        let goodsId = $(this).data("id");
        $.ajax({
            type: "post",
            url: "/cart",
            data: {"method": "saveCart", "goodsId": goodsId},
            dataType: "JSON",
            error: function () {
                window.location.href = "login.jsp";
            },
            success: function (data) {
                getData(data);
                $(".nav-user-wrapper").show();
            }
        });
        // window.location.reload();
    });

    /* 删除购物车 */
    $(document).on("click", ".del-btn", function () {
        let cartId = $(this).data("id");
        $.ajax({
            type: "post",
            url: "/cart",
            data: {"method": "deleteCart", "cartId": cartId},
            dataType: "JSON",
            success: function (data) {
                getData(data);
            }
        });
    });

    function getData(data) {
        $(".product_list").empty();
        let cartSize = data.length;
        let totalPrice = 0;
        if (0 === cartSize) {
            $(".cart-num .num").addClass("no").text(0);
            $("#cart-con").css("display", "block");
            $("#full-cart").css("display", "none");
        } else {
            $(".cart-num .num").removeClass("no").text(cartSize);
            $(".nav-cart-total p strong").text(cartSize);
            $("#cart-con").css("display", "none");
            $("#full-cart").css("display", "block");
        }
        for (let i = 0; i < data.length; i++) {
            totalPrice += parseInt(data[i].goods.price);
            let label = '<li class="clearfix" data-v-7d15c3c3="">\n' +
                '           <div class="cart-item" data-v-7d15c3c3="">\n' +
                '             <div class="cart-item-inner" data-v-7d15c3c3="">\n' +
                '               <a data-v-7d15c3c3="">\n' +
                '                 <object>\n' +
                '                   <div class="item-thumb" data-v-7d15c3c3="">\n' +
                '                     <img data-v-7d15c3c3="" src="' + data[i].goods.goodsImg + '" alt="">\n' +
                '                   </div>\n' +
                '                   <div class="item-desc" data-v-7d15c3c3="">\n' +
                '                     <div class="cart-cell" data-v-7d15c3c3="">\n' +
                '                       <h4 data-v-7d15c3c3=""><a data-v-7d15c3c3="">' + data[i].goods.goodsName + '</a></h4>\n' +
                '                       <h6 data-v-7d15c3c3="">\n' +
                '                         <span class="price-icon" data-v-7d15c3c3="">￥</span>\n' +
                '                         <span class="price-num" data-v-7d15c3c3="">' + data[i].goods.price + '</span>\n' +
                '                         <span class="item-num" data-v-7d15c3c3="">x 1</span>\n' +
                '                       </h6>\n' +
                '                     </div>\n' +
                '                   </div>\n' +
                '                 </object>\n' +
                '               </a>\n' +
                '               <div class="del-btn delete-cart del" data-id=' + data[i].id + ' data-v-7d15c3c3="">删除</div>\n' +
                '             </div>\n' +
                '           </div>\n' +
                '         </li>';
            $(".product_list").append(label);
        }
        $("#total-price").text(totalPrice);
    }

    $("#go-cart").click(function () {
        $.ajax({
            type: 'get',
            url: '/cart',
            data: {'method': 'goCart'},
            success: function (result) {
                window.location.href = result
            }
        });
    })
});