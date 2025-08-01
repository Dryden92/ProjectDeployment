<%@ page import="pack1.AdminBean" %>
<%@ page import="pack1.ProductBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>
	<%
		AdminBean abean=(AdminBean)session.getAttribute("abean");
		ProductBean pbean=(ProductBean)request.getAttribute("pbean");
	
		String data=(String)request.getAttribute("msg");
		
		out.println("hello "+abean.getFname()+"<br>");
		out.println(data+"<br><br>");
	%>
	
	<a href="AddProduct.html">Add Product</a>
	<a href="view1">View Product</a>
	<a href="logout">Logout</a>
</h1>
</center>
</body>
</html>