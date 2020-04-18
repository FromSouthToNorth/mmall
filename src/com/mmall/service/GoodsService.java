package com.mmall.service;

import com.mmall.entity.Goods;

import java.util.List;

public interface GoodsService {
    List<Goods> findAllGoods();
    List<Goods> findByTypeGoods(Integer id);
    Goods findByIdGoods(Integer id);
}
