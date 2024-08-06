package com.chanhee.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chanhee.util.Criteria;

@Service
public class BoardServiceImpl implements BoardService {
	
	BoardDAO dao;
	
	@Autowired
	public BoardServiceImpl(BoardDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public int insert(BoardDTO board) {
		return dao.insert(board);
	}

	@Override
	public List<BoardDTO> boardList() {
		return dao.boardList();
	}

	@Override
	public BoardDTO getBoardInfo(String board_no) {
		return dao.read(board_no);
	}

	@Override
	public int update(BoardDTO board) {
		return dao.update(board);
	}

	@Override
	public int delete(String board_no) {
		return dao.delete(board_no);
	}

	@Override
	public List<BoardDTO> Paging(Criteria cri) {
		return dao.Paging(cri);
	}

	@Override
	public int TotalCount(Criteria cri) {
		return dao.TotalCount(cri);
	}

	@Override
	public BoardDTO prev(String board_no) {
		return dao.prev(board_no);
	}

	@Override
	public BoardDTO next(String board_no) {
		return dao.next(board_no);
	}


}
