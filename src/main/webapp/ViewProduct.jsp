<%@ page import="pack1.AdminBean" %>
<%@ page import="pack1.ProductBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details – Online Electronic Store</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #6dd5fa, #2980b9);
        margin: 0;
        padding: 20px;
        color: white;
        animation: fadeIn 1s ease-in;
    }

    h1 {
        text-align: center;
        margin-bottom: 40px;
        text-shadow: 1px 1px 3px rgba(0,0,0,0.4);
    }

    table {
        width: 90%;
        margin: auto;
        border-collapse: collapse;
        background-color: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(8px);
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
    }

    th, td {
        padding: 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        color: white;
    }

    th {
        background-color: rgba(0, 0, 0, 0.4);
        font-size: 18px;
    }

    a.button {
        background-color: #34495e;
        padding: 8px 15px;
        color: white;
        text-decoration: none;
        border-radius: 8px;
        transition: 0.3s;
        margin: 0 5px;
        display: inline-block;
    }

    a.button:hover {
        background-color: #2ecc71;
        transform: scale(1.05);
    }

    .logout {
        display: block;
        text-align: center;
        margin-top: 30px;
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
</style>
</head>
<body>

<%
    AdminBean abean = (AdminBean) session.getAttribute("abean");
    ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("productlist");
%>

<h1>Hello <%= abean.getLname() %>, these are your product details</h1>

<%
    if (al == null || al.isEmpty()) {
%>
        <h2 style="text-align:center;">Products not available</h2>
<%
    } else {
%>
        <table>
            <tr>
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Company</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Actions</th>
            </tr>
<%
        for (ProductBean bean : al) {
%>
            <tr>
                <td><%= bean.getPcode() %></td>
                <td><%= bean.getPname() %></td>
                <td><%= bean.getPcompany() %></td>
                <td><%= bean.getPrice() %></td>
                <td><%= bean.getPqty() %></td>
                <td>
                    <a href="edit?pcode=<%= bean.getPcode() %>" class="button">Edit</a>
                    <a href="delete?pcode=<%= bean.getPcode() %>" class="button">Delete</a>
                </td>
            </tr>
<%
        }
%>
        </table>
<%
    }
%>

<div class="logout">
    <a href="Logout.jsp" class="button">Logout</a>
</div>

</body>
</html>
