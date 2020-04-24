package com.mmall.entity;

public class Address {
    private Integer id;
    private Integer userId;
    private String userName;
    private String phone;
    private String address;
    private Integer type;

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Address() {
    }

    public Address(Integer id, Integer userId, String userName, String phone, String address, Integer type) {
        this.id = id;
        this.userId = userId;
        this.userName = userName;
        this.phone = phone;
        this.address = address;
        this.type = type;
    }
}
