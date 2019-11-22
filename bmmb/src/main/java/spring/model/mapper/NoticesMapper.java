package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.notices.NoticesDTO;

public interface NoticesMapper {
	
	public List<NoticesDTO> list(Map map);
	
	public int total(Map map);
	
	public void upviewcnt(int notices_no);
	
	public NoticesDTO read(int notices_no);
	
	public int create(NoticesDTO dto);
	
	public int update(NoticesDTO dto);
	
	public int delete(int notices_no);
	

}
