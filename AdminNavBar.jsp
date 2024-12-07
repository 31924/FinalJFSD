<%@page import="com.klef.jfsd.model.Admin"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
Admin a = (Admin) session.getAttribute("admin");
if (a == null) {
    session.setAttribute("message", "Session expired. Please login again.");

    response.sendRedirect("adminlogin");
    return;
}

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmartScape Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">SmartScape</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarAdmin" aria-controls="navbarAdmin" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarAdmin">
            <ul class="navbar-nav ml-auto">
    <li class="nav-item"><a class="nav-link active" href="<c:url value='/adminhome' />"><i class="fas fa-home"></i> Home</a></li>
    <li class="nav-item"><a class="nav-link active" href="<c:url value='/viewallusers' />"><i class="fas fa-users"></i> View All Users</a></li>
    <li class="nav-item"><a class="nav-link active" href="<c:url value='/addpublicservice' />"><i class="fas fa-plus"></i> Add Public Service</a></li>
    <li class="nav-item"><a class="nav-link active" href="<c:url value='/viewallpublicservice' />"><i class="fas fa-cogs"></i> View All Public Services</a></li>
    <li class="nav-item"><a class="nav-link active" href="<c:url value='/addinfrastructure' />"><i class="fas fa-building"></i> Add Infrastructure</a></li>
    <li class="nav-item"><a class="nav-link active" href="<c:url value='/viewallinfrastructure' />"><i class="fas fa-cogs"></i> View All Infrastructure</a></li>
    <li class="nav-item"><a class="nav-link active" href="<c:url value='/viewallissues' />"><i class="fas fa-bug"></i> View All Issues</a></li>
     <li class="nav-item"><a class="nav-link active" href="<c:url value='/adminlogout' />"><i class="fas fa-bug"></i> Admin Logout</a></li>
</ul>

        </div>
    </div>
</nav>

</body>
</html>
