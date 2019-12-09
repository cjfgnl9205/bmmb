package spring.sts.bmmb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import spring.model.ereview.EreviewDTO;
import spring.model.mapper.EreviewInter;
import spring.utility.bmmb.Utility;

@RestController
public class EreviewController {

	private static final Logger log = LoggerFactory.getLogger(EreviewController.class);
	
	@Autowired
	private EreviewInter eInter;
	
	
	@GetMapping("/ebook/reply/{rnum}")
	public ResponseEntity<EreviewDTO> get(@PathVariable("rnum") int rnum){
		
		log.info("get: "+ rnum);
		
		return new ResponseEntity<>(eInter.read(rnum), HttpStatus.OK);
	}
	
	@GetMapping("/ebook/reply/list/{ebook_ID}/{sno}/{eno}")
	public ResponseEntity<List<EreviewDTO>> getList(
	@PathVariable("ebook_ID") int ebook_ID,
	@PathVariable("sno") int sno,
	@PathVariable("eno") int eno
	) {
	 
	 
	Map map = new HashMap();
	map.put("sno", sno);
	map.put("eno", eno);
	map.put("ebook_ID", ebook_ID);
	 
	 
	return new ResponseEntity<List<EreviewDTO>>(eInter.list(map), HttpStatus.OK);
	}
	
	
	@GetMapping("/ebook/reply/page")
	public ResponseEntity<String> getPage(
			@RequestParam("nPage") int nPage,
			@RequestParam("nowPage") int nowPage,
			@RequestParam("ebook_ID") int ebook_ID,
			@RequestParam("col") String col,
			@RequestParam("word") String word
			){
		
		int total = eInter.total(ebook_ID);
		
		String url = "read";
		
		int recordPerPage = 3;
		
		String paging = Utility.rpaging(total, nowPage, recordPerPage, col, word, url,
				nPage, ebook_ID);
		
		return new ResponseEntity<>(paging, HttpStatus.OK);
	}
	
	
	}
	

