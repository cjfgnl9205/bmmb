package spring.model.ebook;

import org.springframework.web.multipart.MultipartFile;

public class EbookDTO {

    private int ebook_ID;             
    private int price;             	
    private String desc1;
    private String desc2;               
    private String author;            	
    private String name;
    private MultipartFile filenameMF;
    private String image;              	
    private int imagesize;        	
    private String rdate;             	
    private int viewcnt;             
    private String category_code;        
    private String midclass;
    
	public EbookDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EbookDTO(int ebook_ID, int price, String desc1, String desc2, String author, String name,
			MultipartFile filenameMF, String image, int imagesize, String rdate, int viewcnt, String category_code,
			String midclass) {
		super();
		this.ebook_ID = ebook_ID;
		this.price = price;
		this.desc1 = desc1;
		this.desc2 = desc2;
		this.author = author;
		this.name = name;
		this.filenameMF = filenameMF;
		this.image = image;
		this.imagesize = imagesize;
		this.rdate = rdate;
		this.viewcnt = viewcnt;
		this.category_code = category_code;
		this.midclass = midclass;
	}

	@Override
	public String toString() {
		return "EbookDTO [ebook_ID=" + ebook_ID + ", price=" + price + ", desc1=" + desc1 + ", desc2=" + desc2
				+ ", author=" + author + ", name=" + name + ", filenameMF=" + filenameMF + ", image=" + image
				+ ", imagesize=" + imagesize + ", rdate=" + rdate + ", viewcnt=" + viewcnt + ", category_code="
				+ category_code + ", midclass=" + midclass + "]";
	}

	public int getEbook_ID() {
		return ebook_ID;
	}

	public void setEbook_ID(int ebook_ID) {
		this.ebook_ID = ebook_ID;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDesc1() {
		return desc1;
	}

	public void setDesc1(String desc1) {
		this.desc1 = desc1;
	}

	public String getDesc2() {
		return desc2;
	}

	public void setDesc2(String desc2) {
		this.desc2 = desc2;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public MultipartFile getFilenameMF() {
		return filenameMF;
	}

	public void setFilenameMF(MultipartFile filenameMF) {
		this.filenameMF = filenameMF;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getImagesize() {
		return imagesize;
	}

	public void setImagesize(int imagesize) {
		this.imagesize = imagesize;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	public String getCategory_code() {
		return category_code;
	}

	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}

	public String getMidclass() {
		return midclass;
	}

	public void setMidclass(String midclass) {
		this.midclass = midclass;
	}
  
    
    
    
}
