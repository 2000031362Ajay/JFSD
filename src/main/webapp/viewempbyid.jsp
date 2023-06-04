<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<style>
ul 
{
    position:absolute;
  top:5%;
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;}

li 
{
  float: left;
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
color:black;
}
li a:hover {
  color: black;
  transition: 500ms;
  font-size:25px;
}
</style>
</head>
<body>

<ul>
  <li><a class="active" href="adminhome">Home</a></li>
  <li><a href="viewallemps">View All Travellers</a></li>
  <li><a href="viewallhtl">View All Hotels</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br>

<h3 align=center>Welcome&nbsp;<c:out value="${auname}"></c:out></h3>

<br>

<table align=center>

<tr><th>ID:</th>&nbsp;<td>${emp.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${emp.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${emp.gender}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${emp.dateofbirth}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${emp.location}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${emp.emailid}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${emp.contactno}</td></tr>



</table>



</body>
</html>

 
