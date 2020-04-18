package com.mmall.dao.impl;

import com.mmall.dao.GoodsThumbDAO;
import com.mmall.entity.GoodsInfo;
import com.mmall.entity.GoodsThumb;
import com.mmall.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsThumbDAOImpl implements GoodsThumbDAO {
    @Override
    public List<GoodsThumb> findByGoodsIdGoodsThumb(Integer id) {
            Connection connection = JDBCTools.getConnection();
            String sql = "select * from goods_thumb where goods_id = ?";
            PreparedStatement statement = null;
            ResultSet resultSet = null;
            List<GoodsThumb> goodsThumbs = new ArrayList<>();
            try {
                statement = connection.prepareStatement(sql);
                statement.setInt(1, id);
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    goodsThumbs.add(new GoodsThumb(
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
            return goodsThumbs;
    }
}
