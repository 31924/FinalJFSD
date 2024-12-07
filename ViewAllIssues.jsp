<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="AdminNavBar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Issues</title>
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
        <h2>View All Issues</h2>

        <!-- Table displaying all issues -->
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Category</th>
                            <th>Related To</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th>Raised By User ID</th>
                            <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="issue" items="${issues}">
                    <tr>
                        <td>${issue.category}</td>
                                <td>${issue.relatedTo}</td>
                                <td>${issue.description}</td>
                                <td>${issue.status}</td>
                                <td>${issue.userId}</td>
                        <td>
                            <!-- If the issue is not completed, allow status update -->
                            <c:if test="${issue.status != 'Completed'}">
                                <form action="/updateissuestatus" method="post" style="display:inline;">
                                    <input type="hidden" name="id" value="${issue.id}" />
                                    <button type="submit" class="btn btn-success">Mark as Completed</button>
                                </form>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
