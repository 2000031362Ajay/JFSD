<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<% 
String id=request.getParameter("contactno");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sdp","root","root");
	if(!con.isClosed())
	{
		PreparedStatement ps=con.prepareStatement("SELECT * FROM book where contactno='"+id+"'");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			out.println("Name="+rs.getString("name")+" "+"Age="+rs.getString("age")+" "+"Hotel Name="+rs.getString("hotelname")+" "+"Checkin Date="+rs.getString("checkin")+" "+"CheckOut Date"+rs.getString("checkout")+" "+"Total People="+rs.getString("totalppl")+" "+"Contact number="+rs.getString("contactno")+" "+"Payment Method="+rs.getString("payment")+"\n");
		}
		else
		{
			out.println("RECORD Doesnt Exists");
		}
	}
	
} catch(Exception e)
{
	
}

%>