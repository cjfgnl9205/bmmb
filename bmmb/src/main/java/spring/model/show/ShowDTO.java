package spring.model.show;

import org.springframework.web.multipart.MultipartFile;

public class ShowDTO {
	
	private int show_no;
	private String show_name;
	private String show_genre;
	private String show_place;
	private String show_actor;
	private String show_starttime;
	private String show_lasttime;
	private String show_runningtime;
	private String show_age;
	private String show_date;
	private String show_price;
	private String show_mainfile;
	private MultipartFile filenameMF;
	private String show_synopsis;
	private String show_content;
	private int total_seat;
	public ShowDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShowDTO(int show_no, String show_name, String show_genre, String show_place, String show_actor,
			String show_starttime, String show_lasttime, String show_runningtime, String show_age, String show_date,
			String show_price, String show_mainfile, MultipartFile filenameMF, String show_synopsis,
			String show_content, int total_seat) {
		super();
		this.show_no = show_no;
		this.show_name = show_name;
		this.show_genre = show_genre;
		this.show_place = show_place;
		this.show_actor = show_actor;
		this.show_starttime = show_starttime;
		this.show_lasttime = show_lasttime;
		this.show_runningtime = show_runningtime;
		this.show_age = show_age;
		this.show_date = show_date;
		this.show_price = show_price;
		this.show_mainfile = show_mainfile;
		this.filenameMF = filenameMF;
		this.show_synopsis = show_synopsis;
		this.show_content = show_content;
		this.total_seat = total_seat;
	}
	@Override
	public String toString() {
		return "ShowDTO [show_no=" + show_no + ", show_name=" + show_name + ", show_genre=" + show_genre
				+ ", show_place=" + show_place + ", show_actor=" + show_actor + ", show_starttime=" + show_starttime
				+ ", show_lasttime=" + show_lasttime + ", show_runningtime=" + show_runningtime + ", show_age="
				+ show_age + ", show_date=" + show_date + ", show_price=" + show_price + ", show_mainfile="
				+ show_mainfile + ", filenameMF=" + filenameMF + ", show_synopsis=" + show_synopsis + ", show_content="
				+ show_content + ", total_seat=" + total_seat + "]";
	}
	public int getShow_no() {
		return show_no;
	}
	public void setShow_no(int show_no) {
		this.show_no = show_no;
	}
	public String getShow_name() {
		return show_name;
	}
	public void setShow_name(String show_name) {
		this.show_name = show_name;
	}
	public String getShow_genre() {
		return show_genre;
	}
	public void setShow_genre(String show_genre) {
		this.show_genre = show_genre;
	}
	public String getShow_place() {
		return show_place;
	}
	public void setShow_place(String show_place) {
		this.show_place = show_place;
	}
	public String getShow_actor() {
		return show_actor;
	}
	public void setShow_actor(String show_actor) {
		this.show_actor = show_actor;
	}
	public String getShow_starttime() {
		return show_starttime;
	}
	public void setShow_starttime(String show_starttime) {
		this.show_starttime = show_starttime;
	}
	public String getShow_lasttime() {
		return show_lasttime;
	}
	public void setShow_lasttime(String show_lasttime) {
		this.show_lasttime = show_lasttime;
	}
	public String getShow_runningtime() {
		return show_runningtime;
	}
	public void setShow_runningtime(String show_runningtime) {
		this.show_runningtime = show_runningtime;
	}
	public String getShow_age() {
		return show_age;
	}
	public void setShow_age(String show_age) {
		this.show_age = show_age;
	}
	public String getShow_date() {
		return show_date;
	}
	public void setShow_date(String show_date) {
		this.show_date = show_date;
	}
	public String getShow_price() {
		return show_price;
	}
	public void setShow_price(String show_price) {
		this.show_price = show_price;
	}
	public String getShow_mainfile() {
		return show_mainfile;
	}
	public void setShow_mainfile(String show_mainfile) {
		this.show_mainfile = show_mainfile;
	}
	public MultipartFile getFilenameMF() {
		return filenameMF;
	}
	public void setFilenameMF(MultipartFile filenameMF) {
		this.filenameMF = filenameMF;
	}
	public String getShow_synopsis() {
		return show_synopsis;
	}
	public void setShow_synopsis(String show_synopsis) {
		this.show_synopsis = show_synopsis;
	}
	public String getShow_content() {
		return show_content;
	}
	public void setShow_content(String show_content) {
		this.show_content = show_content;
	}
	public int getTotal_seat() {
		return total_seat;
	}
	public void setTotal_seat(int total_seat) {
		this.total_seat = total_seat;
	}
	
	
	
	
}
