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
        if ("stateUser".equals(method)) {
            String state = req.getParameter("state");
            System.out.println(id + state);
            usersService.findByIdUpdateState(Integer.parseInt(id), Integer.parseInt(state));
        }
        if ("deleteUser".equals(method)) {
            usersService.findByIdDeleteUser(Integer.parseInt(id));
        }
        if ("updatePassword".equals(method)) {
            String oldPassword = req.getParameter("oldPassword");
            System.out.println(oldPassword);
            System.out.println(id);
            String password = req.getParameter("password");
            Users byIdAndPasswordUser = usersService.findByIdAndPasswordUser(Integer.parseInt(id), oldPassword);
            System.out.println(byIdAndPasswordUser);
            if (byIdAndPasswordUser != null) {
                Users users = new Users();
                users.setId(Integer.parseInt(id));
                users.setUserPassword(password);
                usersService.findByIdUpdatePassword(users);
                resp.getWriter().write("密码正确");
            } else {
                resp.getWriter().write("密码错误！");
            }
        }
        if ("findByDateAndLikeNameUser".equals(method)) {
            String minData = req.getParameter("minData");
            String maxData = req.getParameter("maxData");
            String name = req.getParameter("name");
            String type = req.getParameter("type");
            System.out.println(maxData);
            System.out.println(maxData);
            System.out.println(name);
            System.out.println(type);
            Integer userType = Integer.parseInt(type);
            List<Users> byDateAndLikeNameUser = usersService.findByDateAndLikeNameUser(minData, maxData, name, userType);
            String json = JSON.toJSONStringWithDateFormat(byDateAndLikeNameUser, "yyyy-MM-dd");
            resp.getWriter().write(json);
        }
    }
}
