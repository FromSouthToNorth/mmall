package com.mmall.servlet;

import com.alibaba.fastjson.JSON;
import com.mmall.entity.Goods;
import com.mmall.service.GoodsService;
import com.mmall.service.impl.GoodsServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/adminGoods")
public class adminGoodsServlet extends HttpServlet {
    private final GoodsService goodsService = new GoodsServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        if ("allGoods".equals(method)) {
            List<Goods> allGoods = goodsService.findAllGoods();
            String json = JSON.toJSONStringWithDateFormat(allGoods, "yyyy-MM-dd");
            resp.getWriter().write(json);
        }
    }
}