$(function () {

    $(document).click(function (event) {
        var country = $(".country");
        if (!country.is(event.target) && country.has(event.target).length === 0) {
            $(".country-list").hide();
        } else {
            $(".country-list").show();
        }
    });

    $(".country-list li").click(function () {
        var countryArray = ["中国", "美国", "英国", "日本", "阿尔巴尼亚", "阿尔及利亚", "阿富汗", "阿根廷", "阿拉伯联合酋长国", "阿鲁巴", "阿曼", "埃及"];
        var phoneArray = ["86", "1", "44", "81", "355", "213", "93", "54", "971", "297", "968", "20"];
        var country = $(this).html();
        for (var i = 0; i < countryArray.length; i++) {
            if (country == countryArray[i]) {
                $(".ccc").html(phoneArray[i]);
            }
        }
        $(".country").html(country);
        $(this).addClass("selected").siblings().removeClass("selected");
    });

    // 提示密码错误动画
    function Wp() {
        var wrong_password = $(".password div");
        wrong_password.animate({
            "left": 26
        }, 100);
        wrong_password.animate({
            "left": -26
        }, 100);
        wrong_password.animate({
            "left": 0
        }, 100);
    }

    function Wm() {
        var phone_num = $(".username div");
        phone_num.animate({
            "left": 26
        }, 100);
        phone_num.animate({
            "left": -26
        }, 100);
        phone_num.animate({
            "left": 0
        }, 100);
    }

    var a = 0;
    $(".checkbox").on("click", function () {
        if (a == 0) {
            $(this).addClass("checked");
            a = 1;
        } else {
            $(this).removeClass("checked");
            a = 0;
        }
    });

    // 电话 input *blur 失去焦点  input *focus 获得焦点
    // $(".username div input").blur(function () {
    //     $(".username label").show();
    // }).focus(function () {
    //     $(".username label").hide();
    // });

    var verify = true;
    // input 输入修改文本事件

    $(".username div input").bind("input propertychange", function () {
        $(".username label").hide();
        $(".username div").css("opacity", "0.618").removeClass("invalid");
        $(".username div span:eq(2)").removeClass("hint");
        $(".username div span:eq(3)").removeClass("hint");
        if ($(this).val() == "") {
            $(".username label").show();
        }
    });

    $(".username div input").click(function () {
        $(this).parent().addClass("focus");
    });

    $(".username div input").blur(function () {
        $(this).parent().removeClass("focus");
        if ($(this).val() != "" && $(this).val().length < 11) {
            $(".username div").css("opacity", "1").addClass("invalid");
            $(".username div span:eq(3)").addClass("hint");
            $(".main-btn").removeClass("main-btn").addClass("disabled-btn");
            verify = false;
            Wm();
        }
        verify = true;
    });

    $(".password div input").click(function () {
        $(this).parent().addClass("focus");
    });

    $(".password div input").bind("input propertychange", function () {
        $(".password label").hide();
        $(".password div").css("opacity", "0.618").removeClass("invalid");
        $(".password div span:eq(1)").removeClass("hint");
        if ($(this).val() == "") {
            $(".password label").show();
        } else if ((!$(this).val() == "") && verify) {
            $('.disabled-btn').removeClass("disabled-btn").addClass('main-btn');
        }
    });

    $(".password div input").blur(function () {
        $(this).parent().removeClass("focus");
    });

    $("form").submit(function () {
        if ($(":text").val() == "") {
            $(".username div").css("opacity", "1").addClass("invalid");
            $(".username div span:eq(2)").addClass("hint");
            $(".main-btn").removeClass("main-btn").addClass("disabled-btn");
            Wm();
            return false;
        } else if ($(":text").val().length < 11) {
            $(".username div").css("opacity", "1").addClass("invalid");
            $(".username div span:eq(3)").addClass("hint");
            $(".main-btn").removeClass("main-btn").addClass("disabled-btn");
            Wm();
            return false;
        } else if ($(":password").val().length < 6) {
            $(".password div").css("opacity", "1").addClass("invalid");
            $(".password div span:eq(1)").addClass("hint");
            $(".main-btn").removeClass("main-btn").addClass("disabled-btn");
            Wp();
            return false;
        }
        return true;
    });

});