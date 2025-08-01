<%@ page import="pack1.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard – Online Electronic Store</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #74ebd5, #ACB6E5);
        color: #fff;
        animation: fadeIn 0.8s ease-in-out;
    }

    .container {
        max-width: 600px;
        margin: 100px auto;
        text-align: center;
        background-color: rgba(0,0,0,0.3);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0,0,0,0.3);
    }

    h1 {
        margin-bottom: 30px;
    }

    a {
        display: block;
        margin: 15px 0;
        padding: 12px 20px;
        background-color: #34495e;
        color: #fff;
        text-decoration: none;
        border-radius: 8px;
        transition: 0.3s;
    }

    a:hover {
        background-color: #2ecc71;
        transform: scale(1.05);
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
</style>
</head>
<body>

<div class="container">
    <h1>
        <%
            AdminBean abean = (AdminBean)session.getAttribute("abean");
            String data = (String)request.getAttribute("msg");
            out.println("Hello, " + abean.getFname() + "! " + data);
        %>
    </h1>

    <a href="AddProduct.html">Add Product</a>
    <a href="view1">View Product</a>
    <a href="Logout.jsp">Logout</a>
</div>

</body>
</html>
