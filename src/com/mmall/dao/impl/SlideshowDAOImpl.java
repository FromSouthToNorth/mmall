package com.mmall.dao.impl;

import com.mmall.dao.SlideshowDAO;
import com.mmall.entity.Slideshow;
import com.mmall.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SlideshowDAOImpl implements SlideshowDAO {
    @Override
    public List<Slideshow> findAll() {
        Connection connection = JDBCTools.getConnection();
        String sql= "select * from slideshow";
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Slideshow> slideshows = new ArrayList<>();
        try {
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                slideshows.add(new Slideshow(
                        resultSet.getInt(1),
                        resultSet.getString(2)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection, statement, resultSet);
        }
        return slideshows;
    }
}
