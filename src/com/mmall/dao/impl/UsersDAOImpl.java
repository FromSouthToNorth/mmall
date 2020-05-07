package com.mmall.dao.impl;

import com.mmall.dao.UsersDAO;
import com.mmall.entity.Users;
import com.mmall.utils.JDBCTools;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UsersDAOImpl implements UsersDAO {
    @Override
    public void saveUsers(Users users) {
        Connection connection = JDBCTools.getConnection();
        String sql = "insert into users (user_name, user_password, user_type, state ,register_date) values(?, ?, ?, ?, ?)";
        PreparedStatement statement = null;
        try {
            Date date = new Date(users.getRegisterDate().getTime());
            statement = connection.prepareStatement(sql);
            statement.setString(1, users.getUserName());
            statement.setString(2, users.getUserPassword());
            statement.setInt(3, users.getUserType());
            statement.setInt(4, users.getState());
            statement.setDate(5, date);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }

    @Override
    public Users findUsers(Users users) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from users where user_name = ? and user_password = ? and state = 1";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Users user = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, users.getUserName());
            statement.setString(2, users.getUserPassword());
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                user =  new Users(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getInt(8),
                        resultSet.getInt(9),
                        resultSet.getDate(10),
                        resultSet.getDate(11)
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement ,resultSet);
        }
        return user;
    }

    @Override
    public void updateLoginData(Users users) {
        Connection connection = JDBCTools.getConnection();
        String sql = "update users set login_date = ? where id = ?";
        PreparedStatement statement = null;
        Date date = new Date(users.getLoginDate().getTime());
        try {
            statement = connection.prepareStatement(sql);
            statement.setDate(1, date);
            statement.setInt(2, users.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }

    @Override
    public void updateAvatar(Users users) {
        Connection connection = JDBCTools.getConnection();
        String sql = "update users set avatar = ? where id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, users.getAvatar());
            statement.setInt(2, users.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }

    @Override
    public Users findByIdUsers(Integer id) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from users where id = ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Users user = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                user =  new Users(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getInt(8),
                        resultSet.getInt(9),
                        resultSet.getDate(10),
                        resultSet.getDate(11)
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement ,resultSet);
        }
        return user;
    }

    @Override
    public Users findAdmin(Users users) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from users where user_name = ? and user_password = ? and user_type = 1 and state = 1";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Users user = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, users.getUserName());
            statement.setString(2, users.getUserPassword());
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                user =  new Users(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getInt(8),
                        resultSet.getInt(9),
                        resultSet.getDate(10),
                        resultSet.getDate(11)
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement ,resultSet);
        }
        return user;
    }

    @Override
    public List<Users> findAllUsers() {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from users";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Users> users = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                users.add(new Users(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getInt(8),
                        resultSet.getInt(9),
                        resultSet.getDate(10),
                        resultSet.getDate(11)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return users;
    }

    @Override
    public void findByIdUpdateUsers(Users users) {
        Connection connection = JDBCTools.getConnection();
        String sql = "update users set user_name = ? avatar = ? where id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, users.getUserName());
            statement.setString(2, users.getAvatar());
            statement.setInt(3, users.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }

    @Override
    public void findByIdUpdatePassword(Users users) {
        Connection connection = JDBCTools.getConnection();
        String sql = "update users set user_password = ? where id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, users.getUserPassword());
            statement.setInt(2, users.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }
}
