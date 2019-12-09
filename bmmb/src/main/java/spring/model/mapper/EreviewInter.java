package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.ereview.EreviewDTO;

public interface EreviewInter {
	 
	public List<EreviewDTO> list(Map map);

	public int total(int ebook_ID);
	 
}
