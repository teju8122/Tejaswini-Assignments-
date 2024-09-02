<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<title>ForgotPassword</title>
<style>
      .main {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image: url('Images/bg3.jpg');
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
    max-width: 800px;
    border: 2px solid white;
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
           display: block;
           margin-bottom: 20px;
           font-weight: bold;
           font-size: 20px;
           color:white;
}
       
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 5px solid #ccc;
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
                        <input type="email" name="email" id="email" placeholder="  Enter Email" required>
                    </div>
                      <div class="form-group">
                        <label for="mobileNumber"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input type="number" name="number" id="number" placeholder="  Enter Number" required>
                    </div>
                    <div class="form-group">
                        <label for="password"><i class="zmdi zmdi-lock"></i></label>
                        <input type="newPassword" name="newPassword" id="password" placeholder="  Enter your new Password to set" required>
                    </div>
                       
                    <div class="form-group form-button">
                        <input type="submit" name="submit" id="submit" value="Login">
                    </div>
                   
                </form>
             
 
   <% 
   String msg=request.getParameter("msg");
   if("done".equals(msg)){
   %>
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%}
%>
   </div>
</div>
</body>
</html>