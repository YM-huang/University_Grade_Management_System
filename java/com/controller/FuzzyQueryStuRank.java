package com.controller;

import com.dao.DaoException;
import com.dao.UsersDao;
import com.dao.UsersDaoImpl;
import com.model.StuGradeInfo;
import com.model.StuRank;
import com.model.Teachers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "FuzzyQueryStuRank", value = "/FuzzyQueryStuRank")
public class FuzzyQueryStuRank extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String info=request.getParameter("info");
        Teachers teachers=(Teachers) request.getSession().getAttribute("teachers");
        ArrayList<StuRank> stuRanks=new ArrayList<StuRank>();
        UsersDao dao=new UsersDaoImpl();
        try {
            stuRanks=dao.findByFuzzyStuRank(info);
            request.getSession().setAttribute("teachers",teachers);
            request.getSession().setAttribute("stuRanks",stuRanks);
            RequestDispatcher rd= request.getRequestDispatcher("/stuRankManagement.jsp");
            rd.forward(request,response);
        } catch (DaoException e) {
            e.printStackTrace();
        }
    }
}
