package com.mmall.entity;

import java.util.Date;

public class Users {
    private Integer id;
    private String userName;
    private String userPassword;
    private String avatar;
    private Integer userType;
    private Date registerDate;
    private Date loginDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public Date getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Users() {
    }

    public Users(Integer id, String userName, String userPassword, String avatar, Integer userType, Date registerDate, Date loginDate) {
        this.id = id;
        this.userName = userName;
        this.userPassword = userPassword;
        this.avatar = avatar;
        this.userType = userType;
        this.registerDate = registerDate;
        this.loginDate = loginDate;
    }
}
