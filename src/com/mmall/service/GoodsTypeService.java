package com.mmall.service;

import com.mmall.entity.GoodsType;

import java.util.List;

public interface GoodsTypeService {
    Integer findByTypeId(String type);
    List<GoodsType> findByAllGoodsType();
    void saveGoodsType(GoodsType goodsType);
}
