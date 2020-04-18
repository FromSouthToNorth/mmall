package com.mmall.entity;

public class GoodsInfo {
    private Integer id;
    private Integer goodsId;
    private String goodsInfoImg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsInfoImg() {
        return goodsInfoImg;
    }

    public void setGoodsInfoImg(String goodsInfoImg) {
        this.goodsInfoImg = goodsInfoImg;
    }

    public GoodsInfo() {
    }

    public GoodsInfo(Integer id, Integer goodsId, String goodsInfoImg) {
        this.id = id;
        this.goodsId = goodsId;
        this.goodsInfoImg = goodsInfoImg;
    }
}
