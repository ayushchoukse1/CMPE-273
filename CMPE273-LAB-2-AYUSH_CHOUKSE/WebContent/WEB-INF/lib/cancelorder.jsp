<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.ResultSet"%>
<%@page import= "java.sql.SQLException"%>
<%@page import= "java.sql.Statement"%>
<%@page import= "myorder.dao.ConnectionProvider"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String str=request.getParameter("button");
out.println(str);
 Connection con=ConnectionProvider.getCon();
 Statement st=con.createStatement();
 String sql="delete  from ordertable where orderid='"+str+"'";
 st.executeUpdate(sql);
 response.sendRedirect("showorder.jsp");
 
%>
</body>
</html>