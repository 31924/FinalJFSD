<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="UserNavBar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Public Services</title>
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
        <h2>All Public Services</h2>
        
        <!-- Table to display all public services -->
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Description</th>
                    <th>Location</th>
                    <th>Contact</th>
                    <th>Rating</th>
                    <th>No of Ratings</th>
                    <th>Rate</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterating through the public service list -->
                <c:forEach var="publicService" items="${publicServiceList}">
                    <tr>
                        <td>${publicService.name}</td>
                        <td>${publicService.type}</td>
                        <td>${publicService.description}</td>
                        <td>${publicService.location}</td>
                        <td>${publicService.contact}</td>
                        <td>${publicService.feedback}</td>
                        <td>${publicService.noofratings}</td>
                        <td>
                            <!-- Rating dropdown -->
                            <form action="/ratePublicService" method="post">
                                <input type="hidden" name="id" value="${publicService.id}" />
                                <input type="hidden" name="feedback" value="${publicService.feedback}" />
                                <input type="hidden" name="noofratings" value="${publicService.noofratings}" />
                                <select name="rating" class="form-select" style="width: 120px;">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                                <button type="submit" class="btn btn-primary btn-sm mt-2">Rate</button>
                            </form>
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
