package org.example.w4;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import lombok.extern.log4j.Log4j2;
import org.example.w4.vo.AniVO;


import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;
import org.example.w4.dao.AniDAO;
import org.example.w4.vo.AniVO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

    @WebServlet(value = "/main")
    @Log4j2
    public class MainController extends HttpServlet {


        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            try {

                List<AniVO> aniVOArrayList = AniDAO.INSTANCE.list();

                req.setAttribute("aniList", aniVOArrayList);

                req.getRequestDispatcher("/WEB-INF/main.jsp").forward(req, resp);
            }catch(Exception e) {
                e.printStackTrace();//debug
            }
        }
    }

