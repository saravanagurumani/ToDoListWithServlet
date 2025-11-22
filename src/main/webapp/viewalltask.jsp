<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.todolist.Model.Tasks" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Tasks</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            padding-top: 40px;
        }

        .container {
            background: white;
            width: 500px;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.3);
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(25px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            text-align: center;
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        .task-box {
            background: #f5f5f5;
            padding: 15px;
            margin-bottom: 12px;
            border-radius: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: 0.3s;
        }

        .task-box:hover {
            background: #e9e9e9;
            transform: scale(1.02);
        }

        .task-text {
            font-size: 18px;
            color: #333;
        }

        .task-done {
            text-decoration: line-through;
            color: #11998e;
            font-weight: bold;
        }

        .btn {
            padding: 7px 12px;
            border: none;
            border-radius: 8px;
            font-size: 14px;
            cursor: pointer;
            color: white;
            margin-left: 6px;
        }

        .edit-btn { background: #ffc107; }
        .edit-btn:hover { background: #e0a800; }

        .delete-btn { background: #dc3545; }
        .delete-btn:hover { background: #b52a37; }

        .done-btn { background: #28a745; }
        .done-btn:hover { background: #218838; }

        .footer-btn {
            margin-top: 20px;
            width: 100%;
            max-width: 200px;   /* Optional: control button size */
            padding: 15px;
            border-radius: 10px;
            font-size: 18px;
            text-align: center;
            text-decoration: none;
            display: block;      /* IMPORTANT */
            margin-left: auto;   /* Center horizontally */
            margin-right: auto;  /* Center horizontally */
            background: #007bff;
            color: white;
            transition: 0.3s;
        }
        .footer-btn:hover {
            background: #0069d9;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<%
       ArrayList<Tasks> tasks = (ArrayList<Tasks>) request.getAttribute("tasks");
%>

<div class="container">

    <h1>All Tasks</h1>

    <%
        if (tasks != null && !tasks.isEmpty()) {
            for (Tasks t : tasks) {
    %>

        <div class="task-box">
            <span class="task-text"><%= t.getId() %></span>
            <span class="task-text"><%= t.getDescription() %></span>

            <div>
                <!-- DONE -->
                <form action="deletetask" method="get" style="display:inline;">
                    <input type="hidden" name="action" value="done">
                    <input type="hidden" name="id" value="<%= t.getId() %>">
                    <button class="btn done-btn">Done</button>
                </form>

                <!-- EDIT -->
                <form action="edit.jsp" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="<%= t.getId() %>">
                    <button class="btn edit-btn">Edit</button>
                </form>

                <!-- DELETE -->
                <form action="deletetask" method="get" style="display:inline;"
                      onsubmit="return confirm('Are you sure you want to delete this task?');">

                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="id" value="<%= t.getId() %>">
                    <button class="btn delete-btn">Delete</button>
                </form>
            </div>
        </div>

    <%
            }
        } else {
    %>

        <p style="text-align:center; font-size:18px; color:#dc3545;">
            No tasks added yet.
        </p>

    <%
        }
    %>

    <a href="index.jsp" class="footer-btn"> Back to Home</a>

</div>

</body>
</html>
