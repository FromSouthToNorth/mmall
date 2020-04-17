package com.mmall.service.impl;

import com.mmall.dao.GoodsDAO;
import com.mmall.dao.impl.GoodsADOImpl;
import com.mmall.entity.Goods;;
import com.mmall.service.GoodsService;

import java.util.List;

public class GoodsServiceImpl implements GoodsService {
    private GoodsDAO goodsDAO = new GoodsADOImpl();
    @Override
    public List<Goods> findAllGoods() {
        return goodsDAO.findAllGoods();
    }

    @Override
    public List<Goods> findByTypeGoods(Integer id) {
        return goodsDAO.findByTypeGoods(id);
    }
}
