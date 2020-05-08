package com.mmall.service.impl;

import com.mmall.dao.UsersDAO;
import com.mmall.dao.impl.UsersDAOImpl;
import com.mmall.entity.Users;
import com.mmall.service.UsersService;

import java.util.List;

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

    @Override
    public Users findAdmin(Users users) {
        return usersDAO.findAdmin(users);
    }

    @Override
    public List<Users> findAllUsers() {
        return usersDAO.findAllUsers();
    }

    @Override
    public void findByIdUpdateUsers(Users users) {
        usersDAO.findByIdUpdateUsers(users);
    }

    @Override
    public void findByIdUpdatePassword(Users users) {
        usersDAO.findByIdUpdatePassword(users);
    }

    @Override
    public void addUser(Users users) {
        usersDAO.addUser(users);
    }

    @Override
    public void findByIdUpdateUser(Users users) {
        usersDAO.findByIdUpdateUser(users);
    }
}
