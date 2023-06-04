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
  /*background-color: 	#505050;*/
}

li 
{
    float: left;
    /*border-right: 1px solid white;*/
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
  font-size:30px;
}
.img{
  position: fixed; 
  top: 0; 
  left: 0; 
	
  /* Preserve aspet ratio */
  min-width: 100%;
  min-height: 100%;
}
.heading{
	color:white;
	position:absolute;
	top:60%;
	left:5%;
	font-size:50px;
	color:white;
}
.para{
	color:white;
	text-align: left;
	position:absolute;
	top:75%;
	margin-left:5%;
	font-size:20px;
	color:white;
}


</style>
</head>
<body>
<img class="img" src="images/Travel one.gif" alt="img1" style="width:100%">
<h1 class="heading">Travel And Explore</h1>
<p class="para">Travelling plays an important part in making us feel relaxed and rejuvenated. It also brings positive changes in our life<br> and keeps us alive and active. Travelling gives us practical experience of things we have studied in the books and surfed<br> on the internet. So a person who does not travel at all does not find any meaning in the name of India Gate or Ganga River.<br> However, if he has travelled to these places, he can truly relate everything he has studied and will always remember each<br> and every detail of that place.</p>


<ul>

  <li><a class="active" href="/">Home</a></li>
  <li><a id="adminactive" href="adminlogin">Admin</a></li>
  <li><a href="employeelogin">Traveller</a></li>
  <li><a class="active" href="hotellogin">Hotel</a></li>
</ul>

<br><br><br>

<div class="alignRow">
<!-- <div class="imageColumn">
<img src="images/spring-boot-logo.png" alt="img1" style="width:100%">
</div>
 <div class="imageColumn">
<img src="images/restws.png" alt="img2" style="width:100%">
</div>
<div class="imageColumn">
<img src="images/jpahibernate.png" alt="img3" style="width:100%">
</div>
<div class="imageColumn">
<img src="images/MySQL-Logo.png" alt="img4" style="width:100%">
</div>-->
</div>

</body>
</html>

 
