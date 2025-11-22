package com.todolist.Controller;

import com.todolist.Model.DaoClass;
import com.todolist.Model.Tasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/viewall")
public class ViewAllTaskServlet extends HttpServlet {
    DaoClass dao=new DaoClass();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String task1=req.getParameter("task");

        List<Tasks> arrtask=dao.getalltasks();
        req.setAttribute("tasks", arrtask);
        req.getRequestDispatcher("viewalltask.jsp").forward(req,resp);
    }
}
