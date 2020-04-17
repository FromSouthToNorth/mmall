package com.mmall.entity;

import java.util.Date;

public class Goods {
    private Integer id;
    private String goodsName;
    private Double price;
    private String goodsTitle;
    private String goodsImg;
    private GoodsType goodsType;
    private Date registerDate;
    private Date updateDate;

    public Goods() {
    }

    public Goods(Integer id, String goodsName, Double price, String goodsTitle, String goodsImg, GoodsType goodsType, Date registerDate, Date updateDate) {
        this.id = id;
        this.goodsName = goodsName;
        this.price = price;
        this.goodsTitle = goodsTitle;
        this.goodsImg = goodsImg;
        this.goodsType = goodsType;
        this.registerDate = registerDate;
        this.updateDate = updateDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getGoodsTitle() {
        return goodsTitle;
    }

    public void setGoodsTitle(String goodsTitle) {
        this.goodsTitle = goodsTitle;
    }

    public String getGoodsImg() {
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
    }

    public GoodsType getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(GoodsType goodsType) {
        this.goodsType = goodsType;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", goodsName='" + goodsName + '\'' +
                ", price=" + price +
                ", goodsTitle='" + goodsTitle + '\'' +
                ", goodsImg='" + goodsImg + '\'' +
                ", goodsType=" + goodsType +
                ", registerDate=" + registerDate +
                ", updateDate=" + updateDate +
                '}';
    }
}
