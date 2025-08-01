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
		
			out.println("<u>hello"+abean.getFname()+"please edit</u><br><br>");
		%>
		<form action="update" method="post">
			<label>Product Price</label>		<input type="text" name="pprice" value=<%=pbean.getPrice()%>><br><br> 
			Product Quantity    <input type="text" name="pqty" value=<%=pbean.getPqty() %>><br><br>
			
			<input type="hidden" name="pcode" value=<%=pbean.getPcode() %>>
			<input type="submit" value="update">
		</form>
		</h1>
	</center>
</body>
</html>