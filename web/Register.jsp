<%-- 
    Document   : Register
    Created on : 4 Aug, 2023, 3:12:14 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
  font-family: 'Roboto Slab', serif;
  width: 100%;
  font-size: 18px;
  padding: 5px;
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
      <form id="login-form" action="RegisterController">
      <h2>REGISTER</h2>
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="uname" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="pass" required>
      </div>
      <button type="submit">Register</button>
      <p class="register-link">Already a user ?  <a href="Login.jsp">Login here</a></p>
    </form>
  </div>
    </body>
    
</html>
