package spring.model.mapper;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import spring.model.notices.NoticesDTO;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { 
"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})

public class NoticesMapperTest {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private NoticesMapper mapper;
	
	@Test
	@Ignore
	public void testList() {
		
		Map map = new HashMap();
		map.put("word", "");
		map.put("sno", 1);
		map.put("eno", 5);
		
		List<NoticesDTO> list = mapper.list(map);
		logger.info("list, 콘솔에 출력됐다 없어짐"+ list);

	}

	@Test
	@Ignore
	public void testTotal() {
		Map map = new HashMap();
		map.put("word", "월요일");
		int cnt = mapper.total(map);
		logger.info("<월요일> 검색 갯수: "+ cnt);		
	}

	@Test
	@Ignore
	public void testUpviewcnt() {
		int notices_no = 8;
		mapper.upviewcnt(notices_no);
	}// 	public void upviewcnt(int notices_no); 라서, 결과값을 assertequals에서 받을 수 없음.

	
	@Test
	@Ignore
	public void testRead() {
		NoticesDTO dto = mapper.read(8);
		logger.info("dto: "+ dto);
	}

	@Test
	@Ignore
	public void testCreate() {
		NoticesDTO dto = new NoticesDTO();
		
		dto.setNotices_no(8);
		dto.setNotices_title("글제목");
		dto.setNotices_content("글내용");
		dto.setNotices_name("작성자");
		
		assertTrue(mapper.create(dto)>0);
	}

	@Test
	@Ignore
	public void testUpdate() {
		NoticesDTO dto = mapper.read(8);
		logger.info("dto 출력: "+ dto);
		
		dto.setNotices_name("김복순2");
		dto.setNotices_title("파업 선언");
		dto.setNotices_content("안해!");
		
		assertTrue(mapper.update(dto)>0);
	}

	@Test
	@Ignore
	public void testDelete() {
		int notices_no = 8;
		assertTrue(mapper.delete(notices_no)>0);
	}

}
