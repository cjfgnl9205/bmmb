package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.show.ShowDTO;

public interface ShowMapper {
	
	public int create(ShowDTO dto);
	
	public List<ShowDTO> list(Map map);
	
	public int total(Map map);

}
