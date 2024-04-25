package member;

import java.time.LocalDate;

public class MemberVO {
	private int num;
	private String id;
	private String password;
	private String name;
	private String gender;
	private String birth;
	private String workerCode;
	private String powerCode;
	private LocalDate createDate;
	private String withdrawal;
	
	
	public MemberVO() {
	}


	public MemberVO(String id, String password) {
		this.id = id;
		this.password = password;
	}
	
	public MemberVO(String id, String name, String password, String email) {
		this.id = id;
		this.name = name;
		this.password = password;
	}

	public MemberVO(String id, String name, String email, LocalDate createDate) {
		this.id = id;
		this.name = name;
		this.createDate = createDate;
	}
	
	
	

	public MemberVO(String id, String password, String name, String gender, String birth) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
	}


	public MemberVO(int num, String id, String password, String name, String gender, String birth, String workerCode,
			String powerCode, LocalDate createDate, String withdrawal) {
		this.num = num;
		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.workerCode = workerCode;
		this.powerCode = powerCode;
		this.createDate = createDate;
		this.withdrawal = withdrawal;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getWorkerCode() {
		return workerCode;
	}


	public void setWorkerCode(String workerCode) {
		this.workerCode = workerCode;
	}


	public String getPowerCode() {
		return powerCode;
	}


	public void setPowerCode(String powerCode) {
		this.powerCode = powerCode;
	}


	public LocalDate getCreateDate() {
		return createDate;
	}


	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}


	public String getWithdrawal() {
		return withdrawal;
	}


	public void setWithdrawal(String withdrawal) {
		this.withdrawal = withdrawal;
	}


	@Override
	public String toString() {
		return "MemberVO [num=" + num + ", id=" + id + ", password=" + password + ", name=" + name + ", gender="
				+ gender + ", birth=" + birth + ", workerCode=" + workerCode + ", powerCode=" + powerCode
				+ ", createDate=" + createDate + ", withdrawal=" + withdrawal + "]";
	}
	
	
	
	
	
	
}

