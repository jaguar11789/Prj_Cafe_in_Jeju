package com.tech.preeboarderreply.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class Free_Boarder_Reply {
	@Controller
	@RequestMapping("/list/*")
	public class ListController {
@RequestMapping("/fr_reply")
public String fr_reply(HttpServletRequest request, Model model) {
	
	
	
	
	
	
	
	
	
	return "redirect:free_bparder_content";
}
	}
}
