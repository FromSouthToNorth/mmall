package com.mmall.dao.impl;

import com.mmall.dao.GoodsTypeDAO;
import com.mmall.entity.Goods;
import com.mmall.entity.GoodsType;
import com.mmall.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsTypeDAOImpl implements GoodsTypeDAO {
    @Override
    public Integer findByTypeId(String type) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select id from goods_type where type = ?";
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

    @Override
    public List<GoodsType> findByAllGoodsType() {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from goods_type";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<GoodsType> goodsTypes = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                goodsTypes.add(new GoodsType(
                        resultSet.getInt(1),
                        resultSet.getString(2)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return goodsTypes;
    }

    @Override
    public void saveGoodsType(GoodsType goodsType) {
        Connection connection = JDBCTools.getConnection();
        PreparedStatement statement = null;
        String sql = "insert into goods_type (type) values (?)";
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, goodsType.getType());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }
}
