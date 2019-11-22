package spring.model.show;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.mapper.ShowMapper;

@Service
public class ShowService {
	
	@Autowired
	private ShowMapper mapper;
	
	public void create(ShowDTO dto) throws Exception{
		mapper.create(dto);
	}
	
	
	
}
