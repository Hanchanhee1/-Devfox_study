package com.chanhee.project;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/member/*")
public class MemberController {
	
	@RequestMapping(value = "login" , method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "/member/login";
	}
	
	@RequestMapping(value = "memberjoin" , method = RequestMethod.GET)
	public String memberjoin(Locale locale, Model model) {
		return "/member/memberjoin";
	}
}
