package attendence;

import java.time.LocalDate;

public class AttendenceVO {
	private String attDate;
	private String memberNum;
	private String memberName;
	private String memberId;
	private String att;
	private String memo;
	private int attIndex;
	
	
	public AttendenceVO() {
	}
	
	
	public AttendenceVO(String attDate) {
		this.attDate = attDate;
	}


	public AttendenceVO(String memberNum, String memberName, String memberId) {
		this.memberNum = memberNum;
		this.memberName = memberName;
		this.memberId = memberId;
	}


	public AttendenceVO(String attDate, String memberNum, String memberName, String memberId, String att, String memo) {
		this.attDate = attDate;
		this.memberNum = memberNum;
		this.memberName = memberName;
		this.memberId = memberId;
		this.att = att;
		this.memo = memo;
	}


	public AttendenceVO(String attDate, String memberNum, String memberName, String memberId, String att, String memo,
			int attIndex) {
		this.attDate = attDate;
		this.memberNum = memberNum;
		this.memberName = memberName;
		this.memberId = memberId;
		this.att = att;
		this.memo = memo;
		this.attIndex = attIndex;
	}


	public String getAttDate() {
		return attDate;
	}


	public void setAttDate(String attDate) {
		this.attDate = attDate;
	}


	public String getMemberNum() {
		return memberNum;
	}


	public void setMemberNum(String memberNum) {
		this.memberNum = memberNum;
	}


	public String getMemberName() {
		return memberName;
	}


	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getAtt() {
		return att;
	}


	public void setAtt(String att) {
		this.att = att;
	}


	public String getMemo() {
		return memo;
	}


	public void setMemo(String memo) {
		this.memo = memo;
	}


	public int getAttIndex() {
		return attIndex;
	}


	public void setAttIndex(int attIndex) {
		this.attIndex = attIndex;
	}


	@Override
	public String toString() {
		return "AttendenceVO [attDate=" + attDate + ", memberNum=" + memberNum + ", memberName=" + memberName
				+ ", memberId=" + memberId + ", att=" + att + ", memo=" + memo + ", attIndex=" + attIndex
				+ ", getAttDate()=" + getAttDate() + ", getMemberNum()=" + getMemberNum() + ", getMemberName()="
				+ getMemberName() + ", getMemberId()=" + getMemberId() + ", getAtt()=" + getAtt() + ", getMemo()="
				+ getMemo() + ", getAttIndex()=" + getAttIndex() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}


	
	
	
}
