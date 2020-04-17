$(function () {

    $(".shop").mouseover(function () {
        $(".shop .nav-user-wrapper").show();
    }).mouseout(function () {
        $(".shop .nav-user-wrapper").hide();
    });

    function changeImg(a) {
        $(".bg div").eq(a).show(300).siblings().hide();
        $(".page li").eq(a).removeClass("dot").siblings().addClass("dot");
    }

    var step = 0;
    changeImg(step);
    var timer = null;

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
        var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
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

    function Delete() {
        if ($(".product_list li").length > 0) {
            $(".full").show();
            $(".cart-con").hide();
        } else {
            $(".full").hide();
            $(".cart-con").show();
        }
    }

    var num = 0;
    num = $(".cart-item-inner").length;
    function getNum() {
        $(".num").html(num);
        if (num > 0) {
            $(".num").removeClass("no");
        } else {
            $(".num").addClass("no");
        }
    }
    getNum();
   
    var sum = 0;
    var total_price = 0;

    function Sum() {
        $(".price-num p").each(function() {
            total_price += parseFloat($(this).html());
        });
        $("h5 .price-num").html(total_price);
    }
    
    $(".main-btn").click(function () {
        total_price = 0;
        var src = $(this).parent().parent().prev().prev().prev().children().children().attr("data-src");
        var name = $(this).parent().parent().prev().prev().html();
        var price = $(this).parent().next().clone();
        price.find(":nth-child(n)").remove();
        var list = $("<li class='clearfix' data-v-7d15c3c3=''></li>").appendTo(".product_list");
        var item = $("<div class='cart-item' data-v-7d15c3c3=''></div>").appendTo(list);
        var inner = $("<div class='cart-item-inner' data-v-7d15c3c3=''></div>").appendTo(item);
        var a = $("<a data-v-7d15c3c3=''></a>").appendTo(inner);
        var ob = $("<object></object>").appendTo(a);
        var thumb = $("<div class='item-thumb' data-v-7d15c3c3=''>").prependTo(ob);
        var img = $("<img data-v-7d15c3c3='' src=''>").appendTo(thumb);
        
        img.attr("src",src);

        var desc = $("<div class='item-desc' data-v-7d15c3c3=''></div>").appendTo(ob);
        var h4 = $(" <h4 data-v-7d15c3c3=''></h4>").prependTo(desc);
        var aName = $("<a data-v-7d15c3c3=''href=''></a>").appendTo(h4);
        aName.html(name);

        var h6 = $("<h6 data-v-7d15c3c3=''></h6>").appendTo(desc);
        $(" <span class='price-icon' data-v-7d15c3c3=''>￥</span>").prependTo(h6);
        var price_icon = $("<span class='price-num' data-v-7d15c3c3=''></span>").appendTo(h6);
        price_icon.html(price);
        // price_icon.find(":nth-child(n)").remove();
        

        var item_num = $("<span class='item-num' data-v-7d15c3c3=''>x 1</span>").appendTo(h6);
        var dele = $("<div class='del-btn del' data-v-7d15c3c3=''>删除</div>").insertAfter(a);
        sum ++;
        $(".nav-cart-total p strong").html(sum);
        $(".product_list li").each(function() {
            num = $(".product_list li").length;
        });

        dele.on("click",function(event) {
            event.preventDefault();
            $(this).closest(".clearfix").remove();
            total_price -= parseFloat(price_icon.children().html());
            $("h5 .price-num").html(total_price);
            num = $(".product_list li").length;
            sum --;
            $(".nav-cart-total p strong").html(sum);
            getNum();
            Delete();
        });
        getNum();
        Delete();
        Sum();
        $(".nav-user-wrapper").show();
        
    });
    Delete();

});