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
  color: black;
  font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
  transition: 500ms;
}
.active
{
color: black;
}
li a:hover {
  /*background-color: #989898;*/
  color: black;
  transition: 500mss;
  font-size:25px;
}
table{
	position:absolute;
	top:50%;
	left:50%;
	transform:translate(-50%,-50%);
	z-index:2;
	width:60%;
	text-align:center;
	border-collapse:collapse;
	border-spacing:0;
	overflow:hidden;
	border-radius:12px 12px;
	box-shadow:10px 12px 10px rgba(32,32,32,0.5);
	border-color:white;
	border:none;
	
}
th{
	padding:10px 20px;
	border-collapse:collapse;
	overflow:hidden;
	border-spacing:0;
	border-color:white;
	border:none;
}
tr:hover{
background-color: #f2f2f2;
}
td{
padding:10px 20px;
	border-collapse:collapse;
	overflow:hidden;
	border-spacing:0;
	border-color:white;
	border:none;
}
h3{
	font-size:30px;
}
a{
	text-decoration:none;
}
tr:nth-child(even) {background-color: #f2f2f2;}

</style>
</head>
<body>

<ul>
  <li><a href="hotelhome">Home</a></li>
  <li><a class="active" href="viewhotel">View Profile</a></li>
  <li><a href="hotelchangepwd">Change Password</a></li>
   <li><a href="hotellogin">Logout</a></li>
</ul>

<br><br><br><br>

<h3 align=center>Welcome&nbsp;<c:out value="${hoteluname}"></c:out></h3>

<br>

<table align=center>

<tr><th>ID:</th>&nbsp;<td>${htl.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${htl.hname}</td></tr>
<tr><th>Address:</th>&nbsp;<td>${htl.address}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${htl.location}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${htl.emailid}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${htl.contactno}</td></tr>



</table>



</body>
</html>

 
