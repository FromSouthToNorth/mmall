$(function () {
    $.ajax({
        type:"get",
        url: "/cart",
        data: {"method":"findByUserIdCart"},
        dataType:"JSON",
        success:function (data) {
            let cartSize = 0;
            let totalPrice = 0;
            cartSize = data.length;
            if (data.length === 0) {
                $("#null-cart").css("display", "block");
                $("#cart-list").css("display", "none");
                $("#cart-bottom").css("display", "none");
                $(".shipping-total.shipping-num h4 i").text(0);
                $(".shipping-total.shipping-num h5 i").text(0);
                $(".shipping-total.shipping-price h4 i").text(0);
            } else {
                $("#null-cart").css("display", "none");
                $("#cart-list").css("display", "block");
                $("#cart-bottom").css("display", "block");
            }
            for (let i = 0; i < data.length; i++) {
                totalPrice += parseInt(data[i].goods.price);
                let label = '<div class="cart-table" data-v-e6523e26="">\n' +
                    '             <div class="cart-group divide pr" data-v-e6523e26="">\n' +
                    '                 <div class="cart-top-items" data-v-e6523e26="">\n' +
                    '                     <div class="cart-items clearfix" data-v-e6523e26="">\n' +
                    '                         <div class="items-choose" data-v-e6523e26="">\n' +
                    '                             <span class="blue-checkbox-new checkbox-on" data-v-e6523e26=""></span>\n' +
                    '                         </div>\n' +
                    '                         <div class="items-thumb fl" data-v-e6523e26="">\n' +
                    '                             <img data-v-e6523e26="" src="'+ data[i].goods.goodsImg +'" alt="">\n' +
                    '                             <a data-v-e6523e26="" title="'+ data[i].goods.goodsName +'" target="_blank"></a>\n' +
                    '                         </div>\n' +
                    '                         <div class="name hide-row fl" data-v-e6523e26="">\n' +
                    '                             <div class="name-table" data-v-e6523e26="">\n' +
                    '                                 <a data-v-e6523e26="" title="'+ data[i].goods.goodsName +'" target="_blank">'+ data[i].goods.goodsName +'</a>\n' +
                    '                             </div>\n' +
                    '                         </div>\n' +
                    '                         <div class="operation" data-v-e6523e26="">\n' +
                    '                             <a id="delete-btn" class="items-delete-btn" data-id="'+ data[i].id +'" data-v-e6523e26=""></a>\n' +
                    '                         </div>\n' +
                    '                         <div data-v-e6523e26="">\n' +
                    '                             <div class="subtotal" data-v-e6523e26="" style="font-size: 14px">￥ '+ data[i].goods.price +'</div>\n' +
                    '                         </div>\n' +
                    '                         <div class="item-cols-num clearfix" data-v-e6523e26="" data-v-d10cb02a=""\n' +
                    '                         style="height: 140px; display: flex;align-items: center;justify-content: center;">\n' +
                    '                             <div class="select" data-v-d10cb02a="">\n' +
                    '                                 <span class="down down-disabled" data-v-d10cb02a="">-</span>\n' +
                    '                                 <span class="num" data-v-d10cb02a="">\n' +
                    '                                     <input class="show" data-v-d10cb02a="" readonly="readonly" value="1" maxlength="2" type="text">\n' +
                    '                                 </span>\n' +
                    '                                 <span class="up" data-v-d10cb02a="">+</span>\n' +
                    '                             </div>\n' +
                    '                         </div>\n' +
                    '                         <div class="price1" data-v-e6523e26="">￥ '+ data[i].goods.price +'</div>\n' +
                    '                     </div>\n' +
                    '                 </div>\n' +
                    '             </div>\n' +
                    '         </div>';
                $("#cart-data").append(label);
            }
            $(".shipping-total.shipping-num h4 i").text(cartSize);
            $(".shipping-total.shipping-num h5 i").text(cartSize);
            $(".shipping-total.shipping-price h4 i").text(totalPrice);
        }
    });
    $(document).on("click", "#delete-btn", function () {
        let cartId = $(this).data("id");
        $("#cart-data").empty();
        $(".product_list").empty();
        $.ajax({
            type: "post",
            url: "/cart",
            data: {"method": "deleteCart", "cartId": cartId},
            dataType: "JSON",
            success: function (data) {
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
                        '               <div class="del-btn del" data-id=' + data[i].id + ' data-v-7d15c3c3="">删除</div>\n' +
                        '             </div>\n' +
                        '           </div>\n' +
                        '         </li>';
                    $(".product_list").append(label);
                }
                $("#total-price").text(totalPrice);
            }
        });
        $.ajax({
            type: "post",
            url: "/cart",
            data: {"method": "deleteCart", "cartId": cartId},
            dataType: "JSON",
            success:function (data) {
                let cartSize = 0;
                let totalPrice = 0;
                cartSize = data.length;
                if (data.length === 0) {
                    $("#null-cart").css("display", "block");
                    $("#cart-list").css("display", "none");
                    $("#cart-bottom").css("display", "none");
                    $(".shipping-total.shipping-num h4 i").text(0);
                    $(".shipping-total.shipping-num h5 i").text(0);
                    $(".shipping-total.shipping-price h4 i").text(0);
                } else {
                    $("#null-cart").css("display", "none");
                    $("#cart-list").css("display", "block");
                    $("#cart-bottom").css("display", "block");
                }
                for (let i = 0; i < data.length; i++) {
                    totalPrice += parseInt(data[i].goods.price);
                    let label = '<div class="cart-table" data-v-e6523e26="">\n' +
                        '             <div class="cart-group divide pr" data-v-e6523e26="">\n' +
                        '                 <div class="cart-top-items" data-v-e6523e26="">\n' +
                        '                     <div class="cart-items clearfix" data-v-e6523e26="">\n' +
                        '                         <div class="items-choose" data-v-e6523e26="">\n' +
                        '                             <span class="blue-checkbox-new checkbox-on" data-v-e6523e26=""></span>\n' +
                        '                         </div>\n' +
                        '                         <div class="items-thumb fl" data-v-e6523e26="">\n' +
                        '                             <img data-v-e6523e26="" src="'+ data[i].goods.goodsImg +'" alt="">\n' +
                        '                             <a data-v-e6523e26="" title="'+ data[i].goods.goodsName +'" target="_blank"></a>\n' +
                        '                         </div>\n' +
                        '                         <div class="name hide-row fl" data-v-e6523e26="">\n' +
                        '                             <div class="name-table" data-v-e6523e26="">\n' +
                        '                                 <a data-v-e6523e26="" title="'+ data[i].goods.goodsName +'" target="_blank">'+ data[i].goods.goodsName +'</a>\n' +
                        '                             </div>\n' +
                        '                         </div>\n' +
                        '                         <div class="operation" data-v-e6523e26="">\n' +
                        '                             <a id="delete-btn" class="items-delete-btn" data-id="'+ data[i].id +'" data-v-e6523e26=""></a>\n' +
                        '                         </div>\n' +
                        '                         <div data-v-e6523e26="">\n' +
                        '                             <div class="subtotal" data-v-e6523e26="" style="font-size: 14px">￥ '+ data[i].goods.price +'</div>\n' +
                        '                         </div>\n' +
                        '                         <div class="item-cols-num clearfix" data-v-e6523e26="" data-v-d10cb02a=""\n' +
                        '                         style="height: 140px; display: flex;align-items: center;justify-content: center;">\n' +
                        '                             <div class="select" data-v-d10cb02a="">\n' +
                        '                                 <span class="down down-disabled" data-v-d10cb02a="">-</span>\n' +
                        '                                 <span class="num" data-v-d10cb02a="">\n' +
                        '                                     <input class="show" data-v-d10cb02a="" readonly="readonly" value="1" maxlength="2" type="text">\n' +
                        '                                 </span>\n' +
                        '                                 <span class="up" data-v-d10cb02a="">+</span>\n' +
                        '                             </div>\n' +
                        '                         </div>\n' +
                        '                         <div class="price1" data-v-e6523e26="">￥ '+ data[i].goods.price +'</div>\n' +
                        '                     </div>\n' +
                        '                 </div>\n' +
                        '             </div>\n' +
                        '         </div>';
                    $("#cart-data").append(label);
                }
                $(".shipping-total.shipping-num h4 i").text(cartSize);
                $(".shipping-total.shipping-num h5 i").text(cartSize);
                $(".shipping-total.shipping-price h4 i").text(totalPrice);
            }
        })
    })
})