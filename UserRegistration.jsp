<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <title>User Registration</title>
    <style>
        .registration-box {
            border-radius: 30px;
            margin-top: 75px;
            height: auto;
            background: #0e0e0ee9;
            text-align: center;
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
        }
        .registration-key {
            height: 100px;
            font-size: 80px;
            line-height: 100px;
            background: -webkit-linear-gradient(#27EF9F, #0DB8DE);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .registration-title {
            margin-top: 15px;
            text-align: center;
            font-size: 30px;
            letter-spacing: 2px;
            font-weight: bold;
            color: #ECF0F5;
        }
        .registration-form {
            margin-top: 25px;
            text-align: left;
        }
        .form-control-label {
            color: #ECF0F5;
            font-weight: bold;
        }
        input[type=text], input[type=password], input[type=email], input[type=tel] {
            background-color: #1A2226;
            border: none;
            border-bottom: 2px solid #0DB8DE;
            font-weight: bold;
            color: #ECF0F5;
            margin-bottom: 20px;
            width: 100%;
        }
        .btn-outline-primary {
            border-color: #0DB8DE;
            color: #0DB8DE;
            font-weight: bold;
        }
        .btn-outline-primary:hover {
            background-color: #0DB8DE;
        }
        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
        .captcha-container {
            background-color: #1A2226;
            padding: 15px;
            border-radius: 5px;
            text-align: center;
            margin-bottom: 15px;
        }
        .captcha-text {
            font-size: 24px;
            font-weight: bold;
            color: #ffffff;
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
    <div class="row">
        <div class="col-lg-3 col-md-2"></div>
        <div class="col-lg-6 col-md-8 registration-box p-5">
            <div class="col-lg-12 registration-key">
                <i class="fa fa-user-plus" aria-hidden="true"></i>
            </div>
            <div class="col-lg-12 registration-title">
                USER REGISTRATION
            </div>

            <div class="col-lg-12 registration-form">
                <form id="registrationForm" method="post" action="/insertuser" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="username" class="form-control-label">Username</label>
                        <input type="text" id="uname" name="uname" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">GENDER</label>
                        <select name="ugender" class="form-control" required>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label">DATE OF BIRTH</label>
                        <input type="date" id="udob" name="udob" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="email" class="form-control-label">Email</label>
                        <input type="email" id="uemail" name="uemail" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="password" class="form-control-label">Password</label>
                        <input type="password" id="upwd" name="upwd" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="phone" class="form-control-label">Phone Number</label>
                        <input type="tel" id="ucontact" name="ucontact" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="address" class="form-control-label">Address</label>
                        <input type="text" id="ulocation" name="ulocation" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="profilePic" class="form-control-label">Profile Picture (Upload only JPG)</label>
                        <input type="file" id="profilephoto" name="profilephoto" class="form-control" accept="image/*" required>
                    </div>

                    <div class="col-lg-12 registrationbttm">
                        <div class="col-lg-6">
                            <button type="button" id="registerButton" class="btn btn-outline-primary btn-lg">Register</button>
                        </div>
                        <div class="col-lg-6 text-right">
                            <p>Already have an account? <a href="/userlogin" class="text-light">Login here</a></p>
                        </div>
                    </div>
                    <div id="errorMessage" class="error-message"></div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    document.getElementById("registerButton").addEventListener("click", function(event) {
        var form = document.getElementById("registrationForm");
        var errorMessage = "";
        var elements = form.elements;

        for (var i = 0; i < elements.length; i++) {
            if (elements[i].required && !elements[i].value.trim()) {
                errorMessage += "Please fill out all required fields.\n";
                break;
            }
        }

        if (errorMessage) {
            event.preventDefault();
            document.getElementById("errorMessage").textContent = errorMessage;
        } else {
            document.getElementById("errorMessage").textContent = "";
            form.submit();
        }
    });
</script>

</body>
</html>
