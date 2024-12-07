<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.klef.jfsd.model.User"%>
<%@ include file="UserNavBar.jsp" %>
<%
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background: url('./static/sunset.jpg') no-repeat center center/cover;
            color: white;
            min-height: 100vh;
            margin: 0;
        }
        .container {
            background: rgba(0, 0, 0, 0.7); /* Semi-transparent background for better readability */
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            max-width: 800px;
            margin: auto;
            margin-top: 50px;
        }
        h1, h3 {
            color: #fff;
        }
        hr {
            border-top: 2px solid #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">User Dashboard</h1>
        <hr/>
        <h3 align="center">Welcome <%= u.getName() %></h3>
    </div>
</body>
</html>
