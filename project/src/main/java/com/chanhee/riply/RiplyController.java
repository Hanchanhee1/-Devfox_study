package com.chanhee.riply;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

// コメント Controller

@RestController
public class RiplyController {
	
	RiplyService riplyService;
	
	@Autowired
	public RiplyController(RiplyService riplyService) {
		super();
		this.riplyService = riplyService;
	}

	// コメント登録
	@RequestMapping("/riply/write")
	public void insert(@ModelAttribute RiplyDTO dto, HttpSession session) {
		String id = (String) session.getAttribute("id");
		dto.setId(id);
		riplyService.create(dto);
	}
	
	// コメントリスト
	@RequestMapping("/riply/list")
	@ResponseBody
	public List<RiplyDTO> list(@RequestParam String board_no) {
		List<RiplyDTO> list = riplyService.read(board_no);
		return list;
	}
	
	// コメントを詳しく
	@RequestMapping(value="/riply/detail/{riply_no}", method = RequestMethod.GET)
	public ModelAndView detail(@PathVariable("riply_no") String riply_no, ModelAndView mav) {
		RiplyDTO dto = riplyService.detail(riply_no);
		mav.setViewName("board/replyDetail");
		mav.addObject("dto", dto);
		return mav;
	}
	
	// コメント修正
	@RequestMapping(value="/riply/update", method = RequestMethod.POST)
	public ResponseEntity<String> update(@RequestParam("riply_no") String riply_no, @RequestParam("riply_content") String riply_content) {
		RiplyDTO dto = new RiplyDTO();
        dto.setRiply_no(riply_no);
        dto.setRiply_content(riply_content);
        riplyService.update(dto);;
        return ResponseEntity.ok("댓글이 수정되었습니다.");
	}
	
	// コメント削除
	@RequestMapping(value="/riply/delete", method = RequestMethod.POST)
    public ResponseEntity<String> delete(@RequestParam("riply_no") String riply_no) {
        RiplyDTO dto = new RiplyDTO();
        dto.setRiply_no(riply_no);
        riplyService.delete(dto);
        return ResponseEntity.ok("댓글이 삭제되었습니다.");
    }
	

}
