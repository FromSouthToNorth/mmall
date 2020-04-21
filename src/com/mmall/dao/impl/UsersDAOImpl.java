package com.mmall.dao.impl;

import com.mmall.dao.UsersDAO;
import com.mmall.entity.Users;
import com.mmall.utils.JDBCTools;

import java.sql.*;

public class UsersDAOImpl implements UsersDAO {
    @Override
    public void saveUsers(Users users) {
        Connection connection = JDBCTools.getConnection();
        String sql = "insert into users (user_name, user_password, user_type, register_date) values(?, ?, ?, ?)";
        PreparedStatement statement = null;
        try {
            Date date = new Date(users.getRegisterDate().getTime());
            statement = connection.prepareStatement(sql);
            statement.setString(1, users.getUserName());
            statement.setString(2, users.getUserPassword());
            statement.setInt(3, users.getUserType());
            statement.setDate(4, date);
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
        String sql = "select * from users where user_name = ? and user_password = ?";
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
                        resultSet.getInt(4),
                        resultSet.getDate(5),
                        resultSet.getDate(6)
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
}
