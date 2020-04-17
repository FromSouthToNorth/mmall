package com.mmall.service.impl;

import com.mmall.dao.UsersDAO;
import com.mmall.dao.impl.UsersDAOImpl;
import com.mmall.entity.Users;
import com.mmall.service.UsersService;

public class UsersServiceImpl implements UsersService {
    private UsersDAO usersDAO = new UsersDAOImpl();
    @Override
    public void saveUsers(Users users) {
        usersDAO.saveUsers(users);
    }

    @Override
    public Users findUsers(Users users) {
        return usersDAO.findUsers(users);
    }
}
