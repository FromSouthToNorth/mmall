package com.mmall.dao;

import com.mmall.entity.GoodsInfo;

import java.util.List;

public interface GoodsInfoDAO {
    List<GoodsInfo> findByGoodsIdGoodsInfo(Integer id);
}
