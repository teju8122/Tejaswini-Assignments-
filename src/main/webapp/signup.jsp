<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
    <title>Sign Up</title>
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .main {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
             background-image: url('Images/young-wheat-green-field_1268-29146.avif');
             background-repeat: no-repeat;
             background-position: center;
             background-size: cover;
        }
        .signup {
            display: flex;
            background: white;
            padding: 40px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .signup-image {
            margin-right: 40px;
        }
        .signup-image img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .signup-form {
            max-width: 600px;
            border: 10px solid white;
    background-color: transparent;
    padding: 50px; 
    border-radius: 50px;
            
        }
        .form-title {
            margin-bottom: 10px;
            font-size: 50px;
            font-weight: bold;
            color: white;
            text-align: center;
        }
        .form-group {
            margin-bottom: 50px;
              color: white;
        }
        .form-group label {
            display: block;
            margin-bottom: 20px;
            font-weight: bold;
            font-size:10px;
            color: white;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 5px solid white;
            border-radius: 20px;
            font-size: 16px;
            color:white;
            background-color: transparent;
        }
        .form-group input[type="checkbox"] {
            width: auto;
        }
        .label-agree-term {
            font-size: 14px;
            color: #666;
        }
        .form-group form-button {
            text-align: center;
            color:white;
        }
        .form-submit {
            padding: 10px 20px;
            background-color: #0066cc;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .form-submit:hover {
            background-color: #004999;
        }
        .signup-image-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #0066cc;
        }
        .signup-image-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="main">
       
            
            <div class="signup-form">
                <h2 class="form-title">Sign Up</h2>
                <form action="signupAction.jsp" method="post" class="register-form" id="register-form">
                    <div class="form-group">
                        <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                       <b> <input type="text" name="name" id="name" placeholder="Enter Name" required></b>
                    </div>

                    <div class="form-group">
                        <label for="email"><i class="zmdi zmdi-email material-icons-name"></i></label>
                        <input type="email" name="email" id="email" placeholder="Your Email" required>
                    </div>

                    <div class="form-group">
                        <label for="mobileNumber"><i class="zmdi zmdi-phone material-icons-name"></i></label>
                        <input type="number" name="mobileNumber" id="mobileNumber" placeholder="Your Mobile Number" required>
                    </div>

                    <div class="form-group">
                        <label for="password"><i class="zmdi zmdi-lock material-icons-name"></i></label>
                        <input type="password" name="password" id="password" placeholder="Enter Password" required>
                    </div>

                    <div class="form-group">
                        <input type="checkbox" name="agree-term" id="agree-term" class="agree-term">
                        <label for="agree-term" class="label-agree-term">
                            <span><span></span></span>
                            I agree to all statements in <a href="#" class="term-service">Terms of service</a>
                        </label>
                    </div>

                    <div class="form-group form-button">
                        <input type="submit" name="signup" id="signup" class="form-submit" value="Register">
                    </div>
                </form>
                <h4><a href="login.jsp" class="signup-image-link">I am already a member
           </a></h4>
            
           
                
            </div>

    </div>

    <script>
        <% 
        String msg = request.getParameter("msg");
        if ("valid".equals(msg)) {
        %>
            alert("Successfully Registered!");
        <% 
        } else if ("invalid".equals(msg)) {
        %>
            alert("Something Went Wrong! Try Again!");
        <% 
        } 
        %>
    </script>
</body>
</html>
