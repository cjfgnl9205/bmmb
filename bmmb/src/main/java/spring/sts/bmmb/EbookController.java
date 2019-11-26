package spring.sts.bmmb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.ebook.EbookDTO;
import spring.model.mapper.EbookMapper;
import spring.utility.bmmb.Utility;

@Controller
public class EbookController {

	@Autowired
	public EbookMapper mapper;

	
	@GetMapping("/ebook/read")
	public String read(int ebook_ID, Model model) {
		
		mapper.upviewcnt(ebook_ID);
		EbookDTO dto = mapper.read(ebook_ID);
		
		model.addAttribute("dto", dto);
		
		return "/ebook/read";
	}
	
	
	@RequestMapping("/ebook/list")
	public String list(HttpServletRequest request) {
		
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
