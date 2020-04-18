package com.mmall.entity;

public class GoodsThumb {
    private Integer id;
    private Integer goodsId;
    private String goodsImg;

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

    public String getGoodsImg() {
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
    }

    public GoodsThumb() {
    }

    public GoodsThumb(Integer id, Integer goodsId, String goodsImg) {
        this.id = id;
        this.goodsId = goodsId;
        this.goodsImg = goodsImg;
    }
}
