<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>E-Farming Store</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('Images/bg3.avif'); /* Add your background image here */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed; /* Keeps the background fixed during scrolling */
            color: #333;
        }
        .navbar-custom {
            background-color: #f0ad4e; /* Customize navbar color */
        }
        .nav-link {
            color: #fff; /* Link color */
            transition: color 0.2s ease-in-out;
        }
        .nav-link:hover {
            color: #ffeb3b; /* Link hover color */
        }
        .search-box {
            flex-grow: 1;
            display: flex;
            justify-content: flex-end;
        }
        
.bannerHeader h1 {
    font-size: 4rem;
    margin-bottom: 0.5rem;
    font-weight: bold;
    text-shadow: none; /* Remove text shadow */
    color: #333; /* Set a visible color */
}

.bannerHeader p {
    font-size: 1.8rem;
    text-shadow: none; /* Remove text shadow */
    color: white; /* Set a visible color */
}
.bannerHeader h1, .bannerHeader p, .bannerTagline {
    color: white; /* Ensure text color is visible on background */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Optional: Add text shadow for better readability */
}


.bannerTagline {
    font-size: 1.2rem;
    line-height: 1.5;
    text-shadow: none; 
    color: white; 
    margin-top: 1rem;
}
        
      .landing {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    background: none; /* Ensure no additional background color */
    text-align: center;
}

.homepageContainer {
    color: white; /* Set text color to ensure visibility on background */
    background: none; /* Ensure no additional background color */
}
        .overlay {
            display: none;
        }

        .container {
    /* Any additional styling for container */
        }

        .homepageContainer {
           text-align: center;
           color: black; /* Ensure text color is visible on the background */
         }
        .footer {
            background-color: #8c6239;
            color: #fff;
            padding: 1rem 0;
            text-align: center;
        }
        .footer a {
            color: #ffeb3b;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
        #about {
            padding: 4rem 0;
            background-color: #f8f9fa;
            color: #333;
        }
        #about h2 {
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
            text-align: center;
        }
        #about p {
            font-size: 1.1rem;
            text-align: center;
            margin: 0 auto;
            max-width: 700px;
            line-height: 1.8;
        }
      
        .scroll-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #f0ad4e;
            color: #fff;
            border: none;
            border-radius: 50%;
            padding: 10px 15px;
            font-size: 20px;
            cursor: pointer;
            display: none;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="#">E-Farm</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#"><i class="fas fa-home"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about"><i class="fas fa-info-circle"></i> About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contact.jsp"><i class="fas fa-envelope"></i> Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cart.jsp"><i class="fas fa-shopping-cart"></i> Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fas fa-user-circle"></i> Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp"><i class="fas fa-envelope"></i> Admin</a>
                    </li>
                </ul>
                <div class="search-box">
                    <form action="FarmerServlet" class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="key">
                        <input type="hidden" name="action" value="search">
                        <button class="btn btn-outline-light" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </div>
    </nav>

   <div class="landing" id="head">

        <div class="homepageContainer">
            <div class="bannerHeader">
                <h1>E-Farm</h1>
                <p>Online E-Farming Store</p>
            </div>
            <p class="bannerTagline">
                E-Farming Store is an online platform designed to empower farmers by providing tools to manage their entire supply chain efficiently.<br>Whether you're a small-scale farmer or a large agricultural business, our platform offers the resources you need to track<br>your goods from purchase to production to final sale.
                Our mission is to simplify farming operations, reduce waste, and increase profitability for our users.<br> We are committed to providing reliable, user-friendly services that help farmers succeed in today's competitive market.
            </p>
            <a href="login.jsp" class="btn btn-outline-light px-4">Log in</a>
            <a href="signup.jsp" class="btn btn-outline-light px-4">Register</a>
        </div>
    </div>

   
   
<section id="about">
    <div class="container">
        <h2 class="text-center">About Us</h2>
        <p class="text-center">
            Welcome to E-Farming Store, your trusted partner in managing the entire supply chain from purchase to production to final sale. Our platform is designed to make your farming experience seamless, efficient, and transparent.
        </p>
        
        <!-- Row for member information -->
        <div class="row mt-5 justify-content-center">
            <div class="col-md-8"> <!-- Adjusted width to better center content -->
                <h3 class="text-center">Our Team</h3> <!-- Centered heading -->
                
                <div class="row g-4"> <!-- g-4 adds a gap between columns -->
                    <div class="col-md-6">
                        <div class="text-center">
                            <img src="Images/Teju.jpg" alt="John Doe" class="img-fluid rounded-circle" style="width: 150px; height: 150px;">
                        </div>
                        <div class="text-center mt-3">
                            <h4>Tejaswini Lingayat</h4>
                            <p>Student of RMCET</p>
                            <p>As a dedicated student currently pursuing a degree in Computer Engineering. This e-farming store project represents both my academic growth and my commitment to applying my technical skills in a practical setting. My journey through this project has been a valuable learning experience, allowing me to develop and implement various web technologies and best practices. </p>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <div class="text-center">
                            <img src="Images/Krantiph.jpg" alt="Jane Smith" class="img-fluid rounded-circle" style="width: 150px; height: 150px;">
                        </div>
                        <div class="text-center mt-3">
                            <h4>Kranti Palekar</h4>
                            <p>Student of RMCET</p>
                            <p>As a student currently pursuing a degree in Computer Engineering. This e-farming store project not only highlights my academic development but also showcases my dedication to applying my technical expertise in a hands-on manner. Throughout this project, I've gained invaluable experience in various web technologies, 
                            which has greatly contributed to my growth in the field.</p>

                        </div>
                    </div>
                </div>
            </div>     
        </div>
    </div>
</section>

    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 E-Farming Store. All rights reserved.</p>
            <p>
                <a href="privacy.jsp">Privacy Policy</a> | 
                <a href="terms.jsp">Terms of Service</a>
            </p>
        </div>
    </footer>

    <button class="scroll-to-top" onclick="scrollToTop()">
        <i class="fas fa-arrow-up"></i>
    </button>

    <script>
        // Show or hide the scroll-to-top button
        window.onscroll = function() {
            var button = document.querySelector('.scroll-to-top');
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                button.style.display = "block";
            } else {
                button.style.display = "none";
            }
        };

        // Smooth scroll to the top of the page
        function scrollToTop() {
            window.scrollTo({top: 0, behavior: 'smooth'});
        }
    </script>

</body>
</html>
