package spring.model.notices;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.mapper.NoticesMapper;

@Service
public class NoticesService {
	
	@Autowired
	private NoticesMapper mapper;
	
	public void update(NoticesDTO dto) throws Exception{
		mapper.update(dto);
	}
	
	public void delete(int notices_no) throws Exception{
		mapper.delete(notices_no);
	}
}
