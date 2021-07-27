package com.controller;

import com.dao.DaoException;
import com.dao.UsersDao;
import com.dao.UsersDaoImpl;
import com.model.StuInfo;
import com.model.Teachers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "FuzzyQueryStuInfo", value = "/FuzzyQueryStuInfo")
public class FuzzyQueryStuInfo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String info=request.getParameter("info");
        Teachers teachers=(Teachers) request.getSession().getAttribute("teachers");
        ArrayList<StuInfo> stuInfos=new ArrayList<StuInfo>();
        UsersDao dao=new UsersDaoImpl();
        try {
            stuInfos=dao.findByFuzzyStuInfo(info);
            request.getSession().setAttribute("teachers",teachers);
            request.getSession().setAttribute("stuInfos",stuInfos);
            RequestDispatcher rd= request.getRequestDispatcher("/stuInfoManagement.jsp");
            rd.forward(request,response);
        } catch (DaoException e) {
            e.printStackTrace();
        }
    }
}
