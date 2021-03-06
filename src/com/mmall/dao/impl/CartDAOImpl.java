package com.mmall.dao.impl;

import com.mmall.dao.CartDAO;
import com.mmall.entity.Cart;
import com.mmall.entity.Goods;
import com.mmall.entity.GoodsType;
import com.mmall.entity.Users;
import com.mmall.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDAOImpl implements CartDAO {
    @Override
    public void saveCart(Users users, Goods goods) {
        Connection connection = JDBCTools.getConnection();
        String sql = "insert into cart (user_id, goods_id) values (?, ?)";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, users.getId());
            statement.setInt(2, goods.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }

    @Override
    public List<Cart> findByUserIdCart(Users users) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from cart inner join users on users.id = cart.user_id inner join goods on goods.id = cart.goods_id inner join goods_type on goods_type.id = goods.goods_type where user_id = ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Cart> carts = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, users.getId());
            resultSet = statement.executeQuery();
            while (resultSet.next()){
                carts.add(new Cart(
                        resultSet.getInt(1),
                        new Users(
                                resultSet.getInt(4),
                                resultSet.getString(5),
                                resultSet.getString(6),
                                resultSet.getString(7),
                                resultSet.getString(8),
                                resultSet.getString(9),
                                resultSet.getString(10),
                                resultSet.getInt(11),
                                resultSet.getInt(12),
                                resultSet.getDate(13),
                                resultSet.getDate(14)
                        ),
                        new Goods(
                               resultSet.getInt(15),
                               resultSet.getString(16),
                                resultSet.getBigDecimal(17),
                                resultSet.getString(18),
                                resultSet.getString(19),
                                new GoodsType(
                                       resultSet.getInt(23),
                                       resultSet.getString(24)
                                ),
                                resultSet.getDate(21),
                                resultSet.getDate(22)
                        )
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return carts;
    }

    @Override
    public void deleteCart(Cart cart) {
        Connection connection = JDBCTools.getConnection();
        String sql = "delete from cart where id = ?";
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, cart.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, null);
        }
    }
}
