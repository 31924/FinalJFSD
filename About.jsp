<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>About Us</title>
    <style>
        body {
            background-color: white;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            display: flex;
            width: 800px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
        }
        .left-side {
            background: #4CAF50; /* Fallback background color */
            color: white;
            flex: 1;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
        }
        .left-side img {
            width: 100%; /* Makes the image responsive */
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .right-side {
            background: white;
            flex: 1;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        h2 {
            margin-bottom: 20px;
            text-align: center;
        }
        p {
            text-align: justify;
            font-size: 16px;
            line-height: 1.6;
            color: #333;
        }
        .code-snippet {
            background-color: #f4f4f4;
            border-left: 4px solid #4CAF50;
            padding: 10px;
            margin: 10px 0;
            font-family: monospace;
            white-space: pre-wrap;
            overflow-x: auto;
        }
        .home-link {
            text-align: center;
            margin-top: 20px;
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
    <div class="container">
        <div class="left-side">
            <h1>About SmartScape</h1>
            <img src="${pageContext.request.contextPath}/images/about-us.jpeg" alt="Smart City Image">
            <p>Connecting People with Technology</p>
        </div>
        <div class="right-side">
            <h2>About Us</h2>
            <p>
                Smart city management is a holistic approach to urban development that leverages technology, data, and innovation to enhance the quality of life for residents while improving the efficiency and sustainability of city operations.
            </p>
            <p>
                In a smart city, various digital technologies and interconnected systems are used to collect, analyze, and share data to make informed decisions that benefit both the city's administration and its citizens.
            </p>
            
           
               

            <div class="home-link">
                <p><a href="Home.jsp">Go back to Home</a></p>
            </div>
        </div>
    </div>
</body>
</html>
