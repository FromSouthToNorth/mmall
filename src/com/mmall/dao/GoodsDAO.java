package com.mmall.dao;

import com.mmall.entity.Goods;

import java.util.List;

public interface GoodsDAO {
    List<Goods> findAllGoods();
    List<Goods> findByTypeGoods(Integer id);
    Goods findByIdGoods(Integer id);
    List<Goods> findByPriceGoods(Double lowPrice, Double highPrice);
    List<Goods> findByLikeNameGoods(String name);
    List<Goods> findByDateAndLikeNameGoods(String minData, String maxData, String name);
    void saveGoods(Goods goods);
    void updateGoods(Goods goods);
    void findByIdDeleteGoods(Integer id);
}
