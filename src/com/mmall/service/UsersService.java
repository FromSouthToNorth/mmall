package com.mmall.service;

import com.mmall.entity.Users;

import java.util.List;

public interface UsersService {
    void saveUsers(Users users);
    Users findUsers(Users users);
    void updateLoginData(Users users);
    void updateAvatar(Users users);
    Users findByIdUsers(Integer id);
    Users findAdmin(Users users);
    List<Users> findAllUsers();
    void findByIdUpdateUsers(Users users);
    void findByIdUpdatePassword(Users users);
    void addUser(Users users);
    void findByIdUpdateUser(Users users);
    void findByIdUpdateState(Integer id, Integer state);
    void findByIdDeleteUser(Integer id);
    Users findByIdAndPasswordUser(Integer id, String password);
    List<Users> findByDateAndLikeNameUser(String minData, String maxData, String name, Integer type);
}
