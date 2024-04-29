package attendence;

import javax.management.loading.PrivateClassLoader;

public class AttNumVO {
	private String startDate;
	private String lastDate;
	private String days;
	private int totalNum;
	private int attNum;
	private int absNum ;
	public AttNumVO() {
	}
	public AttNumVO(String startDate, String lastDate) {
		this.startDate = startDate;
		this.lastDate = lastDate;
	}
	
	
	
	
	public AttNumVO(int totalNum, int attNum, int absNum) {
		this.totalNum = totalNum;
		this.attNum = attNum;
		this.absNum = absNum;
	}
	public AttNumVO(String startDate, String lastDate, int totalNum, int attNum, int absNum) {
		this.startDate = startDate;
		this.lastDate = lastDate;
		this.totalNum = totalNum;
		this.attNum = attNum;
		this.absNum = absNum;
	}
	
	
	
	@Override
	public String toString() {
		return "AttNumVO [startDate=" + startDate + ", lastDate=" + lastDate + ", days=" + days + ", totalNum="
				+ totalNum + ", attNum=" + attNum + ", absNum=" + absNum + ", getStartDate()=" + getStartDate()
				+ ", getLastDate()=" + getLastDate() + ", getTotalNum()=" + getTotalNum() + ", getAttNum()="
				+ getAttNum() + ", getAbsNum()=" + getAbsNum() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getLastDate() {
		return lastDate;
	}
	public void setLastDate(String lastDate) {
		this.lastDate = lastDate;
	}
	public int getTotalNum() {
		return totalNum;
	}
	public void setTotalNum(int totalNum) {
		this.totalNum = totalNum;
	}
	public int getAttNum() {
		return attNum;
	}
	public void setAttNum(int attNum) {
		this.attNum = attNum;
	}
	public int getAbsNum() {
		return totalNum-attNum;
	}
	public void setAbsNum(int absNum) {
		this.absNum = absNum;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	
	
	
	
	
	

}
