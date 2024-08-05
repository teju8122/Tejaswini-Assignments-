function checkRegister()
{
    var u = document.getElementById("username");
    var p = document.getElementById("email");
    var r = document.getElementById("password");
    var t = document.getElementById("confirmpassword");
    if(u.value == ''  || p.value == '')
        {
            alert("Username & email is Required.");
        }
        
    if(r.value=='' || t.value==''){
        alert('password is required');
    }
    if(r.value !== t.value){
        alert("password is not match please correct it.");
    }
    else{
        alert("Registation is Succesfull.");
    }
        document.querySelector()
}
function myFunction() 
{
    alert('test');
    console.log('myFunction called')
    let password = document.getElementById("password");
    //let confirmpassword = document.getElementById("confirmpassword");
    let checkbox= document.getElementById("checkbox"); 
    if(checkbox.checked) 
        {
        password.type = 'text';
    }
    else{
        password.type='password';

    }
    // checkbox.onclick = function() 
    // {
    //     if(checkbox.checked) 
    //         {
    //         password.type = 'text';
    //     }
    //     else{
    //         password.type='password';

    //     }
    // }
}
function validated() {
    var usernameField = document.getElementById("username");
    var emailField = document.getElementById("email");
    var passwordField = document.getElementById("password");
    var confirmpasswordField = document.getElementById("confirmpassword");

    var username = usernameField.value;
    var password = passwordField.value;
    var email = emailField.value;
    var confirmpassword = confirmpasswordField.value; 

  if (username == "" || email=="" || password == ""|| confirmpassword=="") 
    {
    if (username == ""){
        usernameField.style.border = "3px solid red";
     }
     else{
        usernameField.style.border = "3px solid green"; // Reset border if not empty
     }
     if(email==""){
        emailField.style.border = "3px solid red";
     }
     else{
        emailField.style.border = "3px solid green";
     }

    if (password == ""){
        passwordField.style.border = "3px solid red";
    } 
    else {
        passwordField.style.border = "3px solid green"; // Reset border if not empty
    }
    if(confirmpassword == ""){
        confirmpasswordField.style.border = "3px solid red";
    }
    else{
        confirmpasswordField.style.border = "3px solid green";
    }
   } 
}