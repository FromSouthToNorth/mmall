package com.mmall.service;

import com.mmall.entity.Cart;
import com.mmall.entity.Goods;
import com.mmall.entity.Users;

import java.util.List;

public interface CartService {
    void saveCart(Users users, Goods goods);
    List<Cart> findAllCart(Users users);
    void deleteCart(Cart cart);
}
