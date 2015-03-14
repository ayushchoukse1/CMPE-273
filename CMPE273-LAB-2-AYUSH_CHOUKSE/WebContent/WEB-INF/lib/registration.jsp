<%@page import="myorder.dao.RegisterDao"%>  
<jsp:useBean id="obj" class="myorder.dto.RegisterBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status=RegisterDao.register(obj);  
if(status>0)  
out.print("You are successfully registered");  
 
%>
<jsp:include page="login.jsp"></jsp:include>   