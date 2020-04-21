package com.mmall.service.impl;

import com.mmall.dao.CartDAO;
import com.mmall.dao.impl.CartDAOImpl;
import com.mmall.entity.Cart;
import com.mmall.entity.Goods;
import com.mmall.entity.Users;
import com.mmall.service.CartService;

import java.util.List;

public class CartServiceImpl implements CartService {
    private final CartDAO cartDAO = new CartDAOImpl();
    @Override
    public void saveCart(Users users, Goods goods) {
        cartDAO.saveCart(users, goods);
    }

    @Override
    public List<Cart> findByUserIdCart(Users users) {
        return cartDAO.findByUserIdCart(users);
    }

    @Override
    public void deleteCart(Cart cart) {
        cartDAO.deleteCart(cart);
    }
}
