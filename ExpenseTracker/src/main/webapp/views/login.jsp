<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Tracker - Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f5f5f5;
        }

        .auth-container {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 1.5rem;
        }

        .form-group {
            margin-bottom: 1rem;
        }

        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #333;
        }

        input {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            padding: 0.75rem;
            background-color: #2EED2B;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            margin-top: 1rem;
        }

        button:hover {
            background-color: #25D923;
            border-bottom:solid 2px black;
        }

        p {
            text-align: center;
            margin-top: 1rem;
        }

        a {
            color: #3498db;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="auth-container">
        <h1>Login</h1>
        <form action="checklogin" method="get">
            <div class="form-group">
                <label for="loginUsername">Username:</label>
                <input type="text" name="username" id="loginUsername" required>
            </div>
            <div class="form-group">
                <label for="loginPassword">Password:</label>
                <input type="password" name="password" id="loginPassword" required>
            </div>
            <button type="submit">Login</button>
            <p>New User ? <a href="register">Register here</a></p>
            <div><center>${error}</center></div>
        </form>
    </div>
</body>
</html>