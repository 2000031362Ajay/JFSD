<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<style>
body{
	height:100%;
	font-family: 'Manrope', sans-serif;
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
.img{
  position: fixed; 
  top: 0; 
  left: 0; 
  min-width: 100%;
  min-height: 100%;
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
  transition: 500mss;
  font-size:25px;
}
.welcome{
	position:absolute;
	top:55%;
	left:3%;
	font-size:35px;
	left-spacing:5px;
	text-transform:uppercase;
	color:white;
}
.para{
	position:absolute;
	width:65%;
	top:65%;
	left:3%;
	left-spacing:5px;
	font-size:15px;
	font-weight:bold;
	color:white;
}
</style>
</head>
<body>
<img class="img" src="images/traveller.png" alt="img1" style="width:100%">
<ul>
  <li><a class="active" href="employeehome">Home</a></li>
  <li><a href="viewemp">View Profile</a></li>
  <li><a href="bookhotel">Book a Hotel</a></li>
  <li><a href="bookings">Your Bookings</a></li>
  <li><a href="echangepwd">Change Password</a></li>
  <li><a href="employeelogin">Logout</a></li>
</ul>

<br><br><br><br>

<h3 align=center class="welcome">Welcome&nbsp;<c:out value="${euname}"></c:out></h3>
<p class="para">The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<br> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>
</body>
</html>

 
