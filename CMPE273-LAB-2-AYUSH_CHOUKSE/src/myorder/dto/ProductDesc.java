package myorder.dto;

public class ProductDesc {
	private int orderid;
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	private String id;
	//private String type;
	private String mileage;
	//private String diagonal_length;
	private String make;
	private String description;
	private String year_of_manuf;
	private String condition;
	private String model;
	/*private String width;
	private String height;
	private String price;
	private String brand;
	private String warranty_period;
	private String img;
	private String quantity;
	private String sdate;
	private String edate;
	private String frequncy;
	private String lan_ports;
	private String megapixel;
	private String opticalzoom="";
	private String battery="";
	private String product_id="";*/
	public ProductDesc(String id, String make,String model,
			String description, String year_of_manuf, String condition,String mileage) {
		super();
		this.id = id;
		this.mileage = mileage;
		this.make = make;
		this.description = description;
		this.year_of_manuf = year_of_manuf;
		this.condition = condition;
		this.model=model;
	}
public ProductDesc(){}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	public String getMileage() {
		return mileage;
	}
	public void setMileage(String mileage) {
		this.mileage = mileage;
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getYear_of_manuf() {
		return year_of_manuf;
	}
	public void setYear_of_manuf(String year_of_manuf) {
		this.year_of_manuf = year_of_manuf;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
}
