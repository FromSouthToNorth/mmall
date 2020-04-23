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
                        resultSet.getString(4)
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
    public void updateByIdAddress(Address address) {

    }

    @Override
    public void deleteByIdAddress(Integer id) {

    }

    @Override
    public void saveAddress(Address address) {

    }
}
