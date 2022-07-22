package com.tech.join.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/join/*")
public class JoinController {
	
	@RequestMapping("/join")
	public String join() {
		
		return "join/join";
	}
	@RequestMapping("/business_join")
	public String business_join() {
		
		return "join/business_join";
	}
	@RequestMapping("/joinsucess_business")
	public String joinsucess_business() {
		
		return "join/joinsucess_business";
	}
	@RequestMapping("/joinsucess_user")
	public String joinsucess_user() {
		
		return "join/joinsucess_user";
	}
	@RequestMapping("/user_join")
	public String user_join() {
		
		return "join/user_join";
	}
}
