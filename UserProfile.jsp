<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="UserNavBar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
<style>
        body {
            background-image: url('./static/water.jpg'); /* Replace with the path to your image */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .container {
            background: rgba(255, 255, 255, 0.8); /* Add a white background with some transparency */
            padding: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h3>${user.name}'s Profile</h3>
            </div>
            <div class="card-body">
                <p class="profile-photo-label"><strong>Profile Photo</strong></p>
                <img align="right" src="displayprofilephoto?id=${user.id}" width="250" height="250">
                <p><strong>User ID:</strong> ${user.id}</p>
                <p><strong>Name:</strong> ${user.name}</p>
                <p><strong>Gender:</strong> ${user.gender}</p>
                <p><strong>Date of Birth:</strong> ${user.dateofbirth}</p>
                <p><strong>Email:</strong> ${user.email}</p>
                <p><strong>Contact:</strong> ${user.contact}</p>
            </div>
            <div class="card-footer">
                <a href="/updateprofile?id=${user.id}" class="btn btn-primary">Update Profile</a>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
