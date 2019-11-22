package spring.model.notices;

import org.springframework.web.multipart.MultipartFile;

public class NoticesDTO {
	
	private int notices_no;
	private String notices_title;
	private String notices_content;
	private String notices_name;
	private String notices_date;
	private String notices_udate;
	private int notices_viewcnt;
	private String notices_filename;
	private int notices_filesize;
	private MultipartFile filenameMF;
	public NoticesDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticesDTO(int notices_no, String notices_title, String notices_content, String notices_name,
			String notices_date, String notices_udate, int notices_viewcnt, String notices_filename,
			int notices_filesize, MultipartFile filenameMF) {
		super();
		this.notices_no = notices_no;
		this.notices_title = notices_title;
		this.notices_content = notices_content;
		this.notices_name = notices_name;
		this.notices_date = notices_date;
		this.notices_udate = notices_udate;
		this.notices_viewcnt = notices_viewcnt;
		this.notices_filename = notices_filename;
		this.notices_filesize = notices_filesize;
		this.filenameMF = filenameMF;
	}
	@Override
	public String toString() {
		return "NoticesDTO [notices_no=" + notices_no + ", notices_title=" + notices_title + ", notices_content="
				+ notices_content + ", notices_name=" + notices_name + ", notices_date=" + notices_date
				+ ", notices_udate=" + notices_udate + ", notices_viewcnt=" + notices_viewcnt + ", notices_filename="
				+ notices_filename + ", notices_filesize=" + notices_filesize + ", filenameMF=" + filenameMF + "]";
	}
	public int getNotices_no() {
		return notices_no;
	}
	public void setNotices_no(int notices_no) {
		this.notices_no = notices_no;
	}
	public String getNotices_title() {
		return notices_title;
	}
	public void setNotices_title(String notices_title) {
		this.notices_title = notices_title;
	}
	public String getNotices_content() {
		return notices_content;
	}
	public void setNotices_content(String notices_content) {
		this.notices_content = notices_content;
	}
	public String getNotices_name() {
		return notices_name;
	}
	public void setNotices_name(String notices_name) {
		this.notices_name = notices_name;
	}
	public String getNotices_date() {
		return notices_date;
	}
	public void setNotices_date(String notices_date) {
		this.notices_date = notices_date;
	}
	public String getNotices_udate() {
		return notices_udate;
	}
	public void setNotices_udate(String notices_udate) {
		this.notices_udate = notices_udate;
	}
	public int getNotices_viewcnt() {
		return notices_viewcnt;
	}
	public void setNotices_viewcnt(int notices_viewcnt) {
		this.notices_viewcnt = notices_viewcnt;
	}
	public String getNotices_filename() {
		return notices_filename;
	}
	public void setNotices_filename(String notices_filename) {
		this.notices_filename = notices_filename;
	}
	public int getNotices_filesize() {
		return notices_filesize;
	}
	public void setNotices_filesize(int notices_filesize) {
		this.notices_filesize = notices_filesize;
	}
	public MultipartFile getFilenameMF() {
		return filenameMF;
	}
	public void setFilenameMF(MultipartFile filenameMF) {
		this.filenameMF = filenameMF;
	}
	
	
	
	
		    
}
