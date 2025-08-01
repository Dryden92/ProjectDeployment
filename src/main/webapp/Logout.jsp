<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout - Online Electronic Store</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #ffecd2, #fcb69f);
        color: #333;
        animation: fadeIn 0.8s ease-in-out;
    }

    .container {
        max-width: 600px;
        margin: 100px auto;
        text-align: center;
        background-color: rgba(255, 255, 255, 0.8);
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    h1 {
        color: #2c3e50;
    }

    .success {
        font-size: 1.2em;
        color: green;
        margin-bottom: 20px;
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
</style>
</head>
<body>

<div class="container">
    <h1>Logout Status</h1>
    <div class="success">
        <%
            session.invalidate();
            out.println("Logout successful.");
        %>
    </div>
    
    <jsp:include page="index.html"/>
</div>

</body>
</html>
