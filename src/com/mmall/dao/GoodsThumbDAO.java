package com.mmall.dao;

import com.mmall.entity.GoodsThumb;

import java.util.List;

public interface GoodsThumbDAO {
    List<GoodsThumb> findByGoodsIdGoodsThumb(Integer id);
}
