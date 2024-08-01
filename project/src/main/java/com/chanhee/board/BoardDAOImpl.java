package com.chanhee.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	SqlSession sqlSession;
	
	@Autowired
	public BoardDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public int insert(BoardDTO board) {
		return sqlSession.insert("com.chanhee.board.write",board);
	}

	@Override
	public List<BoardDTO> boardList() {
		return sqlSession.selectList("com.chanhee.board.selectall");
	}

	@Override
	public BoardDTO read(String board_no) {
		return sqlSession.selectOne("com.chanhee.board.read", board_no);
	}

	@Override
	public int update(BoardDTO board) {
		return sqlSession.update("com.chanhee.board.update",board);
	}

	@Override
	public int delete(String board_no) {
		return sqlSession.delete("com.chanhee.board.delete", board_no);
	}

//	@Override
//	public List<BoardDTO> search(String data) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public List<BoardDTO> search(String tag, String data) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public List<BoardDTO> findByCategory(String category) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}
