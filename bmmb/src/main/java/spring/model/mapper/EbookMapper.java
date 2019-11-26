package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.ebook.EbookDTO;
import spring.model.notices.NoticesDTO;

public interface EbookMapper {
	
	public List<EbookDTO> list(Map map);
	
	public int total(Map map);

	public EbookDTO read(int ebook_ID);

	public void upviewcnt(int ebook_ID);
	
}
