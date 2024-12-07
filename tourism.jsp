<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <style>
    body {
      background-color: #f5f5f5;
    }

    .navbar {
      background: #333;
      color: #fff;
    }

    .section-title {
      font-size: 24px;
      color: #333;
      margin-bottom: 10px;
    }

    .service-section {
      background-color: #fff;
      padding: 20px;
      margin: 20px 0;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    .service-section h2 {
      color: #333;
    }

    .service-section p {
      color: #777;
    }

    .service-image {
      width: 100%;
      max-height: 200px;
      object-fit: cover;
      border-radius: 5px;
    }
    
    .main-footer {
      background: #000;
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
  <nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="#">TOURIST PLACES!</a>
      <a class="navbar-brand" href="UserHome.jsp">Home</a>
            <a class="navbar-brand" href="services.jsp">See Other Services</a>
      
      <!-- Add your navigation links here -->
    </div>
  </nav>

  <!-- Service Section: Book a Hotel -->
  <section class="service-section">
  <div class="container">
    <h2 class="section-title">BANGALORE</h2>
    <div class="row">
      <div class="col-md-6">
        <p>
Bengaluru (also called Bangalore) is the capital of India's southern Karnataka state. The center of India's high-tech industry, the city is also known for its parks and nightlife.        </p>
        <!-- Add a button to redirect to another JSP file -->
        <a href="https://www.tripadvisor.in/Attractions-g297628-Activities-Bengaluru_Bangalore_District_Karnataka.html" class="btn btn-primary">Tourist Attractions</a>
        <a href="https://breakout.in/fun-things-to-do-in-bangalore/" class="btn btn-primary">Fun Activities</a>
        
      </div>
      <div class="col-md-6">
        <img src="https://static.toiimg.com/thumb/msid-54559212,width-748,height-499,resizemode=4,imgsize-307081/.jpg" alt="Hotel" class="service-image">
      </div>
    </div>
  </div>
</section>

  <!-- Service Section: Transportation -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">HYDERABAD</h2>
      <div class="row">
        <div class="col-md-6">
          <p>Hyderabad is the capital of southern India's Telangana state. A major center for the technology industry, it's home to many upscale restaurants and shops.</p>
<a href="https://www.tripadvisor.in/Attractions-g297586-Activities-Hyderabad_Hyderabad_District_Telangana.html" class="btn btn-primary">Tourist Attractions</a>
        <a href="https://www.tripadvisor.in/Attractions-g297586-Activities-c56-Hyderabad_Hyderabad_District_Telangana.html" class="btn btn-primary">Fun Activities</a>        </div>
        <div class="col-md-6">
<img src="https://i.ytimg.com/vi/UPRKkSU5_40/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLD5wCsISUqojnSKTYwGOT2h-hfaog" alt="Novotel" class="service-image">        </div>
      </div>
    </div>
  </section>

  <!-- Service Section: Education -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">GOA</h2>
      <div class="row">
        <div class="col-md-6">
          <p>
Goa is a state in western India with coastlines stretching along the Arabian Sea. Its long history as a Portuguese colony prior to 1961 is evident in its preserved 17th-century churches and the area’s tropical spice plantations.          </p>
<a href="https://www.tripadvisor.in/Attractions-g297604-Activities-Goa.html" class="btn btn-primary">Tourist Attractions</a>
        <a href="https://www.thrillophilia.com/things-to-do-in-goa" class="btn btn-primary">Fun Activities</a>        </div>
        <div class="col-md-6">
          <img src="https://goadarling.com/wp-content/uploads/2024/02/best-tour-and-travel-agency-in-india.jpg" alt="Education" class="service-image">
        </div>
      </div>
    </div>
  </section>

  <!-- Service Section: Medical -->
  <section class="service-section">
    <div class="container">
      <h2 class="section-title">CHECK TOURIST ATTRACTIONS OF DIFFERENT PLACES </h2>
      <div class="row">
        <div class="col-md-6">
          <p>
          </p>
          <a href="https://www.makemytrip.com/tripideas/tourist-attractions?srsltid=AfmBOopgVDodRvZU19p78XzSiZ849-4tqB0ESudqbkNG5MjrhMWipmIM" class="btn btn-primary">SEE THEM</a>
        </div>
        <div class="col-md-6">
          <img src="https://media.easemytrip.com/media/Blog/India/637157490059664717/637157490059664717sq4b3d.jpg" alt="Medical" class="service-image">
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="main-footer">
    <div class="container">
      <div class="footer-social-media">
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
      </div>
      <div class="footer-links">
        <a href="termsandservice">Terms of Service</a>
        <a href="#">Privacy Policy</a>
        <a href="#">Information Protection Policy</a>
        <a href="about">Company FAQ</a>
        <a href="contactus">Contact</a>
      </div>
      <div class="footer-copyright">
        <p>&copy; Copyright Since 2023 &reg; Smart City Project. All rights reserved.</p>
      </div>
    </div>
  </footer>
</body>
</html>
