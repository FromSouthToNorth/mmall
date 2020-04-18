package com.mmall.service;

import com.mmall.entity.GoodsThumb;

import java.util.List;

public interface GoodsThumbService {
    List<GoodsThumb> findByGoodsIdGoodsThumb(Integer id);
}
