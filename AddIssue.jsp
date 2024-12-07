<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="UserNavBar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Issue</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: url('./static/bgadd.jpg');
            min-height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column;
        }
        .form-container {
            margin: auto;
            display: flex;
            background: #000;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
            max-width: 900px;
            width: 100%;
        }
        .form-image {
            flex: 1;
            background: url('./static/issues.jpeg') center center/cover no-repeat; /* Replace with your image path */
        }
        .form-content {
            flex: 1;
            padding: 40px;
            color: #fff;
        }
        .form-content h2 {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .form-content .form-control {
            background: transparent;
            border: 1px solid #fff;
            color: #fff;
        }
        .form-content .form-control:focus {
            box-shadow: none;
            border-color: #ffafc0;
        }
        .form-content .btn {
            background: #28a745;
            border: none;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-content .btn:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <!-- Form -->
    <div class="form-container">
        <div class="form-image"></div>
        <div class="form-content">
            <h2>Add New Issue</h2>
            <form method="post" action="/addis?id=${user.id}">

                <!-- Category -->
                <div class="form-group mb-3">
                    <label for="category" class="form-control-label">Name</label>
                    <input type="text" id="category" name="category" class="form-control" required>
                </div>

                <!-- Related To -->
                <div class="mb-3">
                    <label for="type" class="form-label">Related to</label>
                    <select class="form-control" id="relatedTo" name="relatedTo" required>
                        <option value="" disabled selected>Select a Service Type</option>
                        <option value="Healthcare">Healthcare</option>
                        <option value="Education">Education</option>
                        <option value="Transportation">Transportation</option>
                        <option value="Utilities">Utilities</option>
                        <option value="Emergency">Emergency</option>
                        <option value="Recreation">Recreation</option>
                    </select>
                </div>

                <!-- Description -->
                <div class="form-group mb-3">
                    <label for="description" class="form-control-label">Description</label>
                    <textarea id="description" name="description" class="form-control" rows="4" required></textarea>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn">Submit Issue</button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
