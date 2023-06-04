<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<style>
body{

  font-family: 'Manrope', sans-serif;
  /*background: rgb(255,255,255);
background: linear-gradient(0deg, rgba(255,255,255,1) 0%, rgba(189,195,199,1) 0%, rgba(44,62,80,1) 100%);*/
}

.blink {
  animation: blink 1s steps(1, end) infinite;
}
.img{
  position: fixed; 
  top: 0; 
  left: 0; 
  
  /* Preserve aspet ratio */
  min-width: 100%;
  min-height: 100%;
}
@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  /*background-color: black;
  border: none;
  border-radius:5px;
  color: white;
  padding: 15px 32px;
  text-decoration: none;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  position: absolute;
  left: 40%;
  top: 70%;
 background: rgb(44,62,80);
background: linear-gradient(0deg, rgba(44,62,80,1) 0%, rgba(255,255,255,0) 100%, rgba(189,195,199,1) 100%);*/
padding: 1.3em 3em;
 position: absolute;
  left: 40%;
  top: 70%;
  font-size: 12px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: #fff;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  font-family: 'Manrope', sans-serif;
}
.button:hover{
  /*background-color: #228b22;
  transition: 1s;
  background: rgb(189,195,199);
background: linear-gradient(0deg, rgba(189,195,199,1) 0%, rgba(44,62,80,0.48252804539784666) 100%, rgba(255,255,255,0) 100%);*/
  background-color: #23c483;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
  font-family: 'Manrope', sans-serif;
  
}


input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-sizing: border-box;
  position: absolute;
  left:25%;
  background: rgb(255,255,255);
background: radial-gradient(circle, rgba(255,255,255,1) 0%, rgba(189,195,199,1) 0%, rgba(232,234,236,1) 0%);
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
  width: 50%;
  position: absolute;
  left: 25%;
}


ul 
{
   position:absolute;
  top:5%;
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
}

li 
{
  float: left;
   /* border-right: 1px solid white;*/
}

li a 
{
  display: block;
  color: white;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
  transition: 500ms;
}
.active
{
color: white;
}
li a:hover {
  /*background-color: #989898;*/
  color: white;
  transition: 500ms;
  font-size:25px;
  
  
}
.loginbtn{
  border-radius:5px;
  
}
.box{

  background: rgb(255,255,255);
background: linear-gradient(0deg, rgba(255,255,255,1) 0%, rgba(138,187,230,1) 52%, rgba(49,132,206,1) 100%);
  width: 50%;
  height: 72%;
  position: absolute;
  top: 20%;
  left: 25%;
background: rgba(255, 255, 255, 0.23);
border-radius: 16px;
box-shadow: 0 4px 30px rgba(0, 0, 0, 0.5);
backdrop-filter: blur(5.6px);
-webkit-backdrop-filter: blur(5.6px);
border: 1px solid rgba(255, 255, 255, 0.16);
}
.h3{
  font-size:25px;
}
canvas{
  pointer-events:none;
}
</style>
</head>
<body>
<img class="img" src="images/admin.png" alt="img1" style="width:100%">
    <ul>
      <li><a href="/">Home</a></li>
      <li><a class="active" href="adminlogin">Admin</a></li>
      <li><a href="employeelogin">Traveller</a></li>
      <li><a class="active" href="hotellogin">Hotel</a></li>
    </ul>
    <div class="box">
    <h3 align=center class="h3">Admin Login</h3>
    
    <span class="blink">
    <h3 align=center style="color: red"><c:out value="${msg}"/></h3>
    </span>
    
    
    <br>
    
    <form method="post" action="checkadminlogin">
    
    <label style="color:white">Username:</label><br><br>
    <input type="text" name="auname" required><br><br><br>
  
    
    
    <label style="color:white">Password:</label><br><br>
    <input type="password" name="apwd" required><br><br><br><br>
    <input type="submit" value="Login" class="button">
    </div>
<script>
            var code;
function createCaptcha() {
  //clear the contents of captcha div first 
  document.getElementById('captcha').innerHTML = "";
  var charsArray =
  "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@!#$%^&*";
  var lengthOtp = 6;
  var captcha = [];
  for (var i = 0; i < lengthOtp; i++) {
    //below code will not allow Repetition of Characters
    var index = Math.floor(Math.random() * charsArray.length + 1); //get the next character from the array
    if (captcha.indexOf(charsArray[index]) == -1)
      captcha.push(charsArray[index]);
    else i--;
  }
  var canv = document.createElement("canvas");
  canv.id = "captcha";
  canv.width = 100;
  canv.height = 50;
  var ctx = canv.getContext("2d");
  ctx.font = "25px Georgia";
  ctx.strokeText(captcha.join(""), 0, 30);
m,  code = captcha.join("");
  document.getElementById("captcha").appendChild(canv); // adds the canvas to the body element
}
function validateCaptcha() {
  event.preventDefault();
  debugger
  if (document.getElementById("cpatchaTextBox").value == code) {
    alert("Valid Captcha")
  }else{
    alert("Invalid Captcha. try Again");
    createCaptcha();
  }
}

        </script>
</body>
</html>