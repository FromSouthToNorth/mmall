package com.mmall.servlet;

import com.alibaba.fastjson.JSON;
import com.mmall.entity.Goods;
import com.mmall.entity.GoodsType;
import com.mmall.service.GoodsService;
import com.mmall.service.GoodsTypeService;
import com.mmall.service.impl.GoodsServiceImpl;
import com.mmall.service.impl.GoodsTypeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/adminGoods")
public class AdminGoodsServlet extends HttpServlet {
    private final GoodsService goodsService = new GoodsServiceImpl();
    private final GoodsTypeService goodsTypeService = new GoodsTypeServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        String id = req.getParameter("id");
        List<Goods> allGoods;
        if ("allGoods".equals(method)) {
            allGoods = goodsService.findAllGoods();
            String json = JSON.toJSONStringWithDateFormat(allGoods, "yyyy-MM-dd");
            resp.getWriter().write(json);
        }
        if ("findByMinDateAndMaxDateAndLikeNameGoods".equals(method)) {
            String minDate = req.getParameter("minDate");
            String maxDate = req.getParameter("maxDate");
            String goodsName = req.getParameter("goodsName");
            allGoods = goodsService.findByDateAndLikeNameGoods(minDate, maxDate, goodsName);
            String json = JSON.toJSONStringWithDateFormat(allGoods, "yyyy-MM-dd");
            resp.getWriter().write(json);
        }
        if ("findByIdGoods".equals(method)) {
            Goods byIdGoods = goodsService.findByIdGoods(Integer.parseInt(id));
            resp.getWriter().write(JSON.toJSONString(byIdGoods));
        }
        if ("deleteGoods".equals(method)) {
            goodsService.findByIdDeleteGoods(Integer.parseInt(id));
        }
        if ("saveGoodsType".equals(method)) {
            String type = req.getParameter("type");
            goodsTypeService.saveGoodsType(new GoodsType(null, type));
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        if ("findByGoodsType".equals(method)) {
            List<GoodsType> byAllGoodsType = goodsTypeService.findByAllGoodsType();
            String json = JSON.toJSONStringWithDateFormat(byAllGoodsType, "yyyy-MM-dd");
            resp.getWriter().write(json);
        }
    }
}
