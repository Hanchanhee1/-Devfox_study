package com.chanhee.riply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RiplyServiceImpl implements RiplyService {
	
	RiplyDAO dao;
	
	@Autowired
	public RiplyServiceImpl(RiplyDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public List<RiplyDTO> read(String board_no) {
		return dao.read(board_no);
	}

	@Override
	public void create(RiplyDTO dto) {
		dao.create(dto);
	}

	@Override
	public void update(RiplyDTO dto) {
		dao.update(dto);
		
	}

	@Override
	public void delete(RiplyDTO dto) {
		dao.delete(dto);
		
	}

	@Override
	public RiplyDTO detail(String riply_no) {
		return dao.detail(riply_no);
	}

}
