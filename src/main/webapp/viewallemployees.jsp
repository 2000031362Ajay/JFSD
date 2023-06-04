<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

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

</style>
</head>
<body>
<div>
<ul>
  <li><a href="adminhome">Home</a></li>
  <li><a class="active"  href="viewallemps">View All Travellers</a></li>
  <li><a class="active"  href="viewallhtl">View All Hotels</a></li>
  <li><a href="adminlogin">Logout</a></li>
</ul>

<br><br><br><br>

<h3 align=center>View All Travellers</h3>

<table align=center border=1>

<tr>

<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Date of Birth</th>
<th>Location</th>
<th>Email ID</th>
<th>Username</th>
<th>Contact No</th>

</tr>

<c:forEach items="${emplist}" var="emp">

<tr>

<td> <c:out value="${emp.id}"></c:out>   </td>
<td> <c:out value="${emp.name}"></c:out>   </td>
<td> <c:out value="${emp.gender}"></c:out>   </td>
<td> <c:out value="${emp.dateofbirth}"></c:out>   </td>
<td> <c:out value="${emp.location}"></c:out>   </td>
<td> <c:out value="${emp.emailid}"></c:out>   </td>
<td> <c:out value="${emp.username}"></c:out>   </td>
<td> <c:out value="${emp.contactno}"></c:out>   </td>
<td> 

<a href='<c:url value='deleteemp?id=${emp.id}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewempbyid?id=${emp.id}'></c:url>'>View</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>

</table>

</body>
</html>

 
