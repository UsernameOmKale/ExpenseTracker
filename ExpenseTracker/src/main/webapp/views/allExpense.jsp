<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.ExpenseTracker.Entity.ExpenseEntity" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expense Tracker - All Expenses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        header {
             background: radial-gradient(circle,rgba(63, 94, 251, 1) 0%, rgba(252, 70, 107, 1) 100%);
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .nav-links a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-weight: 500;
        }
        .nav-links a:hover {
            text-decoration: underline;
        }
       







.container {
    max-width: 1000px;
    height: 500px; /* Fixed height instead of max-height */
    margin: 30px auto;
    padding: 20px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    overflow-y: auto; /* Changed from hidden to auto */
    overflow-x: hidden; /* Prevent horizontal scrolling */
    display: flex;
    flex-direction: column;
}

/* Custom scrollbar styling */
.container::-webkit-scrollbar {
    width: 8px;
}

.container::-webkit-scrollbar-track {
    background: #f1f1f1;
    border-radius: 4px;
}

.container::-webkit-scrollbar-thumb {
    background: #888;
    border-radius: 4px;
}

.container::-webkit-scrollbar-thumb:hover {
    background: #555;
}







        .expense-card {
            background: white;
            border-radius: 8px;
            padding: 15px 20px;
            margin-bottom: 15px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .expense-info {
            flex-grow: 1;
        }
        .expense-id {
            font-weight: bold;
            color: #4CAF50;
        }
        .expense-name {
            font-size: 18px;
            font-weight: bold;
            margin: 5px 0;
        }
        .expense-date {
            color: #666;
            font-size: 14px;
        }
        .expense-amount {
            font-weight: bold;
            color: #e53935;
            margin-top: 5px;
        }
        .action-buttons {
            display: flex;
            gap: 10px;
        }
        .btn {
            padding: 8px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 500;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }
        .update-btn {
            background-color: #5257F2;
            color: white;
        }
        .delete-btn {
            background-color: #f44336;
            color: white;
        }
        .btn:hover {
            opacity: 0.9;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
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
    
    <div class="container">
    <h2>All Expenses</h2>
    <%
        List<ExpenseEntity> expenses = (List<ExpenseEntity>) request.getAttribute("exp");
        
        if (expenses != null && !expenses.isEmpty()) {
            for (ExpenseEntity expense : expenses) {
    %>
        <div class="expense-card">
            <div class="expense-info">
                <div class="expense-id">#<%= expense.getEid() %></div>
                <div class="expense-name"><%= expense.getExpenseName() %></div>
                <div class="expense-date"><%= expense.getExpenseDate() %></div>
                <div class="expense-description"><%= expense.getExpenseDescription() %></div>
                <div class="expense-amount">$ <%= expense.getExpenseAmount() %></div>
            </div>
            <div class="action-buttons">
                <a href="updateExpense?eid=<%= expense.getEid() %>&id=${user.id}" class="btn update-btn">Update</a>
                <a href="DeleteExp?eid=<%= expense.getEid() %>&id=${user.id}" class="btn delete-btn" 
                   onclick="return confirm('Are you sure you want to delete this expense?')">Delete</a>
            </div>
        </div>
    <% 
            }
        } else {
    %>
        <div class="no-data">No expenses found.</div>
    <% 
        }
    %>
</div>
</body>
</html>