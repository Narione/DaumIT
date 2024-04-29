package notice;

import java.time.LocalDate;

public class NoticeVO {
	
	private int num;
	private String title;
	private String content;
	private int hits;
	private int member_num;
	private String id;
	private String name;
	private LocalDate createDate;
	
	
	public NoticeVO() {
		
	}

	//insert
	public NoticeVO(String title, String content, int member_num) {
		this.title = title;
		this.content = content;
		this.member_num = member_num;
	}

	//update
	public NoticeVO(int num, String title, String content) {
		this.num = num;
		this.title = title;
		this.content = content;
	}

	//select
	public NoticeVO(int num, String title, String content, int hits, int member_num, LocalDate createDate) {
		this.num = num;
		this.title = title;
		this.content = content;
		this.hits = hits;
		this.member_num = member_num;
		this.createDate = createDate;
	}

	//list
	public NoticeVO(int num, String title, int hits, int member_num, LocalDate createDate) {
		this.num = num;
		this.title = title;
		this.hits = hits;
		this.member_num = member_num;
		this.createDate = createDate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getcontent() {
		return content;
	}

	public void setcontent(String content) {
		this.content = content;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public int getMember_num() {
		return member_num;
	}

	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}

	public LocalDate getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
	

}
