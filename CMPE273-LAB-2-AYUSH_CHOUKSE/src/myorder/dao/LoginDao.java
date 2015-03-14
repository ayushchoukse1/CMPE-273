package myorder.dao;

import java.sql.*;  

import myorder.dto.LoginBean;
public class LoginDao {  
  
public static boolean validate(LoginBean bean){  
boolean status=false;  
System.out.println("1");
try{  
Connection con=ConnectionProvider.getCon(); 
PreparedStatement pst = con.prepareStatement("select * from usertable where email=? and password=?");  
pst.setString(1, bean.getEmail());  
pst.setString(2, bean.getPassword());  

ResultSet rs = pst.executeQuery();  
status = rs.next();  
}
catch(Exception e)
{	e.printStackTrace();
	System.out.println("31");
} 

System.out.println("3");
return status;  
  
}  
} 