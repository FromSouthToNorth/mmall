package com.mmall.servlet;

import com.alibaba.fastjson.JSON;
import com.mmall.entity.Goods;
import com.mmall.entity.GoodsType;
import com.mmall.service.GoodsService;
import com.mmall.service.GoodsTypeService;
import com.mmall.service.impl.GoodsServiceImpl;
import com.mmall.service.impl.GoodsTypeServiceImpl;
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

@WebServlet("/files")
public class FileServlet extends HttpServlet {
    private final GoodsTypeService goodsTypeService = new GoodsTypeServiceImpl();
    private final GoodsService goodsService = new GoodsServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        String fileName = null;
        Goods goods = new Goods();
        upload.setHeaderEncoding("UTF-8");
        String type = null;
        String filName;
        try {
            List<FileItem> items = upload.parseRequest(req);
            for (FileItem fileItem : items) {
                if (fileItem.isFormField()) {
                    String fieldName = fileItem.getFieldName();
                    String string = fileItem.getString("UTF-8");
                    if ("goodsName".equals(fieldName)){
                        goods.setGoodsName(string);
                    }
                    if ("goodsTitle".equals(fieldName)) {
                        goods.setGoodsTitle(string);
                    }
                    if ("goodsPrice".equals(fieldName)) {
                        goods.setPrice(Double.valueOf(string));
                    }
                    if ("goodsType".equals(fieldName)) {
                        System.out.println(string);
                        Integer byTypeId = goodsTypeService.findByTypeId(string);
                        goods.setGoodsType(new GoodsType(byTypeId, string));
                    }
                    if ("goodsId".equals(fieldName)) {
                        goods.setId(Integer.parseInt(string));
                    }
                    if ("method".equals(fieldName)) {
                        type = string;
                    }
                } else {
                    if (fileItem.getSize() > 0) {
                        String name = fileItem.getName();
                        String substring = name.substring(name.lastIndexOf("."));
                        InputStream stream = fileItem.getInputStream();
                        filName = GenerateNum.getInstance().GenerateOrder();
                        fileName = filName + substring;
                        String file = req.getServletContext().getRealPath("image/goods/" + fileName);
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        int temp;
                        while ((temp = stream.read()) != -1) {
                            fileOutputStream.write(temp);
                        }
                    }
                }
            }
            if ("updateGoods".equals(type)) {
                if (fileName != null) {
                    goods.setGoodsImg("image/goods/" + fileName);
                } else {
                    Goods byIdGoods = goodsService.findByIdGoods(goods.getId());
                    goods.setGoodsImg(byIdGoods.getGoodsImg());
                }
                goods.setUpdateDate(new Date());
                goodsService.updateGoods(goods);
            }
            if ("addGoods".equals(type)) {
                goods.setGoodsImg("image/goods/" + fileName);
                goods.setRegisterDate(new Date());
                goodsService.saveGoods(goods);
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }
}
