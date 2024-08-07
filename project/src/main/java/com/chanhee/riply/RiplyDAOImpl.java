package com.chanhee.riply;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RiplyDAOImpl implements RiplyDAO {
	
	SqlSession sqlSession;
	
	@Autowired
	public RiplyDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public List<RiplyDTO> read(String board_no) {
		return sqlSession.selectList("com.chanhee.riply.read",board_no);
	}

	@Override
	public void create(RiplyDTO dto) {
		sqlSession.insert("com.chanhee.riply.create", dto);
		
	}

	@Override
	public void update(RiplyDTO dto) {
		sqlSession.update("com.chanhee.riply.update", dto);
		
	}

	@Override
	public void delete(RiplyDTO dto) {
		sqlSession.delete("com.chanhee.riply.delete", dto);
		
	}

	@Override
	public RiplyDTO detail(String riply_no) {
		return sqlSession.selectOne("com.chanhee.riply.detail", riply_no);
	}

}
