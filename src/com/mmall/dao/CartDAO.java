package com.mmall.dao;

import com.mmall.entity.Cart;
import com.mmall.entity.Goods;
import com.mmall.entity.Users;

import java.util.List;

public interface CartDAO {
    void saveCart(Users users, Goods goods);
    List<Cart> findByUserIdCart(Users users);
    void deleteCart(Cart cart);
}
