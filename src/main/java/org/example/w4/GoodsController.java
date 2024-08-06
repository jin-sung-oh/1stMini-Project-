package org.example.w4;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;
import org.example.w4.common.StringUtil;
import org.example.w4.dao.AniDAO;
import org.example.w4.dao.GoodsDAO;
import org.example.w4.vo.AniVO;
import org.example.w4.vo.GoodsVO;

import java.io.IOException;
import java.util.List;

@WebServlet(value = "/goods")
@Log4j2
public class GoodsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    try{
        List<GoodsVO> GoodsVOArrayList = GoodsDAO.INSTANCE.list();

        req.setAttribute("goodslist", GoodsVOArrayList);


        req.getRequestDispatcher("/WEB-INF/goods.jsp").forward(req, resp);

    }catch(Exception e) {
            e.printStackTrace();//debug
        }
    }
}



