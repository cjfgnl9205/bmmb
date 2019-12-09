package spring.model.ereview;

// 패키지 위치: spring.model.member 로 해야함?
public class EreviewDTO {	
    private int rnum;                
    private String content;             
    private String rname;               
    private String rdate;            	
    private int Ebook_ID;            
    private String memberID;
    
	public EreviewDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EreviewDTO(int rnum, String content, String rname, String rdate, int ebook_ID, String memberID) {
		super();
		this.rnum = rnum;
		this.content = content;
		this.rname = rname;
		this.rdate = rdate;
		Ebook_ID = ebook_ID;
		this.memberID = memberID;
	}

	@Override
	public String toString() {
		return "EreviewDTO [rnum=" + rnum + ", content=" + content + ", rname=" + rname + ", rdate=" + rdate
				+ ", Ebook_ID=" + Ebook_ID + ", memberID=" + memberID + "]";
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public int getEbook_ID() {
		return Ebook_ID;
	}

	public void setEbook_ID(int ebook_ID) {
		Ebook_ID = ebook_ID;
	}

	public String getMemberID() {
		return memberID;
	}

	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}            
 
	
	
    
}
