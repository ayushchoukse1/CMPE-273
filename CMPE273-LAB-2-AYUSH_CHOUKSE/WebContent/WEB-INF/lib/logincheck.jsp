
<%@page import="myorder.dao.LoginDao"%>


<%@page import="myorder.dto.LoginBean"%>  
<%@page import="java.util.*"%>  
<jsp:useBean id="obj" class="myorder.dto.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%String email1=request.getParameter("email");
session.setAttribute("emailid1",email1 );
System.out.println(obj.getPassword());
boolean status=LoginDao.validate(obj);  
if(status){
	out.print("Welcome User");
	response.sendRedirect("display.jsp");
} 
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="login.jsp"></jsp:include> 
 
<% 
}
%>

