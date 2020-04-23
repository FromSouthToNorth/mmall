package com.mmall.service.impl;

import com.mmall.dao.UsersDAO;
import com.mmall.dao.impl.UsersDAOImpl;
import com.mmall.entity.Users;
import com.mmall.service.UsersService;

public class UsersServiceImpl implements UsersService {
    private final UsersDAO usersDAO = new UsersDAOImpl();
    @Override
    public void saveUsers(Users users) {
        usersDAO.saveUsers(users);
    }

    @Override
    public Users findUsers(Users users) {
        return usersDAO.findUsers(users);
    }

    @Override
    public void updateLoginData(Users users) {
        usersDAO.updateLoginData(users);
    }

    @Override
    public void updateAvatar(Users users) {
        usersDAO.updateAvatar(users);
    }

    @Override
    public Users findByIdUsers(Integer id) {
        return usersDAO.findByIdUsers(id);
    }
}
