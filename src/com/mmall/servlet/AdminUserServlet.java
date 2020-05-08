package com.mmall.servlet;

import com.alibaba.fastjson.JSON;
import com.mmall.entity.Users;
import com.mmall.service.UsersService;
import com.mmall.service.impl.UsersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/adminUser")
public class AdminUserServlet extends HttpServlet {
    private final UsersService usersService = new UsersServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        if ("findByAllUser".equals(method)) {
            List<Users> allUsers = usersService.findAllUsers();
            String json = JSON.toJSONStringWithDateFormat(allUsers, "yyyy-MM-dd");
            resp.getWriter().write(json);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        String id = req.getParameter("id");
        if ("findByIdUser".equals(method)) {
            Users byIdUsers = usersService.findByIdUsers(Integer.parseInt(id));
            resp.getWriter().write(JSON.toJSONString(byIdUsers));
        }
    }
}
