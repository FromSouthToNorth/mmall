package com.mmall.dao.impl;

import com.mmall.dao.GoodsInfoDAO;
import com.mmall.entity.GoodsInfo;
import com.mmall.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsInfoDAOImpl implements GoodsInfoDAO {
    @Override
    public List<GoodsInfo> findByGoodsIdGoodsInfo(Integer id) {
        Connection connection = JDBCTools.getConnection();
        String sql = "select * from goods_info where goods_id = ?";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<GoodsInfo> goodsInfos = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                goodsInfos.add(new GoodsInfo(
                        resultSet.getInt(1),
                        resultSet.getInt(2),
                        resultSet.getString(3)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return goodsInfos;
    }
}
