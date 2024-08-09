package com.chanhee.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	MemberDAO dao;
	BCryptPasswordEncoder passEncoder;
	
	@Autowired
	public MemberServiceImpl(MemberDAO dao, BCryptPasswordEncoder passEncoder) {
		super();
		this.dao = dao;
		this.passEncoder = passEncoder;
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
	public int update(MemberDTO member) {
		return dao.update(member);
	}

	@Override
	public int delete(String id) {
		return dao.delete(id);
	}

	@Override
	public String login(MemberDTO member, HttpSession session) {
		MemberDTO mem = dao.findByid(member.getId());
		if(mem != null && passEncoder.matches(member.getPw(), mem.getPw())) {
			session.setAttribute("id", mem.getId());
			session.setAttribute("name", mem.getName());
			return mem.getName();
		}
		return null;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
		
	}

	@Override
	public MemberDTO findByid(String id) {
		return dao.findByid(id);
	}

	@Override
	public boolean idCheck(String id) {
		return dao.findByid(id) != null;
	}


}
