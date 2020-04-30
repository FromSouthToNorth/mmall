package com.mmall.dao.impl;

import com.mmall.dao.GoodsDAO;
import com.mmall.entity.Goods;
import com.mmall.entity.GoodsType;
import com.mmall.utils.JDBCTools;

import java.sql.*;
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

    @Override
    public List<Goods> findByPriceGoods(Double lowPrice, Double highPrice) {
        Connection connection = JDBCTools.getConnection();
        String sql = "SELECT * FROM goods inner join goods_type on goods_type.id = goods.goods_type WHERE price BETWEEN ? AND ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Goods> goods = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            statement.setDouble(1, lowPrice);
            statement.setDouble(2, highPrice);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                goods.add(
                        new Goods(
                                resultSet.getInt(1),
                                resultSet.getString(2),
                                resultSet.getDouble(3),
                                resultSet.getString(4),
                                resultSet.getString(5),
                                new GoodsType(
                                        resultSet.getInt(9),
                                        resultSet.getString(10)
                                ),
                                resultSet.getDate(7),
                                resultSet.getDate(8)
                        )
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return goods;
    }

    @Override
    public List<Goods> findByLikeNameGoods(String name) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from goods inner join goods_type on goods_type.id = goods.goods_type where goods_name like ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Goods> goods = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1,"%" + name + "%");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                goods.add(
                        new Goods(
                                resultSet.getInt(1),
                                resultSet.getString(2),
                                resultSet.getDouble(3),
                                resultSet.getString(4),
                                resultSet.getString(5),
                                new GoodsType(
                                        resultSet.getInt(9),
                                        resultSet.getString(10)
                                ),
                                resultSet.getDate(7),
                                resultSet.getDate(8)
                        )
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return goods;
    }

    @Override
    public List<Goods> findByDateAndLikeNameGoods(String minData, String maxData, String name) {
        Connection connection = JDBCTools.getConnection();
        String sql = "SELECT * FROM goods inner join goods_type on goods_type.id = goods.goods_type WHERE register_date BETWEEN ? AND ? and goods_name like ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Goods> goods = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, minData);
            statement.setString(2, maxData);
            statement.setString(3,"%" + name + "%");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                goods.add(
                        new Goods(
                                resultSet.getInt(1),
                                resultSet.getString(2),
                                resultSet.getDouble(3),
                                resultSet.getString(4),
                                resultSet.getString(5),
                                new GoodsType(
                                        resultSet.getInt(9),
                                        resultSet.getString(10)
                                ),
                                resultSet.getDate(7),
                                resultSet.getDate(8)
                        )
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return goods;
    }

    @Override
    public void saveGoods(Goods goods) {
        Connection connection = JDBCTools.getConnection();
        PreparedStatement statement = null;
        String sql = "insert into goods (goods_name, price, goods_title, goods_img, goods_type, register_date) values (?, ?, ?, ?, ?, ?)";
        Date date = new Date(goods.getRegisterDate().getTime());
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, goods.getGoodsName());
            statement.setDouble(2, goods.getPrice());
            statement.setString(3, goods.getGoodsTitle());
            statement.setString(4, goods.getGoodsImg());
            statement.setInt(5, goods.getGoodsType().getId());
            statement.setDate(6, date);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }

    @Override
    public void updateGoods(Goods goods) {
        Connection connection = JDBCTools.getConnection();
        PreparedStatement statement = null;
        String sql = "update goods set goods_name = ?, price = ?, goods_title = ?, goods_img = ?, goods_type = ?, update_date = ? where id = ?";
        Date date = new Date(goods.getUpdateDate().getTime());
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, goods.getGoodsName());
            statement.setDouble(2, goods.getPrice());
            statement.setString(3, goods.getGoodsTitle());
            statement.setString(4, goods.getGoodsImg());
            statement.setInt(5, goods.getGoodsType().getId());
            statement.setDate(6, date);
            statement.setInt(7, goods.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }

    @Override
    public void findByIdDeleteGoods(Integer id) {
        Connection connection = JDBCTools.getConnection();
        String sql = "delete from goods where id = ?";
        PreparedStatement statement = null;
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
}
