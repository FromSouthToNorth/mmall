$(function () {
    $(".m-checkbox__input").click(function () {
        let num = $(".m-checkbox__original").val();
        if (num == 0) {
            $(this).addClass("is-checked");
            $(".m-checkbox__original").val(1);
        } else {
            $(this).removeClass("is-checked");
            $(".m-checkbox__original").val(0);
        }
    });
    $.ajax({
        url:"/address",
        type:"get",
        data:{"method":"all"},
        dataType:"JSON",
        success:function (data) {
            if (data.length === 0) {
                $("#null-address-show").val(1);
            } else {
                $("#null-address-show").val(0);
            }
            let type;
            for (let i = 0; i < data.length; i++) {
                if (data[i].type == 1) {
                    type = "(默认地址)";
                } else {
                    type = "";
                }
                let label = '<div class="address-item" data-v-26da3b24="" data-v-26571f4f="">' +
                    '<div class="name" data-v-26da3b24="" data-v-26571f4f="">'+ data[i].userName +'</div>\n' +
                    '<div class="address-msg" data-v-26da3b24="" data-v-26571f4f="">'+ data[i].address +'</div>\n' +
                    '<div class="telephone" data-v-26da3b24="" data-v-26571f4f="">'+ data[i].phone +'</div>\n' +
                    '<div class="defalut" data-v-26da3b24="" data-v-26571f4f="">\n' +
                    '    <a class="defalut-address" data-v-26da3b24="" data-v-26571f4f="">'+ type +'</a>\n' +
                    '</div>\n' +
                    '<div class="operation" data-v-26da3b24="" data-v-26571f4f="">\n' +
                    '    <button class="m-button button--primary update-address button--small" type="button" data-v-26da3b24="" data-v-26571f4f="" data-id="'+ data[i].id +'">编辑</button>\n' +
                    '    <button class="m-button button--danger delete-address button--small" type="button" data-v-26da3b24="" data-v-26571f4f="" data-id="'+ data[i].id +'">删除</button>\n' +
                    '</div>' +
                    '</div>';
                $("#address-list").append(label);
            }
            showAddress();
        }
    });
    $(".account-nav li").click(function () {
        $(this).addClass("current").siblings().removeClass("current");
    });
    $("#mine-for").click(function () {
        $("#title").text("我的订单");
        $("#order-form").show();
        $("#account-data-box").hide();
        $("#address-title").hide();
        $("#address-list").hide();
        $("#add-the-address").hide();
        $("#null-address-hide").val(0);
        showAddress();
    });
    $("#account-data").click(function () {
        $("#title").text("我的资料");
        $("#order-form").hide();
        $("#account-data-box").show();
        $("#address-title").hide();
        $("#address-list").hide();
        $("#add-the-address").hide();
        $("#null-address-hide").val(0);
        showAddress();
    });
    $("#shipping-address").click(function () {
        $("#null-address-hide").val(1);
        $("#title").text("收货地址");
        $("#order-form").hide();
        $("#account-data-box").hide();
        $("#address-title").show();
        $("#address-list").show();
        $("#add-the-address").show();
        showAddress();
    });
    $("#avatar-btn").click(function () {
        $("#edit-avatar").show();
    });
    $("#avatar-close").click(function () {
        $("#edit-avatar").hide();
    });
    // 添加地址按钮
    $(".add-the-address").click(function () {
        $("#edit-the-address").show();
        $("#update-type").val("save");
        alert($("#update-type").val());
    });
    $("#close").click(function () {
        $("#user-name").val("");
        $("#user-phone").val("");
        $("#address").val("");
        $("#edit-the-address").hide();
    });

    // 地址保存按钮
    $("#save").click(function () {
        let name = $("#user-name").val();
        let address = $("#address").val();
        let phone = $("#user-phone").val();
        let addressType = $(".m-checkbox__original").val();
        let method = $("#update-type").val();
        let id = $("#address-id").val();
        $.ajax({
            url:"/address",
            type: "post",
            data:{"method":method,"name": name,"address":address, "phone": phone, "addressType": addressType,"id": id},
            dataType: "json",
            success:function (data) {
                $("#address-list").empty();
                if (data.length === 0) {
                    $("#null-address-show").val(1);
                } else {
                    $("#null-address-show").val(0);
                }
                let type;
                for (let i = 0; i < data.length; i++) {
                    if (data[i].type == 1) {
                        type = "(默认地址)";
                    } else {
                        type = "";
                    }
                    let label = '<div class="address-item" data-v-26da3b24="" data-v-26571f4f="">' +
                                ' <div class="name" data-v-26da3b24="" data-v-26571f4f="">'+ data[i].userName +'</div>\n' +
                                '         <div class="address-msg" data-v-26da3b24="" data-v-26571f4f="">'+ data[i].address +'</div>\n' +
                                '         <div class="telephone" data-v-26da3b24="" data-v-26571f4f="">'+ data[i].phone +'</div>\n' +
                                '         <div class="defalut" data-v-26da3b24="" data-v-26571f4f="">\n' +
                                '             <a class="defalut-address" data-v-26da3b24="" data-v-26571f4f="">'+ type +'</a>\n' +
                                '         </div>\n' +
                                '         <div class="operation" data-v-26da3b24="" data-v-26571f4f="">\n' +
                                '             <button id="update-address" class="m-button button--primary button--small" type="button" data-v-26da3b24="" data-v-26571f4f="" data-id="'+ data[i].id +'">编辑</button>\n' +
                                '             <button id="delete-address" class="m-button button--danger button--small" type="button" data-v-26da3b24="" data-v-26571f4f="" data-id="'+ data[i].id +'">删除</button>\n' +
                                '         </div>' +
                                '</div>';
                    $("#address-list").append(label);
                }
            }
        });
        $("#user-name").val("");
        $("#user-phone").val("");
        $("#address").val("");
        $("#null-address").hide();
        $("#edit-the-address").hide();
    });
    // 编辑地址按钮
    $(document).on("click", ".update-address", function () {
        $("#edit-the-address").show();
        $("#update-type").val("update");
        $("#address-id").val($(this).data("id"));
        let id = $(this).data("id");
        $.get("/address",{"method":"findByIdAddress", "id":id},function(data) {
            data = eval("("+data+")");
            $("#user-name").val(data.userName);
            $("#user-phone").val(data.phone);
            $("#address").val(data.address);
            $(".m-checkbox__original").val(data.type);
            $("#address-id").val(id);
        });
    });
    // 删除地址按钮
    $(document).on("click",".delete-address",function () {
        let id = $(this).data("id");
        $.ajax({
            url:"/address",
            type: "post",
            data:{"method":"delete","addressId":id},
            dataType: "json",
            success:function (data) {
                $("#address-list").empty();
                if (data.length === 0) {
                    $("#null-address-show").val(1);
                } else {
                    $("#null-address-show").val(0);
                }
                let type;
                for (let i = 0; i < data.length; i++) {
                    if (data[i].type == 1) {
                        type = "(默认地址)";
                    } else {
                        type = "";
                    }
                    let label = '<div class="address-item" data-v-26da3b24="" data-v-26571f4f="">' +
                        '    <div class="name" data-v-26da3b24="" data-v-26571f4f="">'+ data[i].userName +'</div>\n' +
                        '    <div class="address-msg" data-v-26da3b24="" data-v-26571f4f="">'+ data[i].address +'</div>\n' +
                        '    <div class="telephone" data-v-26da3b24="" data-v-26571f4f="">'+ data[i].phone +'</div>\n' +
                        '    <div class="defalut" data-v-26da3b24="" data-v-26571f4f="">\n' +
                        '        <a class="defalut-address" data-v-26da3b24="" data-v-26571f4f="">'+ type +'</a>\n' +
                        '    </div>\n' +
                        '    <div class="operation" data-v-26da3b24="" data-v-26571f4f="">\n' +
                        '        <button id="update-address" class="m-button button--primary button--small" type="button" data-v-26da3b24="" data-v-26571f4f="" data-id="'+ data[i].id +'">编辑</button>\n' +
                        '        <button id="delete-address" class="m-button button--danger button--small" type="button" data-v-26da3b24="" data-v-26571f4f="" data-id="'+ data[i].id +'">删除</button>\n' +
                        '  </div>' +
                        '</div>';
                    $("#address-list").append(label);
                }
                showAddress();
            }
        });
    });
    let avatar = document.getElementById("img-preview");
    avatar.onclick = function () {
        let f = document.getElementById("new-avatar").files[0];
        let url = URL.createObjectURL(f);
        document.getElementById("avatar-img").src = url
    }
    function showAddress() {
        if ($("#null-address-hide").val() == 1 && $("#null-address-show").val() == 1) {
            $("#null-address").show();
        } else {
            $("#null-address").hide();
        }
    }
})