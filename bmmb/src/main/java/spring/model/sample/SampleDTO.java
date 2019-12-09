package spring.model.sample;

public class SampleDTO {

	private int sampleID;             
    private int ebook_ID;             
    private String page1;                
    private String page2;                
    private String page3;                
    private String page4;                
    private String page5;                
    private String spage;
    
	public SampleDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {     // ${list} 가져올 때 이렇게 출력됨
		return "SampleDTO [sampleID=" + sampleID + ", ebook_ID=" + ebook_ID + ", page1=" + page1 + ", page2=" + page2
				+ ", page3=" + page3 + ", page4=" + page4 + ", page5=" + page5 + ", spage=" + spage + "]";
	}

	public SampleDTO(int sampleID, int ebook_ID, String page1, String page2, String page3, String page4, String page5,
			String spage) {
		super();
		this.sampleID = sampleID;
		this.ebook_ID = ebook_ID;
		this.page1 = page1;
		this.page2 = page2;
		this.page3 = page3;
		this.page4 = page4;
		this.page5 = page5;
		this.spage = spage;
	}

	public int getSampleID() {
		return sampleID;
	}

	public void setSampleID(int sampleID) {
		this.sampleID = sampleID;
	}

	public int getEbook_ID() {
		return ebook_ID;
	}

	public void setEbook_ID(int ebook_ID) {
		this.ebook_ID = ebook_ID;
	}

	public String getPage1() {
		return page1;
	}

	public void setPage1(String page1) {
		this.page1 = page1;
	}

	public String getPage2() {
		return page2;
	}

	public void setPage2(String page2) {
		this.page2 = page2;
	}

	public String getPage3() {
		return page3;
	}

	public void setPage3(String page3) {
		this.page3 = page3;
	}

	public String getPage4() {
		return page4;
	}

	public void setPage4(String page4) {
		this.page4 = page4;
	}

	public String getPage5() {
		return page5;
	}

	public void setPage5(String page5) {
		this.page5 = page5;
	}

	public String getSpage() {
		return spage;
	}

	public void setSpage(String spage) {
		this.spage = spage;
	}                
	
	
	
	
	
}
