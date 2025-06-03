<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>EDEMY - Password Reset Sent</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Arial', sans-serif;
            }

            body {
                background-color: #ffffff;
                color: #333;
            }

            .navbar {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 20px 50px;
                background-color: white;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            }

            .logo {
                height: 50px;
                display: flex;
                align-items: center;
            }
            
            .logo img {
                height: 100%;
                width: auto;
                max-width: 150px;
                object-fit: contain;
            }

            .nav-links {
                display: flex;
                gap: 30px;
                margin-left: 20px;
                margin-right: auto;
            }

            .nav-links a {
                text-decoration: none;
                color: #333;
                font-weight: 500;
                font-size: 18px;
            }

            .right-section {
                display: flex;
                align-items: center;
                gap: 20px;
            }

            .search-bar input {
                padding: 8px 15px;
                border: 1px solid #ddd;
                border-radius: 20px;
                outline: none;
                width: 300px;
                height: 40px;
                font-size: 16px;
            }

            .signup-btn {
                padding: 8px 20px;
                background-color: #4a00e0;
                color: white;
                border: none;
                border-radius: 10px;
                font-weight: bold;
                cursor: pointer;
                width: 120px;
                height: 40px;
                font-size: 16px;
            }

            .container {
                max-width: 3000px;
                margin: 100px auto;
                padding: 40px;
                background-color: #ffffff;
               
                text-align: center;
            }

            .success-message {
               
                margin-bottom: 30px;
                line-height: 1.6;
            }

            .success-message p {
                margin-bottom: 10px;
                color: #333;
                font-size: 50px;
                
            }

            .email-address {
                font-weight: bold;
                color: #4a00e0;
            }

            .home-link {
                display: inline-block;
                margin-top: 20px;
                color: #4a00e0;
                text-decoration: none;
                font-size: 16px;
            }

            .home-link:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <nav class="navbar">
            <div class="logo"><img src="/ima/logo.png" alt="EDEMY Logo"></div>
            <div class="nav-links">
                <a href="#">Home</a>
                <a href="#">Courses</a>
                <a href="#">Blog</a>
                <a href="#">About</a>
            </div>
            <div class="right-section">
                <div class="search-bar">
                    <input type="text" placeholder="Search courses...">
                </div>
                <button class="signup-btn">Sign Up</button>
            </div>
        </nav>

        <div class="container">
            <div class="success-message">
                <p>The request has been sent to email account </p>
                <p class="email-address"><%= request.getParameter("email") != null ? request.getParameter("email") : "your email" %></p>
                <p>successfully, please check your email</p>
            </div>

            <a href="home.html" class="home-link">Want to back? Home</a>
        </div>
    </body>
</html>