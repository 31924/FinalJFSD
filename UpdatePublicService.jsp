<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="AdminNavBar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Public Service</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-4">
    <h2 class="text-center">Update Public Service</h2>
    
    <form action="<c:url value='/updatepublicservice' />" method="POST">
        <input type="hidden" name="id" value="${publicService.id}" />
        
        <div class="mb-3">
            <label for="name" class="form-label">Service Name</label>
            <input type="text" class="form-control" id="name" name="name" value="${publicService.name}" required>
        </div>

        <div class="mb-3">
    <label for="type" class="form-label">Service Type</label>
    <select class="form-control" id="type" name="type" required>
        <option value="" disabled selected>Select a Service Type</option>
        <option value="Healthcare" <c:if test="${publicService.type == 'Healthcare'}">selected</c:if>>Healthcare</option>
        <option value="Education" <c:if test="${publicService.type == 'Education'}">selected</c:if>>Education</option>
        <option value="Transportation" <c:if test="${publicService.type == 'Transportation'}">selected</c:if>>Transportation</option>
        <option value="Utilities" <c:if test="${publicService.type == 'Utilities'}">selected</c:if>>Utilities</option>
        <option value="Emergency" <c:if test="${publicService.type == 'Emergency'}">selected</c:if>>Emergency</option>
        <option value="Recreation" <c:if test="${publicService.type == 'Recreation'}">selected</c:if>>Recreation</option>
    </select>
</div>


        <div class="mb-3">
            <label for="description" class="form-label">Service Description</label>
            <textarea class="form-control" id="description" name="description" rows="4" required>${publicService.description}</textarea>
        </div>

        <div class="mb-3">
            <label for="location" class="form-label">Location</label>
            <input type="text" class="form-control" id="location" name="location" value="${publicService.location}" required>
        </div>

        <div class="mb-3">
            <label for="contact" class="form-label">Contact</label>
            <input type="text" class="form-control" id="contact" name="contact" value="${publicService.contact}" required>
        </div>

        <div class="mb-3">
            <label for="feedback" class="form-label">Feedback Rating</label>
            <input type="number" class="form-control" id="feedback" name="feedback" min="1" max="5" value="${publicService.feedback}" readonly="readonly" required>
        </div>
        
        <div class="mb-3">
            <label for="noofratings" class="form-label">No of Ratings</label>
            <input type="number" class="form-control" id="noofratings" name="noofratings"  value="${publicService.noofratings}" readonly="readonly" required>
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-primary">Update Service</button>
        </div>
    </form>
</div>

<!-- Bootstrap JS (Optional, if you need it) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
