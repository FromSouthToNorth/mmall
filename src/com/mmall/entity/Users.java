package com.mmall.entity;

import java.util.Date;

public class Users {
    private Integer id;
    private String userName;
    private String userPassword;
    private String sex;
    private String phoneCall;
    private String mail;
    private String avatar;
    private Integer userType;
    private Integer state;
    private Date registerDate;
    private Date loginDate;

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhoneCall() {
        return phoneCall;
    }

    public void setPhoneCall(String phoneCall) {
        this.phoneCall = phoneCall;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

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

    public Users(Integer id, String userName, String userPassword, String sex, String phoneCall, String mail, String avatar, Integer userType, Integer state, Date registerDate, Date loginDate) {
        this.id = id;
        this.userName = userName;
        this.userPassword = userPassword;
        this.sex = sex;
        this.phoneCall = phoneCall;
        this.mail = mail;
        this.avatar = avatar;
        this.userType = userType;
        this.state = state;
        this.registerDate = registerDate;
        this.loginDate = loginDate;
    }
}
