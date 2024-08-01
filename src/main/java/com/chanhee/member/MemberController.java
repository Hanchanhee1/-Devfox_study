package com.chanhee.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

// 会員Controller

@Controller
public class MemberController {
	
	MemberService memberService;
	
	@Autowired
	public MemberController(MemberService memberService) {
		super();
		this.memberService = memberService;
	}
	
	// 会員登録
	@RequestMapping("/member/memberjoin")
	public String register() {
		return "member/register";
	}
	
	@RequestMapping(value="/member/write" , method = RequestMethod.POST)
	public String wirte(MemberDTO member) {
		memberService.insert(member);
		return "redirect:/";
	}
	
	// ログイン
	@RequestMapping("/member/login")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("/member/login2")
	public String login2() {
		return "member/login2";
	}
	
	@RequestMapping(value="/member/loginpro" , method = RequestMethod.POST)
	public ModelAndView logincheck(@ModelAttribute MemberDTO memberDTO , HttpSession session) {
		String name = memberService.login(memberDTO, session);
		ModelAndView mav = new ModelAndView();
		if(name != null) {
			mav.setViewName("/member/login2");
		}else {
			mav.setViewName("/member/login");
			mav.addObject("message", "error");
		}
		return mav;
	}
	
	@RequestMapping("/member/logout")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		memberService.logout(session);
		mav.setViewName("/member/login");
		mav.addObject("message", "logout");
		return mav;
	}

}
