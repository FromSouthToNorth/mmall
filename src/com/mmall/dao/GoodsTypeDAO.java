package com.mmall.dao;

import com.mmall.entity.GoodsType;

import java.util.List;

public interface GoodsTypeDAO {
    Integer findByTypeId(String type);
    List<GoodsType> findByAllGoodsType();
    void saveGoodsType(GoodsType goodsType);
}
