function checkLogin()
{
    var u = document.getElementById("username");
    var p = document.getElementById("password");
    if(u.value == '' || p.value == '')
        {
            alert("Username & Passord is Required.");
        }
        else{
           alert("Welcome to RMCET");
           errorMessage.style.display='block';
        }
 }
 

    function validated() {
        var usernameField = document.getElementById("username");
        var passwordField = document.getElementById("password");
        var username = usernameField.value;
        var password = passwordField.value;

      if (username == "" || password == "") 
        {
        if (username == "")
         {
            usernameField.style.border = "3px solid red";
         }
         else{
            usernameField.style.border = "3px solid green"; // Reset border if not empty
         }

        if (password == "")
        {
            passwordField.style.border = "3px solid red";
        } 
        else {
            passwordField.style.border = "3px solid green"; // Reset border if not empty
        }
       } 
       else{
         usernameField.style.border = ""; // Reset border if filled
         passwordField.style.border = ""; // Reset border if filled
     }
    
}


function myFunction() 
{
    let password = document.getElementById("password");
    let checkbox= document.getElementById("checkbox"); 
    checkbox.onclick = function() 
    {
        if(checkbox.checked) 
            {
            password.type = 'text';
        }
        else{
            password.type='password';
        }
    }
}

