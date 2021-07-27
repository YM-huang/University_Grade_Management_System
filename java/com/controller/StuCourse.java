package com.controller;

import com.dao.DaoException;
import com.dao.UsersDao;
import com.dao.UsersDaoImpl;
import com.model.StuAddress;
import com.model.Students;
import com.model.Teachers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "StuCourse", value = "/StuCourse")
public class StuCourse extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Students students=(Students) request.getSession().getAttribute("students");
        ArrayList<com.model.StuCourse> stuCourses=new ArrayList<com.model.StuCourse>();
        UsersDao dao=new UsersDaoImpl();
        try {
            stuCourses=dao.findAllStuCourse(students.getLpy_Sno15());
        } catch (DaoException e) {
            e.printStackTrace();
        }
        request.getSession().setAttribute("students",students);
        request.getSession().setAttribute("stuCourses",stuCourses);
        RequestDispatcher rd= request.getRequestDispatcher("/stuCourse.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
