package com.mmall.dao;

import com.mmall.entity.Users;

public interface UsersDAO {
    void saveUsers(Users users);
    Users findUsers(Users users);
    void updateLoginData(Users users);
}
