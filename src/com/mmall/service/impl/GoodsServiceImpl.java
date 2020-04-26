package com.mmall.service.impl;

import com.mmall.dao.GoodsDAO;
import com.mmall.dao.impl.GoodsDAOImpl;
import com.mmall.entity.Goods;;
import com.mmall.service.GoodsService;

import java.util.Comparator;
import java.util.List;

public class GoodsServiceImpl implements GoodsService {
    private final GoodsDAO goodsDAO = new GoodsDAOImpl();
    @Override
    public List<Goods> findAllGoods() {
        return goodsDAO.findAllGoods();
    }

    @Override
    public List<Goods> findByTypeGoods(Integer id) {
        return goodsDAO.findByTypeGoods(id);
    }

    @Override
    public Goods findByIdGoods(Integer id) {
        return goodsDAO.findByIdGoods(id);
    }

    @Override
    public Integer getTotal(Integer size, Integer limit) {
        Integer total;
        if (size % limit == 0) {
            total = size / limit;
        } else {
            total = size / limit + 1;
        }
        return total;
    }

    @Override
    public List<Goods> descendingGoods(List<Goods> goodsList) {
        goodsList.sort((o1, o2) -> o2.getPrice().compareTo(o1.getPrice()));
        return goodsList;
    }

    @Override
    public List<Goods> ascendingGoods(List<Goods> goodsList) {
        goodsList.sort(Comparator.comparing(Goods::getPrice));
        return goodsList;
    }

    @Override
    public List<Goods> findByPriceGoods(Double lowPrice, Double highPrice) {
        return goodsDAO.findByPriceGoods(lowPrice, highPrice);
    }

    @Override
    public List<Goods> findByLikeNameGoods(String name) {
        return goodsDAO.findByLikeNameGoods(name);
    }
}
