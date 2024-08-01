package com.chanhee.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chanhee.board.BoardDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	SqlSession sqlSession;
	
	@Autowired
	public MemberDAOImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public int insert(MemberDTO member) {
		return sqlSession.insert("com.chanhee.member.write",member);
	}

	@Override
	public List<MemberDTO> memberlist() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO read(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(MemberDTO member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String login(MemberDTO member) {
		return sqlSession.selectOne("com.chanhee.member.login", member);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}


}
