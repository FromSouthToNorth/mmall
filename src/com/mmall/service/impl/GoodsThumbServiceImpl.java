package com.mmall.service.impl;

import com.mmall.dao.GoodsThumbDAO;
import com.mmall.dao.impl.GoodsThumbDAOImpl;
import com.mmall.entity.GoodsThumb;
import com.mmall.service.GoodsThumbService;

import java.util.List;

public class GoodsThumbServiceImpl implements GoodsThumbService {
    private final GoodsThumbDAO goodsThumbDAO = new GoodsThumbDAOImpl();
    @Override
    public List<GoodsThumb> findByGoodsIdGoodsThumb(Integer id) {
        return goodsThumbDAO.findByGoodsIdGoodsThumb(id);
    }
}
