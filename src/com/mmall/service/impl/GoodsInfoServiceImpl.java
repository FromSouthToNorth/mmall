package com.mmall.service.impl;

import com.mmall.dao.GoodsInfoDAO;
import com.mmall.dao.impl.GoodsInfoDAOImpl;
import com.mmall.entity.GoodsInfo;
import com.mmall.service.GoodsInfoService;

import java.util.List;

public class GoodsInfoServiceImpl implements GoodsInfoService {
    private final GoodsInfoDAO goodsInfoDAO = new GoodsInfoDAOImpl();
    @Override
    public List<GoodsInfo> findByGoodsIdGoodsInfo(Integer id) {
        return goodsInfoDAO.findByGoodsIdGoodsInfo(id);
    }
}
