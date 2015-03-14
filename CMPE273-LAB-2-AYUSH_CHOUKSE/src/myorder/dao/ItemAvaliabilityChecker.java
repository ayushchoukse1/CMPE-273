package myorder.dao;

import java.util.Date;

public class ItemAvaliabilityChecker {
	boolean flag;
	public boolean checkAvailability(Date startdate,Date enddate){
		
		Date todaysdate=new Date();
		if(todaysdate.after(startdate)&&todaysdate.before(enddate))
		{
			return true;
			
		}else{
			
			return false;
		}
	}
	
	

}
