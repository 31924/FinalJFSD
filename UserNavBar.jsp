<%@page import="com.klef.jfsd.model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
User u = (User) session.getAttribute("user");
if (u == null) {
    session.setAttribute("message", "Session expired. Please login again.");

    response.sendRedirect("userlogin");
    return;
}

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmartScape User</title>
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
      <li class="nav-item"><a class="nav-link active" href="<c:url value='/userhome' />"><i class="fas fa-home"></i> Home</a></li>
      <li class="nav-item">
    <a class="nav-link active" href="<c:url value='/userprofile?id=${user.id}' />">
        <i class="fas fa-home"></i> My Profile
    </a>
</li>

                 <li class="nav-item"><a class="nav-link active" href="<c:url value='services.jsp' />"><i class="fas fa-home"></i> Services</a></li>
                 <li class="nav-item"><a class="nav-link active" href="<c:url value='tourism.jsp' />"><i class="fas fa-home"></i> Tourism</a></li>
                   <li class="nav-item"><a class="nav-link active" href="<c:url value='air.jsp' />"><i class="fas fa-home"></i> Monitor Pollution</a></li>
     
      <li class="nav-item"><a class="nav-link active" href="<c:url value='/publicservices' />"><i class="fas fa-home"></i> Rate Public Services</a></li>
      
      <li class="nav-item"><a class="nav-link active" href="<c:url value='/infrastructures' />"><i class="fas fa-home"></i> Rate Infrastructures</a></li>
      <li class="nav-item"><a class="nav-link active" href="<c:url value='/addissue' />"><i class="fas fa-home"></i> Add Issue</a></li>
      <li class="nav-item"><a class="nav-link active" href="<c:url value='/myissues?id=${user.id}' />"><i class="fas fa-home"></i> My Issues</a></li>
                    <li class="nav-item"><a class="nav-link active" href="<c:url value='traffic.jsp' />"><i class="fas fa-home"></i> Maps</a></li>
      
      <li class="nav-item"><a class="nav-link active" href="<c:url value='/userlogout' />"><i class="fas fa-bug"></i> User Logout</a></li>
</ul>
        </div>
    </div>
</nav>

</body>
</html>
