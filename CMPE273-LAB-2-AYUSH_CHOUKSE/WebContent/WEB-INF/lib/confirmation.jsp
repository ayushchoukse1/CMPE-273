<%@ page import="myorder.dto.ProductDesc" %>
<jsp:useBean id="obj" class="myorder.dto.ProductDesc"></jsp:useBean>
<%@page import="myorder.dao.OrderIdGenerator" %>
<jsp:useBean id="obj1" class="myorder.dao.OrderIdGenerator"/>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="orderConfirmation.jsp" method="post">

<h1><b>Product Information</b></h1>  <br/><br/>
<% String str=request.getParameter("brand");
String str1=request.getParameter("price");
%> Brand :<% out.println(str);%>
 Price :<% out.println(str1);%>
<h1><b>Payment information</b></h1>  <br/><br/>
    
    Credit Card No:<input type="text" name="creditCardName" /><br>
    Expiration Date:
     Month: <select name="month" ><br>
 		<option value="jan">January</option>
 		<option value="feb">February</option>
  		<option value="mar">March</option>
  		<option value="apr">April</option>
  		<option value="may">May</option>
  		<option value="jun">June</option>
  		<option value="jul">July</option>
  		<option value="aug">august</option>
  		<option value="sep">September</option>
  		<option value="oct">October</option>
  		<option value="nov">November</option>
  		<option value="dec">December</option></select>
Day:    <select name="day" ><br>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
</select>
year:    <select name="year" ><br>
	<option value="2017">2017</option>
		 <option value="2018">2018</option>
		  <option value="2019">2019</option>
</select>
 Security Code:<input type="password" name="cvvcode"/><br>

    
    <h1><b>Shipping information</b></h1>  <br/><br/>
    First Name:<input type="text" name="firstname" /><br><br>
    Last Name:<input type="text" name="lastname" /><br><br>
    Address Line 1:<input type="text" name="address1" /><br><br>
    Address Line 2:<input type="text" name="address2" /><br><br>
    City: <input type="text" name="city" /><br><br>
    State: <input type="text" name="state" /><br><br>
    Zip Code:<input type="text" name="zipcode" /><br>
  
    <br/><br/>
    <input type="submit" value="Submit"/>
    

</form>
</body>
</html>