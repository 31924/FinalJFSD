<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <style>
    /* Style for the photo container */
   body {
  background-color: black;
  color: white; 
}
    .photo-container {
      width: 100%; /* Set the width to 100% to cover the window width */
      height: 100vh; /* Set the height to 100vh to cover the window height */
      overflow: hidden;
      color: black;
      position: relative;
    }

    .photo-container img {
      width: 100%; /* Set the image width to 100% to cover the container width */
      height: 100%; /* Set the image height to 100% to cover the container height */
      object-fit: cover; /* Maintain aspect ratio and cover the entire container */
      position: absolute;
      top: 0;
      left: 0;
      opacity: 0;
      transition: opacity 1s ease-in-out;
    }

    /* Show the active image */
    .photo-container img.active {
      opacity: 1;
    }

    /* Additional CSS for BENEFITS section */
    #projects {
      background-color: #f7c08a;
      padding: 50px 0;
    }

    .projects-header {
      text-align: center;
      margin-bottom: 40px;
    }

    .section-title {
      font-size: 36px;
      color: #333;
      margin-bottom: 10px;
    }

    .all-projects {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }

    .project-item {
      width: calc(33.333% - 20px);
      background-color: #fff;
      border: 1px solid #ddd;
      padding: 20px;
      margin-bottom: 20px;
      border-radius: 5px;
    }

    .project-info h1 {
      font-size: 24px;
      color: #333;
    }

    .project-info p {
      color: #777;
    }

    .project-img {
      text-align: center;
    }

    .project-img img {
      max-width: 100%;
      height: auto;
    }

    /* Footer Styles */
    .main-footer {
      background: #333;
      color: #fff;
      text-align: center;
      padding: 20px;
    }

    .footer-social-media {
      margin-bottom: 20px;
    }

    .footer-social-media a {
      font-size: 24px;
      color: #fff;
      margin: 0 10px;
      text-decoration: none;
    }

    .footer-social-media a:hover {
      color: #f7c08a;
    }

    .footer-links {
      margin-bottom: 10px;
    }

    .footer-links a {
      color: #fff;
      text-decoration: none;
      margin: 0 10px;
    }

    .footer-copyright {
      font-size: 14px;
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
    <div class="photo-container">
      <img src="https://res.klook.com/image/upload/Mobile/City/swox6wjsl5ndvkv5jvum.jpg" alt="Image 1" class="active">
      <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1200px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg" alt="Image 2">
      <img src="https://www.berlin.de/binaries/asset/image_assets/8215661/ratio_4_3/1686824224/800x600/" alt="Image 3">
    </div>
  </div>

  <section id="projects">
    <div class="projects container">
      <div class="projects-header">
        <h1 class="section-title">BENEFITS</h1>
      </div>
      <div class="all-projects">
        <div class="project-item">
          <div class="project-info">
            <h1>Efficient Resource Management</h1>
            <p>Smart city technologies optimize the use of resources such as energy, water, and transportation, reducing waste and improving overall efficiency.</p>
          </div>
          <div class="project-img">
            <img src="https://kantata.marketing/wp-content/uploads/2021/08/best-resource-management-system-features.jpg" alt="img" />
          </div>
        </div>
        <div class="project-item">
          <div class="project-info">
            <h1>Economic Growth</h1>
            <p>By fostering innovation, entrepreneurship, and attracting tech-related industries, smart cities create job opportunities and stimulate economic growth.</p>
          </div>
          <div class="project-img">
            <img src="https://res.cloudinary.com/people-matters/image/upload/fl_immutable_cache,w_624,h_351,w_624,h_351,c_scale,q_auto,f_auto/v1482523272/1482523270.jpg" alt="img" />
          </div>
        </div>
        <div class="project-item">
          <div class="project-info">
            <h1>City Integration</h1>
            <p>The smart city project aims to seamlessly integrate essential information and services into a centralized platform to assist newcomers in navigating the city.</p>
          </div>
          <div class="project-img">
            <img src="https://www.serviceautomation.org/wp-content/uploads/2017/08/Smart-Cities-Service-Automation.jpg" alt="img" />
          </div>
        </div>
        <div class="project-item">
          <div class="project-info">
            <h1>Empowering Visitors</h1>
            <p>The smart city app empowers visitors, students, and job seekers by providing them with essential tools for navigation, access to services, and local recommendations.</p>
          </div>
          <div class="project-img">
            <img src="https://iconarchive.com/download/i107320/google/noto-emoji-animals-nature/22215-penguin.ico" alt="img" />
          </div>
        </div>
      </div>
    </div>
  </section>

  <footer class="main-footer">
    <div class="footer-social-media">
      <a href="#" class="fab fa-facebook-f"></a>
      <a href="#" class="fab fa-twitter"></a>
      <a href="#" class="fab fa-linkedin-in"></a>
      <a href="#" class="fab fa-instagram"></a>
    </div>
    <div class="footer-links">
      <a href="#">Terms</a>
      <a href="#">Privacy</a>
      <a href="#">Contact</a>
    </div>
    <div class="footer-copyright">
      &copy; 2024 SmartScape. All rights reserved.
    </div>
  </footer>
  <script>
    let images = document.querySelectorAll('.photo-container img');
    let index = 0;

    setInterval(() => {
      images[index].classList.remove('active');
      index = (index + 1) % images.length;
      images[index].classList.add('active');
    }, 5000); // Change image every 5 seconds
  </script>
</body>
</html>
