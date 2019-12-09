package spring.model.mapper;

import java.util.List;
import java.util.Map;

import spring.model.sample.SampleDTO;

public interface SampleMapper {

	
	public int total(Map map);
	public List<SampleDTO> list(Map map);
	
}
