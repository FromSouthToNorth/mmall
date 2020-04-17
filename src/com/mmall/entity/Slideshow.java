package com.mmall.entity;

public class Slideshow {
    private Integer id;
    private String img;

    public Slideshow() {
    }

    public Slideshow(Integer id, String img) {
        this.id = id;
        this.img = img;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
