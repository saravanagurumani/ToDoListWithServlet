package com.todolist.Controller;

import com.todolist.Model.DaoClass;
import com.todolist.Model.Tasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/addtask")
public class AddTaskServlet extends HttpServlet {

    DaoClass dao=new DaoClass();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String tasks=req.getParameter("task");

        Tasks tasks1=new Tasks(tasks);
        String result=dao.addtasks(tasks1);
        System.out.println(result);
        resp.sendRedirect("viewall");

    }
}
