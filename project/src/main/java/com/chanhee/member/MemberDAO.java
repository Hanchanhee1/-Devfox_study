package com.chanhee.member;

import java.util.List;

import javax.servlet.http.HttpSession;


public interface MemberDAO {
	
	// 会員登録
	int insert(MemberDTO member);
	// 会員全体検索
	List<MemberDTO> memberlist();
	// 会員1名検索
	MemberDTO read(String id);
	// 会員修正
	int update(MemberDTO member);
	// 会員削除
	int delete(String id);
	//ログイン 
	String login(MemberDTO member);
	// ログアウト
	void logout(HttpSession session);
	
}
