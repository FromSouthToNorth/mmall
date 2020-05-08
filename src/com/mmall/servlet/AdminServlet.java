package com.mmall.servlet;

import com.mmall.entity.Users;
import com.mmall.service.UsersService;
import com.mmall.service.impl.UsersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
    private final UsersService usersService = new UsersServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        HttpSession session = req.getSession();
        Users users = new Users();
        users.setUserName(userName);
        users.setUserPassword(password);
        if ("admin".equals(method)) {
            Users admin = usersService.findAdmin(users);
            if (admin != null) {
                session.setAttribute("admin", admin);
                resp.getWriter().write("adminIndex.jsp");
            } else {
                resp.getWriter().write("账户名或密码错误！");
            }
        }
    }
}
