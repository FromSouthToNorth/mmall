package com.mmall.servlet;

import com.alibaba.fastjson.JSON;
import com.mmall.entity.Goods;
import com.mmall.entity.GoodsInfo;
import com.mmall.entity.GoodsThumb;
import com.mmall.service.GoodsInfoService;
import com.mmall.service.GoodsService;
import com.mmall.service.GoodsThumbService;
import com.mmall.service.impl.GoodsInfoServiceImpl;
import com.mmall.service.impl.GoodsServiceImpl;
import com.mmall.service.impl.GoodsThumbServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/goods")
public class GoodsServlet extends HttpServlet {
    private final GoodsService goodsService = new GoodsServiceImpl();
    private final GoodsInfoService goodsInfoService = new GoodsInfoServiceImpl();
    private final GoodsThumbService goodsThumbService = new GoodsThumbServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        HttpSession session = req.getSession();
        if (method == null) {
            method = "findAllGoods";
        }
        switch (method) {
            case "findAllGoods":
                List<Goods> goods = goodsService.findAllGoods();
                String json = JSON.toJSONStringWithDateFormat(goods, "yyyy-MM-dd");
                resp.getWriter().write(json);
                break;
            case "info":
                String goodsId = req.getParameter("goodsId");
                Integer id = Integer.parseInt(goodsId);
                Goods byIdGoods = goodsService.findByIdGoods(id);
                List<GoodsInfo> byGoodsIdGoodsInfo = goodsInfoService.findByGoodsIdGoodsInfo(id);
                List<GoodsThumb> byGoodsIdGoodsThumb = goodsThumbService.findByGoodsIdGoodsThumb(id);
                session.setAttribute("goods", byIdGoods);
                session.setAttribute("goodsInfo", byGoodsIdGoodsInfo);
                session.setAttribute("goodsThumb", byGoodsIdGoodsThumb);
                resp.sendRedirect("goodsDetails.jsp");
                break;
            case "goods":
                String term = req.getParameter("term");
                String pageStr = req.getParameter("page");
                String goodsSort = req.getParameter("sort");
                if (goodsSort == null) {
                    session.removeAttribute("sort");
                }
                if (pageStr == null) {
                    pageStr = "1";
                }
                int page = Integer.parseInt(pageStr);
                List<Goods> goodsList = null;
                switch (term) {
                    case "all":
                        goodsList = goodsService.findAllGoods();
                        break;
                    case "phone":
                        goodsList = goodsService.findByTypeGoods(4);
                        break;
                    case "costume":
                        goodsList = goodsService.findByTypeGoods(1);
                        break;
                    case "goodsCity":
                        goodsList = goodsService.findByTypeGoods(2);
                        break;
                }
                if ("descending".equals(goodsSort)) {
                    switch (term) {
                        case "all":
                            goodsList = goodsService.descendingGoods(goodsService.findAllGoods());
                            getData(resp, session,"descending", term, page, goodsList);
                            break;
                        case "phone":
                            goodsList = goodsService.descendingGoods(goodsService.findByTypeGoods(4));
                            getData(resp, session,"descending", term, page, goodsList);
                            break;
                        case "costume":
                            goodsList = goodsService.descendingGoods(goodsService.findByTypeGoods(1));
                            getData(resp, session,"descending", term, page, goodsList);
                            break;
                        case "goodsCity":
                            goodsList = goodsService.descendingGoods(goodsService.findByTypeGoods(2));
                            getData(resp, session,"descending", term, page, goodsList);
                            break;
                    }
                    return;
                }
                if ("ascending".equals(goodsSort)) {
                    switch (term) {
                        case "all":
                            goodsList = goodsService.ascendingGoods(goodsService.findAllGoods());
                            getData(resp, session,"ascending", term, page, goodsList);
                            break;
                        case "phone":
                            goodsList = goodsService.ascendingGoods(goodsService.findByTypeGoods(4));
                            getData(resp, session,"ascending", term, page, goodsList);
                            break;
                        case "costume":
                            goodsList = goodsService.ascendingGoods(goodsService.findByTypeGoods(1));
                            getData(resp, session,"ascending", term, page, goodsList);
                            break;
                        case "goodsCity":
                            goodsList = goodsService.ascendingGoods(goodsService.findByTypeGoods(2));
                            getData(resp, session,"ascending", term, page, goodsList);
                            break;
                    }
                    return;
                }
                int dataNum;
                assert goodsList != null;
                Integer total = goodsService.getTotal(goodsList.size(), 8);
                if (page >= total) {
                    dataNum = goodsList.size();
                } else {
                    dataNum = 8 * page;
                }
                session.setAttribute("term", term);
                session.setAttribute("page", page);
                session.setAttribute("goodsList", goodsList.subList((page - 1) * 8, dataNum));
                session.setAttribute("total", goodsList.size());
                resp.sendRedirect("goods.jsp");
                break;
            case "removeTerm":
                if (session.getAttribute("term") != null)
                    session.removeAttribute("term");
                break;
        }

    }

    private void getData(HttpServletResponse resp, HttpSession session,String sort, String term, int page, List<Goods> goodsList) throws IOException {
        int dataNum;
        assert goodsList != null;
        Integer total = goodsService.getTotal(goodsList.size(), 8);
        if (page >= total) {
            dataNum = goodsList.size();
        } else {
            dataNum = 8 * page;
        }
        session.setAttribute("sort", sort);
        session.setAttribute("term", term);
        session.setAttribute("page", page);
        session.setAttribute("goodsList", goodsList.subList((page - 1) * 8, dataNum));
        session.setAttribute("total", goodsList.size());
        resp.sendRedirect("goods.jsp");
    }
}
