package com.mmall.service.impl;

import com.mmall.dao.GoodsTypeDAO;
import com.mmall.dao.impl.GoodsTypeDAOImpl;
import com.mmall.entity.GoodsType;
import com.mmall.service.GoodsTypeService;

import java.util.List;

public class GoodsTypeServiceImpl implements GoodsTypeService {
    private final GoodsTypeDAO goodsTypeDAO = new GoodsTypeDAOImpl();
    @Override
    public Integer findByTypeId(String type) {
        return goodsTypeDAO.findByTypeId(type);
    }

    @Override
    public List<GoodsType> findByAllGoodsType() {
        return goodsTypeDAO.findByAllGoodsType();
    }

    @Override
    public void saveGoodsType(GoodsType goodsType) {
        goodsTypeDAO.saveGoodsType(goodsType);
    }
}
