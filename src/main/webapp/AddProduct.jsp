<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="pack1.AdminBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message – Online Electronic Store</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #6dd5fa, #2980b9);
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        animation: fadeIn 1s ease-in;
    }

    h1 {
        color: white;
        margin-bottom: 30px;
        text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.4);
    }

    .message-box {
        background-color: rgba(255, 255, 255, 0.15);
        padding: 40px 50px;
        border-radius: 15px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.3);
        backdrop-filter: blur(8px);
        text-align: center;
    }

    a {
        display: inline-block;
        font-size: 18px;
        color: white;
        text-decoration: none;
        background-color: #34495e;
        padding: 10px 25px;
        margin: 10px;
        border-radius: 10px;
        transition: background-color 0.3s, transform 0.2s;
    }

    a:hover {
        background-color: #2ecc71;
        transform: scale(1.05);
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to   { opacity: 1; }
    }
</style>
</head>
<body>

<%
    AdminBean abean = (AdminBean) session.getAttribute("abean");
    String data = (String) request.getAttribute("msg");
%>

    <h1><%= data %> Mr. <%= abean.getFname() %></h1>

    <div class="message-box">
        <a href="AddProduct.html">Add Product</a><br>
        <a href="viewl">View Product</a><br>
        <a href="Logout.jsp">Logout</a><br>
    </div>

</body>
</html>
