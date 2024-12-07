<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="UserNavBar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Issues</title>
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
        <div class="card">
            <div class="card-header">
                <h3>My Issues</h3>
            </div>
            <div class="card-body">
                <!-- Add a new issue button -->
                <a href="/addissue" class="btn btn-primary mb-3">Add New Issue</a>
                <!-- Table displaying issues -->
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Category</th>
                            <th>Related To</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Loop through the issues and display them -->
                        <c:forEach var="issue" items="${issues}">
                            <tr>
                                <td>${issue.category}</td>
                                <td>${issue.relatedTo}</td>
                                <td>${issue.description}</td>
                                <td>${issue.status}</td>
                                <td>
    <!-- Check if issue status is not 'Completed' -->
    <c:if test="${issue.status != 'Completed'}">
        <form action="/deleteIssue" method="post" style="display:inline;">
            <input type="hidden" name="id" value="${issue.id}" />
            <button type="submit" class="btn btn-danger btn-sm" 
                onclick="return confirm('Are you sure you want to delete this issue?')">
                Delete
            </button>
        </form>
    </c:if>
</td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
