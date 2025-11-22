package com.todolist.Controller;

import com.todolist.Model.DaoClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/deletetask")
public class DeleteTaskServlet extends HttpServlet {
    DaoClass dao=new DaoClass();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        System.out.println(id);

        dao.deletetask(id);

        resp.sendRedirect("viewall");
    }
}
