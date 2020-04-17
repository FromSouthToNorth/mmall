package com.mmall.dao.impl;

import com.mmall.dao.GoodsTypeDAO;
import com.mmall.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GoodsTypeDAOImpl implements GoodsTypeDAO {
    @Override
    public Integer findByTypeId(String type) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select id form goods_type where type = ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Integer typeId = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, type);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                typeId = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return typeId;
    }
}
