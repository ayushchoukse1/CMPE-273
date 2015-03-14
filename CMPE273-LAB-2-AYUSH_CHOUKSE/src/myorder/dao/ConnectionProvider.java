package myorder.dao;
import java.sql.*;


import static myorder.dao.Provider.*;  

public class ConnectionProvider {  
private static Connection con=null;  
static{  
try{  
	System.out.println(DRIVER+CONNECTION_URL+USERNAME+PASSWORD);
Class.forName(DRIVER);  
con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
}catch(Exception e){ System.out.println("connection problem");}  
}  
  
public static Connection getCon(){  
    return con;  
}  
  
}  