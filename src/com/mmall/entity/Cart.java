package com.mmall.entity;

public class Cart {
    private Integer id;
    private Users users;
    private Goods goods;

    public Cart() {
    }

    public Cart(Integer id, Users users, Goods goods) {
        this.id = id;
        this.users = users;
        this.goods = goods;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }
}
