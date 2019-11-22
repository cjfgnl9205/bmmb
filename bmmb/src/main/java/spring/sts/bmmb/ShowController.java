package spring.sts.bmmb;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.model.mapper.ShowMapper;
import spring.model.show.ShowDTO;
import spring.model.show.ShowService;
import spring.utility.bmmb.Utility;

@Controller
public class ShowController {
	
	@Autowired
	private ShowService service;
	
	@Autowired
	private ShowMapper mapper;
	
	@GetMapping("/show/booking")
	public String booking() {
		return "/show/booking";
	}
	
	@GetMapping("/show/seat_select")
	public String seat_select() {
		return "/show/seat_select";
	}
	@RequestMapping("/show/list")
	public String list(HttpServletRequest request, ShowDTO dto) {
		
		
		int nowPage = 1;
		
		if(request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		int recordPerPage = 4;
		
		int sno = ((nowPage-1)*recordPerPage)+1;
		int eno = nowPage*recordPerPage;
		
		Map map = new HashMap();
		map.put("show_genre", "뮤지컬");
		map.put("sno", sno);
		map.put("eno", eno);
		
		try {
			List<ShowDTO> list = mapper.list(map);
			int total = mapper.total(map);
			
			
			String paging = Utility.showpaging(total, nowPage, recordPerPage);

			request.setAttribute("list", list);
			request.setAttribute("paging", paging);
			request.setAttribute("nowPage", nowPage);
		
			
			return "/show/list";
		} catch (Exception e) {
			e.printStackTrace();
			return "/error";
		}
		
	}
	
	@GetMapping("/show/read")
	public String read() {
		return "/show/read";
	}
	
	@PostMapping("/show/create")
	public String create(ShowDTO dto, HttpServletRequest request) {
		String basePath = request.getRealPath("/storage");
		
		int filesize = (int)dto.getFilenameMF().getSize();
		
		if(filesize>0) {
			dto.setShow_mainfile(Utility.saveFileSpring(dto.getFilenameMF(), basePath));
		}
	
		try {
			service.create(dto);
			return "redirect:list";
		} catch (Exception e) {
			e.printStackTrace();
			return "/show/create";
		}	
	}
	
	@GetMapping("/show/create")
	public String create() {
		return "/show/create";
	}

}
