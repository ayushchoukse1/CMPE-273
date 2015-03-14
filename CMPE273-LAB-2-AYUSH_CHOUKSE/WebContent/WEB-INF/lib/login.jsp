<h3>Login Form</h3>  
<%  
String profile_msg=(String)request.getAttribute("profile_msg");  
if(profile_msg!=null){  
out.print(profile_msg);  
}  
String login_msg=(String)request.getAttribute("login_msg");  
if(login_msg!=null){  
out.print(login_msg);

}  
 %>  

 <br/>  
 <%String nodeid= request.getParameter("id");
 String nodecoll= request.getParameter("coll");


 session.setAttribute("id1", nodeid);
 session.setAttribute("coll1", nodecoll);

 %>
<form action="logincheck.jsp" method="post">  
Email:<input type="text" name="email"/><br/><br/>  
Password:<input type="password" name="password"/><br/><br/>  
<input type="submit" value="login"/>  
</form>
Not a User? <a href="reg.jsp">Click here! </a>