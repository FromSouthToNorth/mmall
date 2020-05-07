package com.mmall.servlet;

import com.mmall.entity.Users;
import com.mmall.service.UsersService;
import com.mmall.service.impl.UsersServiceImpl;
import com.mmall.utils.GenerateNum;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

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
                users.setAvatar("无");
                users.setMail("无");
                users.setSex("保密");
                users.setState(1);
                service.saveUsers(users);
                resp.getWriter().write("login.jsp");
                break;
            case "login":
                Users user = service.findUsers(users);
                if (user != null) {
                    user.setLoginDate(new Date());
                    session.setAttribute("user", user);
                    service.updateLoginData(user);
                    resp.getWriter().write("index.jsp");
                } else {
                    resp.getWriter().write("用户名或密码错误！");
                }
                break;
            case "updateAvatar":
                DiskFileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                String fileName = null;
                try {
                    List<FileItem> fileItems = upload.parseRequest(req);
                    for (FileItem fileItem : fileItems) {
                        if (fileItem.isFormField()) {
                            String fieldName = fileItem.getFieldName();
                            String string = fileItem.getString("UTF-8");
                            if (fieldName.equals("id")) {
                                users.setId(Integer.parseInt(string));
                            }
                        } else {
                            if (fileItem.getSize() > 0) {
                                String name = fileItem.getName();
                                String substring = name.substring(name.lastIndexOf("."));
                                InputStream stream = fileItem.getInputStream();
                                String filName = GenerateNum.getInstance().GenerateOrder();
                                fileName = filName + substring;
                                String file = req.getServletContext().getRealPath("image/avatar/" + fileName);
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                int temp;
                                while ((temp = stream.read()) != -1) {
                                    fileOutputStream.write(temp);
                                }
                            }
                        }
                    }
                    users.setAvatar("image/avatar/" + fileName);
                    service.updateAvatar(users);
                    Users byIdUsers = service.findByIdUsers(users.getId());
                    session.setAttribute("user", byIdUsers);
                    resp.sendRedirect("user.jsp");
                } catch (FileUploadException e) {
                    e.printStackTrace();
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
