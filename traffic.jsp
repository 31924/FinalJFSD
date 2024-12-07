<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart City Traffic Management</title>
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap&v=weekly" async></script>
    <style>
        /* Body styling: Set background image */
        body {
            margin: 0;
            height: 100vh; /* Full viewport height */
            background-image: url('./images/road.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            color: white;
        }

        /* Container for text */
        .content {
            position: absolute;
            top: 20%; /* Position text towards the top */
            left: 50%;
            transform: translateX(-50%); /* Center the text horizontally */
            text-align: center;
            color: white;
            z-index: 1;
        }

        /* Brighter text with a light background for readability */
        h1 {
            font-size: 3.5rem; /* Increase font size for heading */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Adds a shadow effect to make text stand out */
        }

        p {
            font-size: 1.5rem; /* Increase font size for paragraph */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Adds a shadow effect to make text stand out */
        }

        a {
            font-size: 1.25rem; /* Increase font size for the link */
            color: #4CAF50;
            text-decoration: none;
            margin-top: 20px;
            display: inline-block;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Adds a shadow effect to make text stand out */
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="content">
        <h1>Welcome to the Smart City Traffic Management</h1>
        <p>Click the link below to access the live Google Maps with real-time traffic information:</p>
        <a href="https://www.google.co.uk/maps/@51.1451891,0.683808,10z/data=!5m1!1e1?entry=ttu&g_ep=EgoyMDI0MTIwNC4wIKXMDSoASAFQAw%3D%3D" target="_blank">
            Access Google Maps Traffic Layer
        </a>
        </br>
 <a href="UserHome.jsp" target="_blank">
           Go Back
        </a>
        <br><br>

        <!-- The Google Map will be displayed here -->
        <div id="map"></div>
    </div>
</body>
</html>
