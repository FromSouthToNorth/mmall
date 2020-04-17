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
import java.util.Date;

@WebServlet("/user")
public class UsersServlet extends HttpServlet {
    private final UsersService service = new UsersServiceImpl();
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
        switch (method) {
            case "register":
                Date date = new Date();
                users.setUserType(0);
                users.setRegisterDate(date);
                service.saveUsers(users);
                resp.getWriter().write("login.jsp");
                break;
            case "login":
                Users user = service.findUsers(users);
                if (user != null) {
                    session.setAttribute("user", user);
                    resp.getWriter().write("index.jsp");
                } else {
                    resp.getWriter().write("login.jsp");
                }
                break;

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        String method = req.getParameter("method");
        switch (method){
            case "remove":
                if (session.getAttribute("user") != null) {
                    session.removeAttribute("user");
                    resp.sendRedirect("index.jsp");
                }
                break;
        }
    }
}
