<%-- 
    Document   : Login
    Created on : Jul 30, 2023, 8:52:56 PM
    Author     : AR WorkStation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Form</title>
        <style>

            @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap');

            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .login-container {
                background-color: #ffffff;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
                padding: 20px;
                border-radius: 8px;
                width: 300px;
            }

            h2 {
                text-align: center;
            }

            .form-group {
                margin-bottom: 15px;
            }

            label {
                display: block;
                margin-bottom: 1%;
                font-size:18px ;

                font-family: 'Roboto Slab', serif;
            }

            input {
                width: 90%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                transition: border-color 0.3s ease;
            }

            input:focus {
                outline: none;
                border-color: #007bff;
            }

            button {
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                color: #ffffff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            button:hover {
                background-color: #0056b3;
            }
            .register-link {
                text-align: center;
                margin-top: 5%;

            }

            .register-link a {
                padding: 2px;
                color: #007bff;
                text-decoration: none;
            }

            .register-link a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <form id="login-form" action="loginController" method="post">
                <h2>LOGIN</h2>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="uname" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="pass" required>
                </div>
                <button type="submit">Log In</button>
                <p class="register-link">Not a user ?  <a href="Register.jsp">Register here</a></p>
            </form>
        </div>
    </body>
</html>

