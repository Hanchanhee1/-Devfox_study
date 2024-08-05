package com.chanhee.member;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface MemberService {
	
	// 会員登録
	int insert(MemberDTO member);
	
	// 会員リスト
	List<MemberDTO> memberlist();
	
	// 会員1名検索
	MemberDTO getMemberInfo(String id);
	
	// 会員修正
	int update(MemberDTO member);
	
	// 会員削除
	int delete(String id);
	
	// ログイン
	String login(MemberDTO member, HttpSession session);
	
	// ログアウト
	void logout(HttpSession session);

}
