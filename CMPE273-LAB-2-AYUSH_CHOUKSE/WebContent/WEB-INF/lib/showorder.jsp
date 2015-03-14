<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.ResultSet"%>
<%@page import= "java.sql.SQLException"%>
<%@page import= "java.sql.Statement"%>
<%@page import= "java.sql.Date"%>
<%@page import= "myorder.dao.ConnectionProvider"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String fname="",lname="",add1="",add2="",state="",zip="",city="",ostatus="";
int orderid=0;
java.sql.Date odate= new java.sql.Date(new java.util.Date().getTime());
	String email=session.getAttribute("emailid1").toString();
	Connection con=ConnectionProvider.getCon();
	String sql1="select * from orderedproduct where orderid='"+session.getAttribute("orderid").toString()+"'";
	Statement st1=con.createStatement();
	ResultSet rs1= st1.executeQuery(sql1);
	while(rs1.next()){
		ostatus=rs1.getString(4);
		 odate=rs1.getDate(3);
		
	}
	String sql="select * from ordertable where emailid='"+email+"'";
	Statement st=con.createStatement();
	ResultSet rs= st.executeQuery(sql);
	while(rs.next()){
		fname=rs.getString(1);
		lname=rs.getString(2);
		add1=rs.getString(3);
		add2=rs.getString(4);
		city=rs.getString(5);
		state=rs.getString(6);
		zip=rs.getString(7);
		orderid=rs.getInt(8);
		
		%><h1>Order Details</h1><%
		%><br>OrderID: <% out.println(orderid);
		%><br>Order Date:<%out.println(odate);
		%><br>Order Status:<%out.println(ostatus);
		%><h4>Shipping Details</h4><br>First Name: <%out.println(fname);
		%><br>Last Name: <%out.println(lname);
		 %><br>Address 1: <%  out.println(add1);
		 %><br>Address 2: <%out.println(add2);
		 %><br>City:<%out.println(city);
		%><br>State:<% out.println(state);
		%><br>Zip Code:<% out.println(zip);
		
		%><br>Email Id:<%out.println(email);
		%><br>
		<form action="cancelorder.jsp" method="post"><input type="submit" value="Cancel Order" id="ad"> <br><br><br>
		<input type="hidden" value="<%out.println(orderid); %>" name="button">
		</form>
		<a href="http://localhost:3000/"><input type="button" value="Catalogue"> </a><br><br>
		<% out.println("-------------------X-----------------X----------------X-------------------------");
	}
	
	 %>


<%


%>Order Status:<%%>









 
 
 
 

</body>
</html>