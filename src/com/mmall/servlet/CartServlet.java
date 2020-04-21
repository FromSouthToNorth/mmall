package com.mmall.servlet;

import com.alibaba.fastjson.JSON;
import com.mmall.entity.Cart;
import com.mmall.entity.Users;
import com.mmall.service.CartService;
import com.mmall.service.impl.CartServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    private final CartService cartService = new CartServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        HttpSession session = req.getSession();
        Users users = (Users) session.getAttribute("user");
        if (users == null)
            return;
        if ("findByUserIdCart".equals(method)) {
            List<Cart> byUserIdCart = cartService.findByUserIdCart(users);
            String json = JSON.toJSONStringWithDateFormat(byUserIdCart, "yyyy-MM-dd");
            resp.getWriter().write(json);
        }
    }
}
