<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="AdminNavBar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    
    
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
        body {
            background-image: url('./images/city.jpg'); /* Replace with the path to your image */
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

    <div class="container mt-4">
        <h1 class="text-center">Admin Dashboard</h1>
        
        <div class="row">
            <div class="col-md-3">
                <div class="card text-white bg-primary mb-3">
                    <div class="card-header">Total Users</div>
                    <div class="card-body">
                        <h5 class="card-title">${ucount}</h5>
                        <p class="card-text">Total number of users in the system.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card text-white bg-success mb-3">
                    <div class="card-header">Total Public Services</div>
                    <div class="card-body">
                        <h5 class="card-title">${pscount}</h5>
                        <p class="card-text">Total number of public services available.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card text-white bg-warning mb-3">
                    <div class="card-header">Total Infrastructure</div>
                    <div class="card-body">
                        <h5 class="card-title">${icount}</h5>
                        <p class="card-text">Total number of infrastructures listed.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card text-white bg-danger mb-3">
                    <div class="card-header">Total Issues</div>
                    <div class="card-body">
                        <h5 class="card-title">${iscount}</h5>
                        <p class="card-text">Total number of issues reported.</p>
                    </div>
                </div>
            </div>
        </div>

    </div>

</body>
</html>
