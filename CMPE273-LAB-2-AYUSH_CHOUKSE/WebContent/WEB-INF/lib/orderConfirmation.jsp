<%@page import="java.sql.Date"%>
<%@page import="myorder.dto.UserOrderDetails" %>
<%@page import="myorder.dao.OrderIdGenerator" %>
<%@page import="myorder.dto.ProductDesc" %>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.ResultSet"%>
<%@page import= "java.sql.SQLException"%>
<%@page import= "java.sql.Statement"%>
<%@page import= "myorder.dao.ConnectionProvider"%>
<%@page import= "myorder.dto.LoginBean"%>


<jsp:useBean id="obj1" class="myorder.dao.OrderIdGenerator"/>
<jsp:useBean id="obj3" class="myorder.dto.LoginBean"/>
<jsp:useBean id="obj" class="myorder.dto.UserOrderDetails"/>  
  <jsp:useBean id="obj2" class="myorder.dto.ProductDesc"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/> 

<jsp:setProperty property="*" name="obj2"/>
<jsp:setProperty property="*" name="obj3"/> 
<%String id=session.getAttribute("id1").toString();
String email=session.getAttribute("emailid1").toString();
//out.println(id);%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Order Confirmed</h1>
OrderID: <%int str=obj1.orderidgen(); session.setAttribute("orderid", str); out.print(str); %><br>
First Name: <%out.print(obj.getFirstname()); %><br>
Last Name: <%out.print(obj.getLastname()); %><br>
Address 1: <%out.print(obj.getAddress1()); %><br>
Address 2: <%out.print(obj.getAddress2()); %><br>
City: <%out.print(obj.getCity()); %><br>
State: <%out.print(obj.getState()); %><br>
Zip Code: <%out.print(obj.getZipcode()); %><br>
 
 <%
 java.util.Date utilDate = new java.util.Date();
 java.sql.Date sqldate = new java.sql.Date(utilDate.getTime());
 System.out.println(sqldate);
 int orderid=obj1.orderidgen();
 Connection con= ConnectionProvider.getCon();
 String sql="insert into ordertable values('"+obj.getFirstname()+"','"+obj.getLastname()+"','"+obj.getAddress1()+"','"+obj.getAddress2()+"','"+obj.getCity()+"','"+obj.getState()+"','"+obj.getZipcode()+"','"+obj1.orderidgen()+"','"+email+"')";
 Statement st=con.createStatement();
 st.executeUpdate(sql);
//out.println(obj2.getId());
 String sql1="insert into orderedproduct(orderid,productid,orderdate,orderstatus) values('"+orderid+"','"+id+"','"+sqldate+"','Pending')";
 System.out.println(sql1);
 Statement st1=con.createStatement();
 st1.execute(sql1);
 
 %>
 <a href="http://localhost:3000/"><input type="button" value="Catalogue"> </a>
 <br>
  <a href="showorder.jsp"><input type="button" value="Show Orders"> </a>
</body>
</html>