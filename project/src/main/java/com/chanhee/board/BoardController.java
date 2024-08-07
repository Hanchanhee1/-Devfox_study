package com.chanhee.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.chanhee.util.Criteria;
import com.chanhee.util.PageDTO;

// 掲示板 Controller

@Controller
public class BoardController {
	
	BoardService boardService;
	
	@Autowired
	public BoardController(BoardService boardService) {
		super();
		this.boardService = boardService;
	}
	
	// 掲示板照会
	@RequestMapping("/board/list")
	public String list(Criteria cri, Model model ,@RequestParam(value="type", required=false) String type,@RequestParam(value="keyword", required=false) String keyword) {
		
		System.out.println("cri" + cri);
		
		List<BoardDTO> list = boardService.Paging(cri);
		int total = boardService.TotalCount(cri);
		System.out.println(list);
		model.addAttribute("boardlist", list);
		model.addAttribute("total",total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "board/boardlist";
	}
	
	@RequestMapping(value="/board/write" , method = RequestMethod.GET)
	public String write() {
		return "/board/boardwrite";
	}
	
	// 掲示板登録
	@RequestMapping(value="/board/write" , method = RequestMethod.POST)
	public String write2(BoardDTO board) {
		boardService.insert(board);
		return "redirect:/board/list";
	}
	
	// 掲示板読み
	@RequestMapping("/board/read")
	public String read(@RequestParam("board_no") String board_no, BoardDTO boardDTO, String state, Model model) {
		BoardDTO board = boardService.getBoardInfo(board_no);
		BoardDTO next = boardService.next(board_no);
		BoardDTO prev = boardService.prev(board_no);
		model.addAttribute("board",board);
		model.addAttribute("next", next);
		model.addAttribute("prev", prev);
		return "board/boardread";
	}
	
	// 掲示板削除
	@RequestMapping(value="/board/delete" , method = RequestMethod.POST)
	public String delete(String board_no) {
		boardService.delete(board_no);
		return "redirect:/board/list";
	}
	
	@RequestMapping("/board/update")
	public String update(String board_no, Model model) {
		BoardDTO board = boardService.getBoardInfo(board_no);
		model.addAttribute("board",board);
		return "board/boardupdate";
	}
	
	// 掲示板修正
	@RequestMapping(value="/board/updatepro" , method = RequestMethod.POST)
	public String update2(BoardDTO board) {
		boardService.update(board);
		return "redirect:/board/list";
	}
	


}
