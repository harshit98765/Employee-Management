<%-- 
    Document   : EmpAdd
    Created on : Jul 30, 2023, 10:29:22 PM
    Author     : AR WorkStation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Registration</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .form-container {
      width: 400px;
      background-color: #f9f9f9;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
    }

    .form-heading {
      text-align: center;
      font-size: 28px;
      font-weight: bold;
      margin-bottom: 20px;
      color: #007bff;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
    }

    .input-container {
      position: relative;
      margin-bottom: 20px;
    }

    .input-container label {
      position: absolute;
      top: 0;
      left: 10px;
      padding: 5px;
      font-weight: bold;
      pointer-events: none;
      transition: all 0.3s ease;
      background-color: #f9f9f9;
    }

    .input-container input,
    .input-container select {
      width: 90%;
      padding: 12px;
      border: none;
      border-bottom: 1px solid #ccc;
      background-color: #f9f9f9;
      font-size: 16px;
      color: black;
      border-radius: 0;
      transition: border-color 0.3s ease;
    }

    .input-container input:focus,
    .input-container select:focus {
      outline: none;
      border-color: #007bff;
    }

    .input-container input:valid + label,
    .input-container select:valid + label {
      transform: translateY(-20px);
      background-color: #ffffff;
    }

    .gender-container {
      display: flex;
      justify-content: center;
      align-items: center;
      margin-bottom: 20px;
      color: black;
      font-weight: bold;
    }

    .gender-container label {
      margin-right: 10%;
    }

    button {
      width: 100%;
      padding: 12px 20px;
      background-color: #007bff;
      color: #ffffff;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-size: 18px;
      text-transform: uppercase;
      letter-spacing: 1px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h2 class="form-heading">Employee Registration</h2>
    <form action="EmpAddController" method="post" > 
        
      <div class="input-container">
        <input type="text" name="name" required>
        <label>Name</label>
      </div>
      <div class="input-container">
        <input type="text" name="sal" required>
        <label>Salary</label>
      </div>
      <div class="input-container">
        <input type="text" name="dept" required>
        <label>Department No</label>
      </div>
 <div class="input-container">
        <input type="text" name="comm" required>
        <label>Commission </label>
      </div>
      
      <div class="gender-container">
        <label for="male">Gender</label>
        <input type="radio" id="male" name="gender" value="male" required>
        <label for="male">Male</label>
        <input type="radio" id="female" name="gender" value="female" required>
        <label for="female">Female</label>
      </div>

     

      <button type="submit">Submit</button>
    </form>
  </div>
</body>
</html>
