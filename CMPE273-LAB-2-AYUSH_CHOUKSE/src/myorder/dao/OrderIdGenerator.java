package myorder.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class OrderIdGenerator {

	public int orderidgen() throws SQLException{
		int str=0;
		  
		Connection con=ConnectionProvider.getCon(); 
		String sql="select MAX(orderid) from ordertable ";
		Statement st= con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()){
			str=rs.getInt(1);
			str=str+1;
				
		}
		return str;
}
	}

