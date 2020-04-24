package com.mmall.dao.impl;

import com.mmall.dao.AddressDAO;
import com.mmall.entity.Address;
import com.mmall.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AddressDAOImpl implements AddressDAO {
    @Override
    public List<Address> findByUserIdAddress(Integer id) {
        Connection connection = JDBCTools.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Address> addresses = new ArrayList<>();
        String sql = "select * from address where user_id = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                addresses.add(new Address(
                        resultSet.getInt(1),
                        resultSet.getInt(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getInt(6)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return addresses;
    }

    @Override
    public Address findByIdAddress(Integer id) {
        Connection connection = JDBCTools.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Address address = null;
        String sql = "select * from address where id = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                address = new Address(
                        resultSet.getInt(1),
                        resultSet.getInt(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getInt(6)
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return address;
    }

    @Override
    public void updateByIdAddress(Address address) {
        Connection connection = JDBCTools.getConnection();
        PreparedStatement statement = null;
        String sql = "update address set user_name = ?, phone = ?, address = ?, `type` = ? where id = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, address.getUserName());
            statement.setString(2, address.getPhone());
            statement.setString(3, address.getAddress());
            statement.setInt(4, address.getType());
            statement.setInt(5, address.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }

    @Override
    public void deleteByIdAddress(Integer id) {
        Connection connection = JDBCTools.getConnection();
        PreparedStatement statement = null;
        String sql = "delete from address where id = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }

    @Override
    public void saveAddress(Address address) {
        Connection connection = JDBCTools.getConnection();
        PreparedStatement statement = null;
        String sql = "insert into address (user_id, user_name, phone, address, `type`) values(?, ?, ?, ?, ?)";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, address.getUserId());
            statement.setString(2, address.getUserName());
            statement.setString(3, address.getPhone());
            statement.setString(4, address.getAddress());
            statement.setInt(5, address.getType());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }
}
