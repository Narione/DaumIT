package comment;

import java.time.LocalDate;

public class CommentVO {
	
	private int num;
	private int boardNum;
	private String id;
	private String name;
	private String content;
	private LocalDate createDate;
	private int count;
	private String createTime;
	
	public CommentVO() {
	
	}

	public CommentVO(int boardNum, String id, String content) {
		this.boardNum = boardNum;
		this.id = id;
		this.content = content;
	}
	
	public CommentVO(int num, String content) {
		this.num = num;
		this.content = content;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public LocalDate getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	
	
	

}
