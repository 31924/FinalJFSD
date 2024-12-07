<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="AdminNavBar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Infrastructure</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background:url('./static/bgadd.jpg');
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
            background: url('./static/infra.jpg') center center/cover no-repeat; /* Replace with your image path */
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
            <h2>Add Infrastructure</h2>
            <form action="/addinfrastructure" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Infrastructure Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="type" class="form-label">Infrastructure Type</label>
                    <select class="form-control" id="type" name="type" required>
                        <option value="" disabled selected>Select an Infrastructure Type</option>
                        <option value="Residential">Residential</option>
                        <option value="Commercial">Commercial</option>
                        <option value="Industrial">Industrial</option>
                        <option value="Public">Public</option>
                        <option value="Transportation">Transportation</option>
                        <option value="Utility">Utility</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="status" class="form-label">Status</label>
                    <input type="text" class="form-control" id="status" name="status" required>
                </div>
                <button type="submit" class="btn">Add Infrastructure</button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
