<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expense Tracker - Profile</title>
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
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .profile-form {
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 15px;
            margin-top: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .password-container {
            display: flex;
            align-items: center;
        }
        .password-container input {
            flex-grow: 1;
        }
        .toggle-password {
            margin-left: 10px;
            cursor: pointer;
            color: #4CAF50;
        }
        .update-btn {
            background: linear-gradient(90deg,rgba(3, 255, 32, 1) 0%, rgba(86, 149, 204, 1) 55%, rgba(21, 0, 255, 1) 100%);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            grid-column: 2;
        }
        .update-btn:hover {
            background-color: #45a049;
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
        <h2>User Profile</h2>
        
        <form action="updateUserData" method="post" class="profile-form">
            <div class="form-group">
                <label for="id">User ID:</label>
                <input type="text" id="id" name="id" value="${user.id}" readonly>
            </div>
            
            <div class="form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" value="${user.name}">
            </div>
            
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${user.email}">
            </div>
            
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="${user.username}">
            </div>
            
            <div class="form-group">
                <label for="password">Password:</label>
                <div class="password-container">
                    <input type="password" id="password" name="password" value="${user.password}">
                    <a href="#" onclick="document.getElementById('password').type = 
                        (document.getElementById('password').type === 'password' ? 'text' : 'password'); 
                        return false;" class="toggle-password">👁️</a>
                </div>
            </div>
            
            <button type="submit" class="update-btn">Update Profile</button>
        </form>
        <br>
         <div><center>${sucmsg}</center></div>
    </div>
</body>
</html>