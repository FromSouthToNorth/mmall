package com.mmall.service;

import com.mmall.entity.GoodsInfo;

import java.util.List;

public interface GoodsInfoService {
    List<GoodsInfo> findByGoodsIdGoodsInfo(Integer id);
}
