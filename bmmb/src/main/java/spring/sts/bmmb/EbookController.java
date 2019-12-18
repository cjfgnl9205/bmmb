package spring.sts.bmmb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.ebook.EbookDTO;
import spring.model.mapper.EbookMapper;
import spring.model.mapper.SampleMapper;
import spring.model.sample.SampleDTO;
import spring.utility.bmmb.Utility;

@Controller
public class EbookController {

	@Autowired
	public EbookMapper mapper;

	@PostMapping("/ebook/create")	
	public String create(EbookDTO dto, HttpServletRequest request) {
		
		String basePath = request.getRealPath("/ebook_storage");
		
		int filesize = (int)dto.getFilenameMF().getSize();

		if(filesize>0){
			dto.setImage(Utility.saveFileSpring(dto.getFilenameMF(), basePath));
			dto.setImagesize(filesize);
		}
		
		if(mapper.create(dto)>0) {
			return "redirect:list";
		}else {
			return "/ebook/create";
		}
	}
	
	@GetMapping("/ebook/create")
	public String create() {
		return "/ebook/create";
	}
	
	@GetMapping("/ebook/sread")
	public String sread(int ebook_ID, HttpServletRequest request, Model model) {
		
		String ebook_param = request.getParameter("ebook_ID");
		int ebook_int = Integer.parseInt(ebook_param);
		
		SampleDTO dto = mapper.sread(ebook_int);
		
		model.addAttribute("dto", dto);
		
		return "/ebook/sread";
	}
	
	
	
	@GetMapping("/ebook/read")
	public String read(int ebook_ID, Model model,
			HttpServletRequest request,
			int nowPage,
			String col,
			String word) {
		
		mapper.upviewcnt(ebook_ID);
		EbookDTO dto = mapper.read(ebook_ID);
		String desc1 = dto.getDesc1().replaceAll("\r\n", "<br>");
		dto.setDesc1(desc1);
		String desc2 = dto.getDesc2().replaceAll("\r\n", "<br>");
		dto.setDesc2(desc2);
		model.addAttribute("dto",dto);
		
		int nPage = 1;
		
		if (request.getParameter("nPage")!=null) {
			nPage = Integer.parseInt(request.getParameter("nPage"));
		}
		int recordPerPage = 3;
		
		int sno = ((nPage-1)*recordPerPage) + 1;
		int eno = nPage * recordPerPage;
		
		Map map = new HashMap();
		map.put("sno", sno);
		map.put("eno", eno);
		map.put("ebook_ID", ebook_ID);
		map.put("nPage",nPage);
		map.put("nowPage", nowPage);
		map.put("col", col);
		map.put("word", word);
		
		model.addAllAttributes(map);
		
		model.addAttribute("dto", dto);
		
		return "/ebook/read";
	}
	
	// 피드백: 컨트롤러에서 translatedText 부분만 짤라서 el에 넣어서, eread로 리턴할 수 있는지 체크하기.
	@RequestMapping("/ebook/eread")
		public String eread(HttpServletRequest request) {
			/* pop버튼 눌러서, 뷰에서 받은 파라미터 */
			String testParam = request.getParameter("testParam");
			System.out.println("ppg 인수 출력: "+ testParam);		
			String testParam1 = request.getParameter("testParam1");
			System.out.println("ppg 인수1 출력: "+ testParam1);
			String testParam2 = request.getParameter("testParam2");
			String testParam3 = request.getParameter("testParam3");
			String testParam4 = request.getParameter("testParam4");			
			
			/* 파파고: 인수없는 메소드 호출 */
		/*
		 * String retP = Utility.enKo(); request.setAttribute("retP", retP);
		 */
			
			/*파파고: 인수있는 메소드 호출*/
			
			String enkoTest = Utility.enkoTest(testParam);
			String enkoTest1 = Utility.enkoTest(testParam1);
			String enkoTest2 = Utility.enkoTest(testParam2);
			String enkoTest3 = Utility.enkoTest(testParam3);
			String enkoTest4 = Utility.enkoTest(testParam4);			
			
			request.setAttribute("enkoTest", enkoTest);
			request.setAttribute("enkoTest1", enkoTest1);
			request.setAttribute("enkoTest2", enkoTest2);
			request.setAttribute("enkoTest3", enkoTest3);
			request.setAttribute("enkoTest4", enkoTest4);
			
			request.setAttribute("testParam", testParam);
			
			/* System.out.println("스프링버퍼 enkoTest 출력: "+enkoTest); */
			
			/*리드에서 히든으로 가져온것?*/
			String desc2 = request.getParameter("desc2");
			request.setAttribute("desc2", desc2);
			
			String author = request.getParameter("author");
			request.setAttribute("author", author);
			
			String id = request.getParameter("ebook_ID");
					
			request.setAttribute("id", id);		
			
			
			return "/ebook/eread";
		}
	
	
	
	@RequestMapping("/ebook/list")
	public String list(HttpServletRequest request ) {
		
		String kmid = request.getParameter("kmidclass");
		
		if (kmid != null) {
			request.setAttribute("kmid", kmid);		
		}
		
		String word = Utility.checkNull(request.getParameter("word"));
		
		int nowPage = 1;
		
		if(request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		int recordPerPage = 10;
		
		int sno = ((nowPage-1)*recordPerPage)+1;
		int eno = nowPage*recordPerPage;
		
		Map map = new HashMap();
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);
		
		List<EbookDTO> list = mapper.list(map);
		int total = mapper.total(map);
		
		String paging = Utility.paging(total, nowPage, recordPerPage, word);
		
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		
		return "/ebook/list";
	}
}
