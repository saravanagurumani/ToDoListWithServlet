<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Task</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #11998e, #38ef7d);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            width: 380px;
            padding: 30px;
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

        input[type="text"] {
            width: 90%;
            padding: 12px;
            margin-top: 18px;
            border: 1px solid #bbb;
            border-radius: 10px;
            font-size: 16px;
            outline: none;
            transition: 0.3s;
        }

        input[type="text"]:focus {
            border-color: #11998e;
            box-shadow: 0 0 8px rgba(17,153,142,0.4);
        }

        .btn {
            padding: 12px 16px;
            margin-top: 20px;
            width: 100%;
            border: none;
            border-radius: 10px;
            color: white;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
            font-weight: bold;
        }

        .add-btn {
            background: #11998e;
        }
        .add-btn:hover {
            background: #0e857a;
            transform: scale(1.05);
        }

        .home-btn {
            background: #007bff;
            margin-top: 15px;
        }
        .home-btn:hover {
            background: #0069d9;
            transform: scale(1.05);
        }
    </style>

</head>
<body>

<div class="container">

    <h1>Add New Task</h1>

    <form action="addtask" method="post">
        <input type="hidden" name="action" value="add">

        <input type="text" name="task" placeholder="Enter your task..." required>

        <button class="btn add-btn" type="submit">➕ Add Task</button>
    </form>

    <a href="index.jsp">
        <button class="btn home-btn" type="button">⬅ Back to Home</button>
    </a>

</div>

</body>
</html>
