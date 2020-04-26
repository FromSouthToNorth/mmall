package com.mmall.service;

import com.mmall.entity.Goods;

import java.util.List;

public interface GoodsService {
    List<Goods> findAllGoods();
    List<Goods> findByTypeGoods(Integer id);
    Goods findByIdGoods(Integer id);
    Integer getTotal(Integer size, Integer limit);
    List<Goods> descendingGoods(List<Goods> goodsList);
    List<Goods> ascendingGoods(List<Goods> goodsList);
    List<Goods> findByPriceGoods(Double lowPrice, Double highPrice);
    List<Goods> findByLikeNameGoods(String name);
}
