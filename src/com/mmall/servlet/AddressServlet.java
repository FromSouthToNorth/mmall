package com.mmall.servlet;

import com.alibaba.fastjson.JSON;
import com.mmall.entity.Address;
import com.mmall.entity.Users;
import com.mmall.service.AddressService;
import com.mmall.service.impl.AddressServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/address")
public class AddressServlet extends HttpServlet {
    private final AddressService addressService = new AddressServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        HttpSession session = req.getSession();
        Users users = (Users) session.getAttribute("user");
        if (users == null)
            return;
        if ("all".equals(method)) {
            List<Address> byUserIdAddress = addressService.findByUserIdAddress(users.getId());
            String json = JSON.toJSONStringWithDateFormat(byUserIdAddress, "yyyy-MM-dd");
            resp.getWriter().write(json);
        }
        if ("findByIdAddress".equals(method)) {
            String id = req.getParameter("id");
            Address byIdAddress = addressService.findByIdAddress(Integer.parseInt(id));
            resp.getWriter().write(JSON.toJSONString(byIdAddress));
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        String addressId = req.getParameter("addressId");
        HttpSession session = req.getSession();
        Users users = (Users) session.getAttribute("user");
        if (users == null)
            return;
        Address address = new Address();
        if ("delete".equals(method)) {
            addressService.deleteByIdAddress(Integer.parseInt(addressId));
        }
        if ("update".equals(method)) {
            String name = req.getParameter("name");
            String id = req.getParameter("id");
            String address1 = req.getParameter("address");
            String phone = req.getParameter("phone");
            String addressType = req.getParameter("addressType");
            address.setId(Integer.parseInt(id));
            address.setAddress(address1);
            address.setPhone(phone);
            address.setUserName(name);
            address.setType(Integer.parseInt(addressType));
            address.setUserId(users.getId());
            addressService.updateByIdAddress(address);
        }
        if ("save".equals(method)) {
            String name = req.getParameter("name");
            String address1 = req.getParameter("address");
            String phone = req.getParameter("phone");
            String addressType = req.getParameter("addressType");
            address.setAddress(address1);
            address.setPhone(phone);
            address.setUserName(name);
            address.setType(Integer.parseInt(addressType));
            address.setUserId(users.getId());
            addressService.saveAddress(address);
        }
        List<Address> byUserIdAddress = addressService.findByUserIdAddress(users.getId());
        String json = JSON.toJSONStringWithDateFormat(byUserIdAddress, "yyyy-MM-dd");
        resp.getWriter().write(json);

    }
}
