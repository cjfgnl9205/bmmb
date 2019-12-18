package spring.sts.bmmb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.mapper.SampleMapper;
import spring.model.sample.SampleDTO;
import spring.utility.bmmb.Utility;

@Controller
public class SampleController {

	@Autowired
	public SampleMapper smapper;
	
	@RequestMapping("/sample/list")
	public String list(HttpServletRequest request, String str) {
		
		String strB = request.getParameter("ebook_ID");
		request.setAttribute("strB", strB);
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
		
		List<SampleDTO> list = smapper.list(map);
		int total = smapper.total(map);
		
		String paging = Utility.paging(total, nowPage, recordPerPage, word);
		
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		
		
		return "/sample/list";
	}
	
}
