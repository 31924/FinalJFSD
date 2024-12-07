<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Public Service</title>
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
            background: url('./static/public.png') center center/cover no-repeat; /* Replace with your image path */
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
    <!-- Include Navbar -->
    <jsp:include page="AdminNavBar.jsp" />

    <!-- Form -->
    <div class="form-container">
        <div class="form-image"></div>
        <div class="form-content">
            <h2>Add Public Service</h2>
            <form action="/addpublicservice" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Service Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="type" class="form-label">Service Type</label>
                    <select class="form-control" id="type" name="type" required>
                        <option value="" disabled selected>Select a Service Type</option>
                        <option value="Healthcare">Healthcare</option>
                        <option value="Education">Education</option>
                        <option value="Transportation">Transportation</option>
                        <option value="Utilities">Utilities</option>
                        <option value="Emergency">Emergency</option>
                        <option value="Recreation">Recreation</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="location" class="form-label">Location</label>
                    <input type="text" class="form-control" id="location" name="location" required>
                </div>
                <div class="mb-3">
                    <label for="contact" class="form-label">Contact Information</label>
                    <input type="text" class="form-control" id="contact" name="contact" required>
                </div>
                <button type="submit" class="btn">Add Public Service</button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
