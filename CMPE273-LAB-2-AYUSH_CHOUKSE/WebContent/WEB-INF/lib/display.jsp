
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.DBObject"%>
<%@ page import="myorder.dto.ProductDesc" %>
<%@page import="myorder.dao.MongoConnectionProvider"%> 
		<%@ page 		import = "myorder.dao.ItemAvaliabilityChecker" %>

<%@page import="java.sql.Date"%>
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import= "java.util.Arrays"%>
<%@page import= "java.util.Locale"%>
  
<%@page import="java.util.*"%>  
 <jsp:useBean id="obj" class="myorder.dao.ItemAvaliabilityChecker"></jsp:useBean>
<jsp:useBean id="obj1" scope="session" class="myorder.dto.ProductDesc"></jsp:useBean>

<%
String id= session.getAttribute("id1").toString();
String coll= session.getAttribute("coll1").toString();
%>
<html><body>
<h1>PRODUCT DETAILS</h1>
<table>
<%
if(coll.equals("cars")){
DBObject cursor=MongoConnectionProvider.connectmongo(id,coll);
//ProductDesc p=(ProductDesc)product;
//out.print(p.getMake());
//out.print(p.getDescription());
//out.print(p.getYear_of_manuf());
String make,model,description,manuDate,mileage,condition;
make=(String)cursor.get("make");
model=(String)cursor.get("model");
description=(String)cursor.get("description");
manuDate=(String)cursor.get("manuDate");
condition=(String)cursor.get("condition");
mileage=(String)cursor.get("mileage");

//new ProductDesc(id,make,model,description,manuDate,condition,mileage);
session.setAttribute("id2", cursor.get("_id"));
session.setAttribute("make", make);
session.setAttribute("model", model);
%>

<tr>
<jsp:setProperty property="*" name="obj1"/>
	<td></td>
	<td><% %></td>
</tr><%
%><tr>
	<td>MAKE:</td>
	<td><% out.println(make); %></td>
</tr><%
%><tr>
<td>MODEL:</td>
<td><% out.println(model); %></td>
</tr>
<%
%><tr>
<td>Description:</td>
<td><%out.println(description); %></td>
</tr>
<%
%><tr>
<td>Manufacturing Date:</td>
<td><%out.println(manuDate); %></td>
</tr>
<%
%><tr>
<td>Mileage:</td>
<td><%out.println(mileage); %></td>
</tr>
<%
%><tr>
<td>Condition:</td>
<td><%out.println(condition); %></td>
</tr>
<%
java.util.Date start_date_conv = new SimpleDateFormat("MMddyyyy", Locale.ENGLISH).parse((String)cursor.get("start_date"));
java.util.Date end_date_conv = new SimpleDateFormat("MMddyyyy", Locale.ENGLISH).parse((String)cursor.get("end_date"));
//out.print(start_date_conv+"     "+end_date_conv);
%><tr>
<td>Availability:</td>
<td><%boolean available= obj.checkAvailability(start_date_conv, end_date_conv);
if(available)
{
out.println("item availiable");	
}
else{
	out.println("out of stock");		
	
}%></td>
</tr>
<%

%></table>
<br><a href="confirmation.jsp"><input type="button" value="Confirm"> </a><br><br>
<a href="showorder.jsp"><input type="button" value="Show Orders"> </a>
<%
session.setAttribute("session","TRUE");

}
else if(coll.equals("tv")){
	DBObject cursor=MongoConnectionProvider.connectmongo(id,coll);
	String brand,diagonal,description,width,price;
	brand=(String)cursor.get("brand");
	diagonal=(String)cursor.get("diagonal");
	description=(String)cursor.get("description");
	width=(String)cursor.get("width");
	price=(String)cursor.get("price");

	%><table><tr>
	<jsp:setProperty property="*" name="obj1"/>
		<td>BRAND</td>
		<td><% out.println(brand); %></td>
	</tr><%
	%><tr>
		<td>DIAGONAL LENGTH:</td>
		<td><%  out.println(diagonal); %></td>
	</tr><%
	%><tr>
	<td>DESCRIPTION:</td>
	<td><%  out.println(description); %></td>
	</tr>
	<%
	%><tr>
	<td>WIDTH:</td>
	<td><%out.println(width); %></td>
	</tr>
	<%
	%><tr>
	<td>PRICE:</td>
	<td><%out.println(price); %></td>
	</tr>
	<%
	java.util.Date start_date_conv = new SimpleDateFormat("MMddyyyy", Locale.ENGLISH).parse((String)cursor.get("start_date"));
	java.util.Date end_date_conv = new SimpleDateFormat("MMddyyyy", Locale.ENGLISH).parse((String)cursor.get("end_date"));
	//out.print(start_date_conv+"     "+end_date_conv);
	%><tr>
	<td>Availability:</td>
	<td>
	<%boolean available= obj.checkAvailability(start_date_conv, end_date_conv);
if(available)
{
out.println("item availiable");	
}
else{
	out.println("out of stock");		
	
}%></td>
	</tr></table>
<br><form action="confirmation.jsp" method="post"><input type="submit" value="Confirm"> <br><br><br>
		<input type="hidden" value="<%out.println(brand); %>" name="brand">
		<input type="hidden" value="<%out.println(price); %>" name="price">
		
		</form><br><br>
<a href="showorder.jsp"><input type="button" value="Show Orders"> </a>
<%
}
	else if(coll.equals("router"))
	{
	DBObject cursor=MongoConnectionProvider.connectmongo(id,coll);
	String brand,range,description,isDual,wifiNW,price;
	brand=(String)cursor.get("brand");
	range=(String)cursor.get("range");
	description=(String)cursor.get("description");
	isDual=(String)cursor.get("isDual");
	price=(String)cursor.get("price");
	wifiNW=(String)cursor.get("wifiNW");

	%><table><tr>
	<jsp:setProperty property="*" name="obj1"/>
		<td>BRAND :</td>
		<td><% out.println(brand); %></td>
	</tr><tr>
		<td>RANGE:</td>
		<td><%  out.println(range); %></td>
	</tr><tr>
	<td>DESCRIPTION:</td>
	<td><%  out.println(description); %></td>
	</tr>
	<tr>
	<td>Dual Bandwidth:</td>
	<td><%out.println(isDual); %></td>
	</tr>
	<tr>
	<td>PRICE:</td>
	<td><%out.println(price); %></td>
	</tr>
	<tr>
	<td>PRICE:</td>
	<td><%out.println(price); %></td>
	</tr>
	<tr>
	<td>WIFI NETWORK:</td>
	<td><%out.println(wifiNW); %></td>
	</tr>
	<%
	java.util.Date start_date_conv = new SimpleDateFormat("MMddyyyy", Locale.ENGLISH).parse((String)cursor.get("start_date"));
	java.util.Date end_date_conv = new SimpleDateFormat("MMddyyyy", Locale.ENGLISH).parse((String)cursor.get("end_date"));
	//out.print(start_date_conv+"     "+end_date_conv);
	%><tr>
	<td>Availability:</td>
	<td>
	<%boolean available= obj.checkAvailability(start_date_conv, end_date_conv);
if(available)
{
out.println("item availiable");	
}
else{
	out.println("out of stock");		
	
}%></td>
	</tr></table>
<br><a href="confirmation.jsp"><input type="button" value="Confirm"> </a><br><br>
<a href="showorder.jsp"><input type="button" value="Show Orders"> </a>
<% } %>
</body></html>