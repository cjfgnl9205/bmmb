package spring.model.mapper;

import static org.junit.Assert.fail;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Ignore;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import spring.model.sample.SampleDTO;

public class SampleMapperTest {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private SampleMapper mapper;
	
	@Test
	@Ignore
	public void testTotal() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testList() {
		Map map = new HashMap();
		
		map.put("word", "");
		map.put("sno", 1);
		map.put("eno", 5);
		
		List<SampleDTO>list = mapper.list(map);
		logger.info("list: "+list);
		
	}

}
