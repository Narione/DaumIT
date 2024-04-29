package attendence;

public class CompanyVO {
	
	private int num;
	private String name;
	private String representative;
	private String business;
	private String address;
	
	public CompanyVO() {
		super();
	}
	public CompanyVO(int num, String name, String representative, String business, String address) {
		super();
		this.num = num;
		this.name = name;
		this.representative = representative;
		this.business = business;
		this.address = address;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRepresentative() {
		return representative;
	}
	public void setRepresentative(String representative) {
		this.representative = representative;
	}
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	

}
