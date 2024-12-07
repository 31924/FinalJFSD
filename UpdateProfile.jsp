<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="UserNavBar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">

        <div class="card">
            <div class="card-header">
                <h3>User Registration</h3>
            </div>
            <div class="card-body">
                
                <form id="registrationForm" method="post" action="/update?id=${user.id}" enctype="multipart/form-data">
             
                    <!-- Username -->
                    <div class="form-group mb-3">
                        <label for="uname" class="form-control-label">Username</label>
                        <input type="text" id="uname" name="uname" class="form-control" value="${user.name}" required>
                    </div>
                    
                    <!-- Gender -->
                    <div class="form-group mb-3">
                        <label class="form-control-label">Gender</label>
                        <select name="ugender" class="form-control" required>
                            <option value="Male" ${user.gender == 'Male' ? 'selected' : ''}>Male</option>
                            <option value="Female" ${user.gender == 'Female' ? 'selected' : ''}>Female</option>
                            <option value="Other" ${user.gender == 'Other' ? 'selected' : ''}>Other</option>
                        </select>
                    </div>
                    
                    <!-- Date of Birth -->
                    <div class="form-group mb-3">
                        <label class="form-control-label">Date of Birth</label>
                        <input type="date" id="udob" name="udob" class="form-control" value="${user.dateofbirth}" required>
                    </div>
                    
                    <!-- Email -->
                    <div class="form-group mb-3">
                        <label for="uemail" class="form-control-label">Email</label>
                        <input type="email" id="uemail" name="uemail" class="form-control" value="${user.email}" required>
                    </div>
                    
                    <!-- Password -->
                    <div class="form-group mb-3">
                        <label for="upwd" class="form-control-label">Password</label>
                        <input type="password" id="upwd" name="upwd" class="form-control" value="${user.password}" required>
                    </div>

                    <!-- Phone Number -->
                    <div class="form-group mb-3">
                        <label for="ucontact" class="form-control-label">Phone Number</label>
                        <input type="tel" id="ucontact" name="ucontact" class="form-control" value="${user.contact}" required>
                    </div>

                    <!-- Address -->
                    <div class="form-group mb-3">
                        <label for="ulocation" class="form-control-label">Address</label>
                        <input type="text" id="ulocation" name="ulocation" class="form-control" value="${user.location}" required>
                    </div>

                    <!-- Profile Picture -->
                    <div class="form-group mb-3">
                        <label for="profilephoto" class="form-control-label">Profile Picture (Upload only JPG)</label>
                        <input type="file" id="profilephoto" name="profilephoto" class="form-control" accept="image/*">
                        <c:if test="${user.photo != null}">
                            <img src='displayprofilephoto?id=${user.id}' alt="Profile Picture" class="img-thumbnail mt-2" width="100" />
                        </c:if>
                    </div>

                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
                
            </div>
        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
