<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
    <title>Login</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .main {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 50vh;
            background-image: url('Images/young-wheat-green-field_1268-29146.avif');
             background-repeat: no-repeat;
             background-position: center;
             background-size: cover;
           
        }
        .sign-in {
            display: flex;
            background: white;
            padding: 40px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .signin-image {
            margin-right: 40px;
        }
        .signin-image img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .signin-form {
    max-width: 600px;
    border: 10px solid white;
    background-color: transparent;
    padding: 50px; 
    border-radius: 20px;
}
        
        .form-title {
            margin-bottom: 20px;
            font-size: 50px;
            font-weight: bold;
            color: white;
            text-align: center;
        }
        .form-group {
            margin-bottom: 50px;
        }
     
       .form-group label {
           display: white;
           margin-bottom: 20px;
           font-weight: bold;
           font-size: 20px;
           color:white;
}
       
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 5px solid white;
            border-radius: 20px;
            font-size: 16px;
            color: white; 
            background-color: transparent;
}
      
        
        .form-group input[type="submit"] {
            width: 100%;
            background-color: #0066cc;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .form-group input[type="submit"]:hover {
            background-color: #004999;
        }
        h6 {
            margin-top: 10px;
            font-size: 14px;
            text-align: center;
        }
        h6 a {
            color: white;
            text-decoration: none;
        }
        h6 a:hover {
            text-decoration: underline;
        }
        #message-container {
            text-align: center;
            color: red;
            font-weight: bold;
            margin-top: 20px;
        }
        
    </style>
</head>
<body>
    <div class="main">
   
          
            <div class="signin-form">
                <h1 class="form-title">Sign in</h1>
                <form action="loginAction.jsp" method="post" id="login-form" class="register-form">
                    <div class="form-group">
                        <label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input type="email" name="email" id="email" placeholder="  Enter Email"  required>
                    </div>
                    <div class="form-group">
                        <label for="password"><i class="zmdi zmdi-lock"></i></label>
                        <input type="password" name="password" id="password" placeholder="  Enter Password" required>
                    </div>
                    <h6><a href="signup.jsp">Sign Up</a></h6>
                    <h6><a href="forgotPassword.jsp">Forgot Password?</a></h6>
                     <div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
                    <div class="form-group form-button">
                        <input type="submit" name="submit" id="submit" value="Login">
                    </div>
                   <a href="signup.jsp" class="signup-image-link" style="color: white;">Create an account</a>
                   
                   
                </form>
                <div id="message-container">
                    <% 
                    String msg = request.getParameter("msg");
                    if (msg != null) {
                        if ("notexist".equals(msg)) {
                            out.println("<span style='color:red;'>Incorrect Email or Password</span>");
                        } else if ("invalid".equals(msg)) {
                            out.println("<span style='color:red;'>Something Went Wrong! Try Again!</span>");
                        } else if ("success".equals(msg)) {
                            out.println("<span style='color:green;'>Successfully Logged In!</span>");
                        }
                    }
                    %>
                </div>
            </div>
     
    </div>
</body>
</html>
