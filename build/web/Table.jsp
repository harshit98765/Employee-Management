<%@page import="java.util.List"%>
<%@page import="com.harshit.dao.EmpDao"%>
<%@page import="com.harshit.bean.Emp"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Employee Table</title>
        <style type="text/css">
            body {
                font-family: Arial, sans-serif;
                background-color: black;
                margin: 0;
            }

            .container {
                margin: 20px auto;
                width: 80%;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
                padding: 20px;
                border-radius: 8px;
                background-color: blue;
            }

            h2 {
                text-transform: uppercase;
                text-align: center;
                margin-bottom: 20px;
            }

            h3 {
                font-size: 18px;
                margin-bottom: 5px;
            }

            h4 a{
                text-decoration: underline;
                color:  #007bff;
                font-size: 16px;
                margin: 8px 0;
                text-shadow: 0px 1px 2px 5px solid black;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            thead {
                background-color: #007bff;
                color: #ffffff;
            }

            th, td {
                padding: 10px;
                text-align: center;
                border: 1px solid #ccc;
            }

            tbody tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            tbody tr:hover {
                background-color: #c0c0c0;
            }

            th:first-child, td:first-child {
                text-align: left;
            }


            .edit-button, .delete-button {
                padding: 6px 12px;
                background-color: #007bff;
                color: #ffffff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                text-decoration: none;
            }

            .edit-button:hover, .delete-button:hover {
                background-color: #0056b3;
            }

            .delete-button {
                background-color: #dc3545;
                margin-left: 5px;
            }

            h3 {
                text-align: left;
                margin-left: 20px;
            }

            .user-name {
                font-size: 20px;
                font-weight: bold;
                color: white;
            }

            .logout-link {
                font-size: 18px;
                color: #555;
                text-decoration: none;
                border: 1px solid #007bff;
                padding: 5px 10px;
                border-radius: 5px;
                transition: color 0.3s ease, background-color 0.3s ease, border-color 0.3s ease;
            }

            .logout-link:hover {
                background-color: #007bff;
                color: #fff;
            }

        </style>
    </head>
    <body>
        <% String username =(String)session.getAttribute("username"); %>
        <h3 style="color: white"><span class="user-name">User Name:</span>  <%=username %> </h3>
        <h3><a class="logout-link" href="Login.jsp">Logout</a></h3>
        <div class="container">
            <h2>Employee Table</h2>
            <h4 ><a href="EmpAdd.jsp" style="color: black,text-decoration: none">Add Employee</a></h4>
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Empno</th>
                            <th>Name</th>
                            <th>Department.NO</th>
                            <th>Salary</th>
                            <th>Commission</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>

                        <%

                            EmpDao ed = new EmpDao();
                            List<Emp> al = ed.FindAllEmp();
                            for (Emp x : al) {
                        %>

                        <tr>
                            <td><%=x.getEmpno() %></td>
                            <td><%=x.getName() %></td>
                            <td><%=x.getDeptno() %></td>
                            <td><%=x.getSal() %></td>
                            <td><%=x.getComm() %></td>
                            <td><a href="Update.jsp?empno=<%=x.getEmpno() %>" class="edit-button">Edit</a></td>
                            <td><a href="DeleteController?empno=<%=x.getEmpno() %>" class="delete-button">Delete</a></td>
                        </tr>

                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
