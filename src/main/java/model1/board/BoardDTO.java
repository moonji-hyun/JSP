package model1.board;

import java.sql.Date;

public class BoardDTO {
	// board 객체 처리용
	
	// 필드
	private String num;
	private String title;
	private String content;
	private String id;
	private Date postdate;
	private String visitcount;
	private String name;  // member 테이블에 있는 작성자의 이름, DB에 없는것도 사용 가능
	
	// 생성자
	public BoardDTO() { // 기본 생성자
		
	}

	
	
	
	@Override  
	public String toString() {
		return "BoardDTO [num=" + num + ", title=" + title + ", content=" + content + ", id=" + id + ", postdate="
				+ postdate + ", visitcount=" + visitcount + ", name=" + name + "]";
	}




	// 게터/세터 메서드
	public String getNum() {
		return num;
	}
	
	public void setNum(String num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getPostdate() {
		return postdate;
	}

	public void setPostdate(Date postdate) {
		this.postdate = postdate;
	}

	public String getVisitcount() {
		return visitcount;
	}

	public void setVisitcount(String visitcount) {
		this.visitcount = visitcount;
	}

	public String getName() {
		return name;
	}

	public void setName(String naem) {
		this.name = naem;
	}
	
	
}
