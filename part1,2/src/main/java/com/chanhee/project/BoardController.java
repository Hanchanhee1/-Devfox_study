package com.chanhee.project;


import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/board/*")
public class BoardController {
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Locale locale, Model model) {
		return "/board/list";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(Locale locale, Model model) {
		return "/board/write";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(Locale locale, Model model) {
		return "/board/boardread";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Locale locale, Model model) {
		return "/board/boardupdate";
	}
	
}