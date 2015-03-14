package myorder.dao;
import myorder.dto.*;
import java.sql.*;  

public class RegisterDao {  
  
public static int register(RegisterBean bean){  
int status=0;  
try{  
Connection con=ConnectionProvider.getCon();  
String sql="insert into usertable values('"+bean.getFirstname()+"','"+bean.getLastname()+"','"+bean.getEmail()+"','"+bean.getPassword()+"')";
Statement st=con.createStatement();
st.executeQuery(sql);
              

}catch(Exception e){}  
      
return status;  
}  
  
}  