package com.chanhee.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	MemberDAO dao;
	
	@Autowired
	public MemberServiceImpl(MemberDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public int insert(MemberDTO member) {
		return dao.insert(member);
	}

	@Override
	public List<MemberDTO> memberlist() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDTO getMemberInfo(String id) {
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
	public String login(MemberDTO member, HttpSession session) {
		String name = dao.login(member);
		if(name != null) {
			session.setAttribute("id", member.getId());
			session.setAttribute(name, name);
		}
		return name;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
		
	}


}
