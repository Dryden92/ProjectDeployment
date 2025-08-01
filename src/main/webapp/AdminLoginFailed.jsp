<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Failed</title>
<style>
    body {
        background-color: #f0f2f5;
        font-family: Arial, sans-serif;
        text-align: center;
        padding-top: 100px;
    }

    .error-message {
        color: #d8000c;
        background-color: #ffbaba;
        border: 1px solid #d8000c;
        padding: 12px;
        width: 50%;
        margin: 10px auto 5px auto;
        border-radius: 8px;
        font-size: 18px;
    }
</style>
</head>
<body>
<%
    String data = (String) request.getAttribute("msg");
    if (data != null) {
        out.println("<div class='error-message'>" + data + "</div>");
    }
%>

<jsp:include page="index.html" />

</body>
</html>
