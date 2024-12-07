<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us - Smart City Management System</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 0;
      padding: 0;
      background-image: url('./images/smartcityyy.jpg');
      background-size: cover;
      background-position: center;
    }
    .container {
      max-width: 800px;
      margin: 100px auto;
      background-color: rgba(255, 255, 255, 0.8);
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
      text-align: center;
      color: #333;
    }
    p {
      text-align: center;
      margin-bottom: 20px;
      color: #666;
    }
    .contact-info {
      text-align: center;
      margin-bottom: 20px;
    }
    .contact-info p {
      margin: 5px 0;
    }
    .contact-info p strong {
      color: #333;
    }
    footer {
      margin-top: 20px;
      text-align: center;
      color: #888;
      font-size: 0.8em;
    }
    .home-link {
      text-align: center;
      margin-top: 20px;
      margin-bottom: 20px;
    }
    .home-link a {
      color: #4CAF50;
      text-decoration: none;
    }
    .home-link a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">SmartScape</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a class="nav-link active" href="/"><i class="fas fa-home"></i> Home</a></li>
          <li class="nav-item"><a class="nav-link active" href="/adminlogin"><i class="fas fa-user-shield"></i> Admin Login</a></li>
          <li class="nav-item"><a class="nav-link active" href="/userlogin"><i class="fas fa-user-shield"></i> User Login</a></li>
          <li class="nav-item"><a class="nav-link active" href="/userreg"><i class="fas fa-user-plus"></i> User Registration</a></li>
          <li class="nav-item"><a class="nav-link active" href="/about"><i class="fas fa-info-circle"></i> About</a></li>
          <li class="nav-item"><a class="nav-link active" href="/contactus"><i class="fas fa-phone"></i> Contact Us</a></li>
        </ul>
      </div>
    </div>
  </nav>

<div class="container">
  <header>
    <h1>Contact Us</h1>
  </header>
  <main>
    <p>If you have any questions or inquiries, please feel free to contact us using the information below:</p>
    <div class="contact-info">
      <p><strong>Email:</strong> admin@gmail.com</p>
      <p><strong>Phone:</strong> +91 8096259525</p>
      <p><strong>Address:</strong> 123 Main Street, Vijayawada, AP, 533101</p>
    </div>
  </main>
  <footer>
    <p>&copy; 2024 Smart City Management. All rights reserved.</p>
  </footer>

  <div class="home-link">
    <p><a href="<%= request.getContextPath() %>/Home.jsp">Go back to Home</a></p>
  </div>
</div>

</body>
</html>
