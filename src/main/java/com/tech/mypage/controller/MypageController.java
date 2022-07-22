package com.tech.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {

	@RequestMapping("/business_mypage")
	public String business_mypage() {
		
		return "mypage/business_mypage";
	}
	@RequestMapping("/user_mypage")
	public String user_mypage() {
		
		return "mypage/user_mypage";
	}
}
