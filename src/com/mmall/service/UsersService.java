package com.mmall.service;

import com.mmall.entity.Users;

public interface UsersService {
    void saveUsers(Users users);
    Users findUsers(Users users);
    void updateLoginData(Users users);
    void updateAvatar(Users users);
    Users findByIdUsers(Integer id);
    Users findAdmin(Users users);
}
