package com.todolist.Controller;

import com.todolist.Model.DaoClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/updatetask")
public class UpdateTaskServlet extends HttpServlet {
    DaoClass dao=new DaoClass();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String desc = req.getParameter("description");

        boolean updated = dao.updatetask(id, desc);

        if (updated) {
            resp.sendRedirect("viewall");
        } else {
            resp.getWriter().write("Task Not Found");
        }
    }
}
