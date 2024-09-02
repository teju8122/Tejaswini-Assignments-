<%@page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Error</title>
    <style>
        body {
            background-color: #0080FF;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        h1 {
            color: white;
            text-align: center;
            margin: 10px 0;
        }
        a {
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>
    <div>
        <h1>Something went wrong!</h1>
        <h1>Please try to login again.</h1>
        <h1><a href="login.jsp">Login</a></h1>
    </div>
</body>
</html>
