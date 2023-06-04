<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ page import="java.sql.*"%>

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
  top: 93%;
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
  padding: 7px 5px;
  margin: 0px 0;
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
  height: 99%;
  position: absolute;
  top: 0%;
  left: 25%;
background: rgba(255, 255, 255, 0.23);
border-radius: 16px;
box-shadow: 0 4px 30px rgba(0, 0, 0, 0.5);
backdrop-filter: blur(5.6px);
-webkit-backdrop-filter: blur(5.6px);
border: 1px solid rgba(255, 255, 255, 0.16);
}
.h3{
	font-size:20px;
}
.checkpoints{
	align-items:center;
	position:absolute;
	left:25%;
}
</style>
</head>
<body>
<img class="img" src="images/Travel one.gif" alt="img1" style="width:100%">

<ul>
  <li><a class="active" href="employeehome">Home</a></li>
  <li><a href="viewemp">View Profile</a></li>
  <li><a href="echangepwd">Book a Hotel</a></li>
  <li><a href="echangepwd">Change Password</a></li>
  <li><a href="employeelogin">Logout</a></li>
</ul>

<div class="box">
<h3 align=center class="h3">Book a Hotel</h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>


<form:form action="addbookhotel" method="post" modelAttribute="hot">

<table align=center>

<label>Name</label><br><br>
<form:input path="name" required="required"></form:input><br><br>

<label>Age</label><br><br>
<form:input path="age" required="required"></form:input><br><br>

<label>Hotel name</label><br><br>
<form:select path="hotelname"><br><br>
   <form:option value="-1">Select Hotel</form:option><br><br>
   <%
   
   try
   {
	   String query="Select id,hname from hotel_table";
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp","root","root");
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery(query);
	   while(rs.next()){
			%>
			<option value="<%=rs.getInt("id")%>"><%=rs.getString("hname")%></option> 
			<% 
		}
   }
   catch(Exception ex){
	   
   }
   %>
</form:select><br><br>


<label>Check in</label><br><br>
<form:input type="date" path="checkin" required="required" placeholder="DD/MM/YYYY"/><br><br>

<label>Check out</label><br><br>
<form:input type="date" path="checkout" required="required" placeholder="DD/MM/YYYY"/><br><br>

<label>No. of People</label><br><br>
<form:input path="totalppl" required="required"></form:input><br><br>

<label>Contact Number</label><br><br>
<form:input path="contactno" required="required" minlength="10" maxlength="10"/><br><br>


<label>Payment Method</label><br><br>
<form:select path="payment" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="CreditCard">Credit Card</form:option>
<form:option value="DebitCard">Debit Card</form:option>
<form:option value="UPI">UPI</form:option>
<form:option value="Cash">Cash</form:option>
</form:select><br><br>

<input type="submit" value="Book" class="button">

</table>

</form:form>
</div>


</body>
</html>

 
