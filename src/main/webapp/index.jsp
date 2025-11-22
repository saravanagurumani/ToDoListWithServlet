<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ToDo App - Home</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #7b4397, #dc2430);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            width: 380px;
            padding: 70px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            text-align: center;
            animation: fadeIn 0.9s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            margin-top: 0;
            font-size: 26px;
            color: #333;
            letter-spacing: 1px;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 14px;
            margin: 12px 0;
            border-radius: 10px;
            text-decoration: none;
            color: white;
            font-size: 18px;
            font-weight: bold;
            transition: 0.3s ease-in-out;
        }

        .add-btn {
            background: #28a745;
        }
        .add-btn:hover {
            background: #218838;
            transform: scale(1.05);
        }

        .view-btn {
            background: #007bff;
        }
        .view-btn:hover {
            background: #0069d9;
            transform: scale(1.05);
        }

        .footer {
            margin-top: 20px;
            color: #555;
            font-size: 13px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>To-Do List App</h1>

    <a href="addtask.jsp" class="btn add-btn"> Add New Task</a>
    <a href="viewall" class="btn view-btn"> View All Tasks</a>

    <div class="footer">Manage your tasks efficiently</div>
</div>

</body>
</html>
