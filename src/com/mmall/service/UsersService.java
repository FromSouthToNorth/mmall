package com.mmall.service;

import com.mmall.entity.Users;

public interface UsersService {
    void saveUsers(Users users);
    Users findUsers(Users users);
}
