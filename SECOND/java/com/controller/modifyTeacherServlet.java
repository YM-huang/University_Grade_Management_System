package com.controller;

import com.dao.SchoolDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.basic.BasicTreeUI;
import java.io.IOException;

@WebServlet({"/modifyTeacherServlet"})
public class modifyTeacherServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        SchoolDao dao = new SchoolDao();
        String tno = request.getParameter("tno");
        String tname = request.getParameter("tname");
        String tsex = request.getParameter("tsex");
        String tage = request.getParameter("tage");
        String tprofess = request.getParameter("tprofess");
        String tphone = request.getParameter("tphone");
        String tpass = request.getParameter("tpass");
        String tnoold = request.getParameter("tnoold");
        boolean issuccess = dao.modTeacher(tno,tname,tsex,Integer.parseInt(tage),tprofess,tphone,tpass,tnoold);
        RequestDispatcher rd = request.getRequestDispatcher("queryAllTeacherServlet");
        rd.forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
