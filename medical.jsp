<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Domains</title>
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #e9ecef, #f4f4f9);
            color: #333;
            line-height: 1.6;
        }

        header {
            text-align: center;
            padding: 40px 20px;
            background-color: #0056b3;
            color: #fff;
            border-bottom: 5px solid #004085;
        }

        header h1 {
            margin: 0;
            font-size: 2.8em;
            font-weight: 600;
        }

        section {
            display: flex;
            margin: 30px auto;
            padding: 30px;
            max-width: 1200px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            justify-content: space-between;
        }

        .domain-list {
            width: 60%;
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .domain-list li {
            margin: 20px 0;
            padding: 15px 25px;
            background-color: #f8f9fa;
            border-radius: 8px;
            border-left: 5px solid #007bff;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .domain-list li:hover {
            transform: translateX(10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }

        .domain-list li a {
            text-decoration: none;
            color: #007bff;
            font-size: 1.3em;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .domain-list li a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        .image-container {
            width: 35%;
            text-align: center;
        }

        .image-container img {
            max-width: 100%;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #f8f9fa;
            color: #333;
            margin-top: 40px;
            font-size: 0.9em;
            border-top: 1px solid #ddd;
        }

        @media (max-width: 768px) {
            header h1 {
                font-size: 2.2em;
            }

            section {
                flex-direction: column;
                align-items: center;
                padding: 20px;
            }

            .domain-list {
                width: 100%;
                margin-bottom: 20px;
            }

            .image-container {
                width: 100%;
            }

            .domain-list li {
                font-size: 1.1em;
                padding: 12px 20px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Explore Hospital Domains</h1>
<li><a href="UserHome.jsp" style="color:white;">BACK</a></li>
        
    </header>

    <section>
        <!-- Domain List Section -->
        <div class="domain-list">
            <h2>Select a Domain for Specialized Hospitals</h2>
            <ul>
                <li><a href="https://ortil.com/blog/best-ivf-treatment-hospitals-in-india">IVF Hospitals</a></li>
                <li><a href="https://karetrip.com/blogs/top-10-leading-hospitals-for-dermatology-in-india">Dermatology Hospitals</a></li>
                <li><a href="https://www.medicarespots.com/cardiac-hospitals-in-india/">Cardiology Hospitals</a></li>
                <li><a href="https://peacemedicaltourism.com/blog/top-10-best-orthopedic-hospital-in-india">Orthopedics Hospitals</a></li>
                <li><a href="https://wellnessdestinationindia.com/success-story/top-10-neurology-hospitals-in-india-revolutionizing-brain-health">Neurology Hospitals</a></li>
                <li><a href="https://www.indicure.com/best-pediatric-hospital-india/">Pediatrics Hospitals</a></li>
            </ul>
        </div>

        <!-- Side Image Section -->
        <div class="image-container">
            <img src="./images/hosp.jpg" alt="Hospital Image">
        </div>
    </section>

    <footer>
        <p>&copy; 2024 Hospital Domain Listings. All rights reserved.</p>
    </footer>
</body>
</html>
