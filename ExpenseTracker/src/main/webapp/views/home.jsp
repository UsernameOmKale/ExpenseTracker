<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expense Tracker - Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background: radial-gradient(circle,rgba(63, 94, 251, 1) 0%, rgba(252, 70, 107, 1) 100%);
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .nav-links a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
        }
        .nav-links a:hover {
            text-decoration: underline;
        }
        .content {
            padding: 20px;
            text-align: center;
        }
        .buttons {
            margin-top: 30px;
        }
        .btn {
            background: linear-gradient(90deg,rgba(3, 255, 32, 1) 0%, rgba(86, 149, 204, 1) 55%, rgba(21, 0, 255, 1) 100%);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 0 10px;
            text-decoration: none;
            display: inline-block;
        }
        .btn:hover {
            border-bottom-left-radius: solid white 2px;
        }
        .description {
            margin-top: 30px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
            text-align: left;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <header>
        <h1>Expense Tracker</h1>
        <div class="nav-links">
            <a href="home?id=${user.id}">Home</a>
            <a href="profile?id=${user.id}">Profile</a>
            <a href="logout">Logout</a>
        </div>
    </header>
    
    <div class="content">
        <h2>Welcome to Expense Tracker</h2>
        
        <div class="buttons">
            <a href="addExpensepage?id=${user.id}" class="btn">Add Expense</a>
            <a href="allExpensepage?id=${user.id}" class="btn">View All Expenses</a>
        </div>
        
        <div class="description"><br>
            <h3>About Expense Tracker</h3>
            <p>
               description about expense tracker
            </p>
        </div>
    </div>
</body>
</html>