package myorder.dao;
import com.mongodb.MongoClient;


import com.mongodb.MongoException;
import com.mongodb.WriteConcern;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.DBCursor;
import com.mongodb.ServerAddress;

import java.net.UnknownHostException;
import java.util.Arrays;

import myorder.dto.ProductDesc;

import org.bson.BSONObject;
import org.bson.types.ObjectId;

public class MongoConnectionProvider{
	
   public static DBObject connectmongo(String id, String coll) throws UnknownHostException{
	//ProductDesc product=null;   
	   ObjectId newid=new ObjectId(id);
	   BasicDBObject obj= new BasicDBObject();
	   obj.append("_id", newid);
	  // BasicDBObject query= new BasicDBObject();
	  // query.putAll((BSONObject)query);
		//  String newstring = "ObjectId("+id+")";
		  //System.out.println(newstring);
		  
        MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
         // Now connect to your databases
         DB db = mongoClient.getDB( "test" );
		 System.out.println("Connect to database successfully");
		
		DBCollection collection = db.getCollection(coll);
         System.out.println("Collection "+coll+" selected successfully");
         DBObject cursor = collection.findOne(obj);
         
        //ProductDesc products= new ProductDesc(cursor.get("id").toString(),cursor.get("make").toString(),cursor.get("model").toString(),cursor.get("description").toString(),cursor.get("manuDate").toString(),cursor.get("mileage").toString(),cursor.get("condition").toString()); 
        
         return cursor;
			
   }    
   
   public static void updateDate(String coll) throws UnknownHostException{
	   
	   MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
      
       DB db = mongoClient.getDB( "test" );
		 System.out.println("Connect to database successfully");
		
		DBCollection collection = db.getCollection(coll);
       System.out.println("Collection "+coll+" selected successfully");
       BasicDBObject newDocument = new BasicDBObject();
   	newDocument.append("$set", new BasicDBObject().append("start_date", "12122014"));
    
   	BasicDBObject searchQuery = new BasicDBObject().append("make", "audi");
    
   	collection.update(searchQuery, newDocument);
   	System.out.println("collection updated");
   }
   
   public static void main(String args[]) throws UnknownHostException{
	   
	   updateDate("audi");
   }
   
      
}