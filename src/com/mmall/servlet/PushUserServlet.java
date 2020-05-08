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
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

@WebServlet("/pushUser")
public class PushUserServlet extends HttpServlet {
    private final UsersService usersService = new UsersServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        String fileName = null;
        Users users = new Users();
        upload.setHeaderEncoding("UTF-8");
        String method = null;
        String filName;
        try {
            List<FileItem> fileItems = upload.parseRequest(req);
            for (FileItem fileItem : fileItems) {
                if (fileItem.isFormField()) {
                    String fieldName = fileItem.getFieldName();
                    String string = fileItem.getString("UTF-8");
                    if ("id".equals(fieldName)) {
                        if (!string.equals("")) {
                            users.setId(Integer.parseInt(string));
                        }
                    }
                    if ("name".equals(fieldName)) {
                        users.setUserName(string);
                    }
                    if ("phone".equals(fieldName)) {
                        users.setPhoneCall(string);
                    }
                    if ("state".equals(fieldName)) {
                        users.setState(Integer.parseInt(string));
                    }
                    if ("password".equals(fieldName)) {
                        users.setUserPassword(string);
                    }
                    if ("type".equals(fieldName)) {
                        users.setUserType(Integer.parseInt(string));
                    }
                    if ("sex".equals(fieldName)) {
                        users.setSex(string);
                    }
                    if ("email".equals(fieldName)) {
                        users.setMail(string);
                    }
                    if ("method".equals(fieldName)) {
                        method = string;
                    }
                } else {
                    if (fileItem.getSize() > 0) {
                        String name = fileItem.getName();
                        String substring = name.substring(name.lastIndexOf("."));
                        InputStream stream = fileItem.getInputStream();
                        filName = GenerateNum.getInstance().GenerateOrder();
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
            if ("addUser".equals(method)) {
                users.setAvatar("image/avatar/" + fileName);
                users.setRegisterDate(new Date());
                usersService.addUser(users);
            }
            if ("updateUser".equals(method)) {
                if (fileName != null) {
                    users.setAvatar("image/goods/" + fileName);
                } else {
                    Users byIdUsers = usersService.findByIdUsers(users.getId());
                    users.setAvatar(byIdUsers.getAvatar());
                }
                usersService.findByIdUpdateUser(users);
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }
}
