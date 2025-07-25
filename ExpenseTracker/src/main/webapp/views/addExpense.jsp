<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Expense - Expense Tracker</title>
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
            max-width: 600px;
            margin: 30px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"],
        input[type="date"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        textarea {
            height: 100px;
            resize: vertical;
        }
        .btn-submit {
            background: linear-gradient(90deg,rgba(3, 255, 32, 1) 0%, rgba(86, 149, 204, 1) 55%, rgba(21, 0, 255, 1) 100%);
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 10px;
        }
        .btn-submit:hover {
            opacity: 0.9;
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
        <h2>Add New Expense</h2>
        
        <form action="saveExpense?id=${user.id}" method="post">
            <div class="form-group">
                <label for="expenseName">Expense Name</label>
                <input type="text" id="expenseName" name="expenseName" required placeholder="Enter expense name">
            </div>
            
            <div class="form-group">
                <label for="expenseDate">Date</label>
                <input type="date" id="expenseDate" name="expenseDate" required>
            </div>
            
            <div class="form-group">
                <label for="expenseAmount">Amount</label>
                <input type="number" id="expenseAmount" name="expenseAmount" required placeholder="Enter amount" step="0.01" min="0">
            </div>
            
            <div class="form-group">
                <label for="expenseDescription">Description</label>
                <textarea id="expenseDescription" name="expenseDescription" placeholder="Enter description (optional)"></textarea>
            </div>
            
            <button type="submit" class="btn-submit">Add Expense</button>
           
        </form>
        
    </div>
</body>
</html>