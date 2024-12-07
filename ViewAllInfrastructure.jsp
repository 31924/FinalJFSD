<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="AdminNavBar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Infrastructure</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
   <style>
        body {
            background-image: url('./static/view.jpg'); /* Replace with the path to your image */
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
        <h2>All Infrastructure</h2>
        
        <!-- Table to display all infrastructure -->
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Feedback</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through the list of infrastructures and display each one -->
                <c:forEach var="infrastructure" items="${infrastructures}">
                    <tr>
                        <td>${infrastructure.id}</td>
                        <td>${infrastructure.name}</td>
                        <td>${infrastructure.type}</td>
                        <td>${infrastructure.description}</td>
                        <td>${infrastructure.status}</td>
                        <td>${infrastructure.feedback}</td>
                        <td>
                            <!-- Edit Infrastructure (if applicable) -->
                            <a href="/updateinfrastructure?id=${infrastructure.id}" class="btn btn-warning btn-sm">Edit</a>
                            <!-- Delete Infrastructure -->
                            <a href="/deleteinfrastructure?id=${infrastructure.id}" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Button to add new infrastructure -->
        <a href="/addinfrastructure" class="btn btn-primary mt-3">Add New Infrastructure</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
