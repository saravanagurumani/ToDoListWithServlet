<%@ page import="com.todolist.Model.DaoClass" %>
<%@ page import="com.todolist.Model.Tasks" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    DaoClass dao = new DaoClass();

    Tasks taskToEdit = null;
    for (Tasks t : dao.getalltasks()) {
        if (t.getId() == id) {
            taskToEdit = t;
            break;
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Task</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #43cea2, #185a9d);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            width: 450px;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            animation: fadeIn 0.7s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(25px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            text-align: center;
            margin-bottom: 25px;
            font-size: 28px;
            color: #333;
        }

        label {
            font-size: 17px;
            color: #333;
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            border: 2px solid #ddd;
            border-radius: 10px;
            font-size: 16px;
            transition: border 0.3s;
        }

        input[type="text"]:focus {
            border-color: #43cea2;
            outline: none;
        }

        .btn-save {
            width: 100%;
            margin-top: 20px;
            padding: 14px;
            background: #28a745;
            color: white;
            font-size: 18px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-save:hover {
            background: #218838;
            transform: scale(1.03);
        }

        .btn-back {
            display: block;
            width: 100%;
            text-align: center;
            padding: 14px;
            margin-top: 15px;
            background: #007bff;
            color: white;
            border-radius: 10px;
            text-decoration: none;
            font-size: 18px;
            transition: 0.3s;
        }

        .btn-back:hover {
            background: #0069d9;
            transform: scale(1.03);
        }
    </style>
</head>
<body>

<div class="container">

    <h1>Edit Task</h1>

    <form action="updatetask" method="post">

        <input type="hidden" name="id" value="<%= taskToEdit.getId() %>">

        <label>Task Description</label>
        <input type="text" name="description" value="<%= taskToEdit.getDescription() %>" required>

        <button type="submit" class="btn-save">Update Task</button>
    </form>

    <a href="viewall" class="btn-back">Back to All Tasks</a>

</div>

</body>
</html>
