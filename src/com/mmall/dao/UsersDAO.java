package com.mmall.dao;

import com.mmall.entity.Users;

import java.util.List;

public interface UsersDAO {
    void saveUsers(Users users);
    Users findUsers(Users users);
    void updateLoginData(Users users);
    void updateAvatar(Users users);
    Users findByIdUsers(Integer id);
    Users findAdmin(Users users);
    List<Users> findAllUsers();
    void findByIdUpdateUsers(Users users);
    void findByIdUpdatePassword(Users users);
}
