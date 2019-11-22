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

import spring.model.mapper.NoticesMapper;
import spring.model.notices.NoticesDTO;
import spring.model.notices.NoticesService;
import spring.utility.bmmb.Utility;

@Controller
public class NoticesController {

	@Autowired
	public NoticesMapper mapper;
	
	@Autowired
	public NoticesService service;
	
	
	@PostMapping("/notices/update")
	public String update(NoticesDTO dto, String oldfile, HttpServletRequest request, Model model) {
		
		String basePath = request.getRealPath("/notices_storage");
		
		dto.setNotices_filesize((int)dto.getFilenameMF().getSize());

		if(dto.getNotices_filesize()>0) {
			Utility.deleteFile(basePath, oldfile);
			dto.setNotices_filename(Utility.saveFileSpring(dto.getFilenameMF(), basePath));
		}
		
		try {
			service.update(dto);
			model.addAttribute("word", request.getParameter("word"));
			model.addAttribute("nowPage", request.getParameter("nowPage"));
			return "redirect:list";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "수정에 실패했습니다.");
			model.addAttribute("url", "update");
			
			model.addAttribute("notices_no", dto.getNotices_no());
			model.addAttribute("word", request.getParameter("word"));
			model.addAttribute("nowPage", request.getParameter("nowPage"));
			return "/notices/error";
		}
	}
	
	@GetMapping("/notices/update")
	public String update(int notices_no, Model model) {
		
		NoticesDTO dto = mapper.read(notices_no);
		model.addAttribute("dto", dto);

		return "/notices/update";
	}
	
	@PostMapping("/notices/delete")
	public String delete(int notices_no, HttpServletRequest request, String word, int nowPage, String oldfile) {
		
		String basePath = request.getRealPath("/notices_storage");
		if(oldfile != null) {
			Utility.deleteFile(basePath, oldfile);
		}
		
		try {
			service.delete(notices_no);
			return "redirect:list";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:read";
		}

	}
	
	@GetMapping("/notices/read")
	public String read(int notices_no, Model model) {
		
		mapper.upviewcnt(notices_no);
		NoticesDTO dto = mapper.read(notices_no);

		model.addAttribute("dto", dto);
		
		return "/notices/read";
	}
	
	@PostMapping("/notices/create")
	public String create(NoticesDTO dto, HttpServletRequest request) {
		
		String basePath = request.getRealPath("/notices_storage");
		
		int filesize = (int)dto.getFilenameMF().getSize();
		
		if(filesize>0) {
			dto.setNotices_filename(Utility.saveFileSpring(dto.getFilenameMF(), basePath));
			dto.setNotices_filesize(filesize);
		}
		
		if(mapper.create(dto)>0) {
			return "redirect:list";
		}else {
			return "/notices/create";
		}
	}
	
	@GetMapping("/notices/create")
	public String create() {
		return "/notices/create";
	}
	
	
	@RequestMapping("/notices/list")
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
		
		List<NoticesDTO> list = mapper.list(map);
		int total = mapper.total(map);
		
		String paging = Utility.paging(total, nowPage, recordPerPage, word);
		
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		
		
		return "/notices/list";
	}
}
