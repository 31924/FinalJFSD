<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="AdminNavBar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Infrastructure</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2>Update Infrastructure</h2>
        
        <!-- Form to update infrastructure -->
        <form action="/updateinfrastructure?id=${infrastructure.id}" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Infrastructure Name</label>
                <input type="text" class="form-control" id="name" name="name" value="${infrastructure.name}" required>
            </div>

            <div class="mb-3">
                <label for="type" class="form-label">Infrastructure Type</label>
                <input type="text" class="form-control" id="type" name="type" value="${infrastructure.type}" required>
            </div>

            <div class="mb-3">
                <label for="status" class="form-label">Status</label>
                <input type="text" class="form-control" id="status" name="status" value="${infrastructure.status}" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea class="form-control" id="description" name="description" rows="3" required>${infrastructure.description}</textarea>
            </div>

            <div class="mb-3" >
                <label for="feedback" class="form-label">Feedback</label>
                <input type="number" class="form-control" id="feedback" name="feedback" value="${infrastructure.feedback}" readonly="readonly" required>
            </div>
            <div class="mb-3">
            <label for="noofratings" class="form-label">No of Ratings</label>
            <input type="number" class="form-control" id="noofratings" name="noofratings"  value="${infrastructure.noofratings}" readonly="readonly" required>
        </div>

            <button type="submit" class="btn btn-primary">Update Infrastructure</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
