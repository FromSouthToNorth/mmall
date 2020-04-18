package com.mmall.dao.impl;

import com.mmall.dao.GoodsDAO;
import com.mmall.entity.Goods;
import com.mmall.entity.GoodsType;
import com.mmall.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsDAOImpl implements GoodsDAO {
    @Override
    public List<Goods> findAllGoods() {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from goods inner join goods_type on goods.goods_type = goods_type.id";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Goods> goods = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                goods.add(new Goods(
                       resultSet.getInt(1),
                       resultSet.getString(2),
                       resultSet.getDouble(3),
                       resultSet.getString(4),
                       resultSet.getString(5),
                       new GoodsType(resultSet.getInt(9),
                               resultSet.getString(10)),
                       resultSet.getDate(7),
                       resultSet.getDate(8)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return goods;
    }

    @Override
    public List<Goods> findByTypeGoods(Integer id) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from goods inner join goods_type on goods.goods_type = goods_type.id where goods_type.id = ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Goods> goods = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                goods.add(new Goods(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getDouble(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        new GoodsType(resultSet.getInt(9),
                                resultSet.getString(10)),
                        resultSet.getDate(7),
                        resultSet.getDate(8)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return goods;
    }

    @Override
    public Goods findByIdGoods(Integer id) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from goods inner join goods_type on goods.goods_type = goods_type.id where goods.id = ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        Goods goods = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                goods = new Goods(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getDouble(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        new GoodsType(resultSet.getInt(9),
                                resultSet.getString(10)),
                        resultSet.getDate(7),
                        resultSet.getDate(8)
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return goods;
    }
}
