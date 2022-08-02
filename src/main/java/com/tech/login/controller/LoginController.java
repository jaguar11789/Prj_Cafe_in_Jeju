package com.tech.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping("/login/login")
	public String login() {
		
		return "login/login";
	}
	
	@RequestMapping("/login/business_login")
	public String business_login() {
		
		return "login/business_login";
	}
	
	@RequestMapping("/login/login_user_session")
	public String login_user_session(HttpServletRequest request, HttpSession session) {
		
		String user_id = request.getParameter("id");
		System.out.println("user_id : " + user_id);
		session = request.getSession();
		session.setAttribute("id", user_id);
		System.out.println("=========pass by login()=============");
		//list main body밑에 c태그로 로그인 로그아웃시 상태변경
		
		return "redirect:../list/main";
	}
	
	
	  @RequestMapping("/login/login_business_session") public String
	  login_business_session(HttpServletRequest request, HttpSession session) {
	  
	  String business_id = request.getParameter("id");
	  System.out.println("business_id : " + business_id); session =
	  request.getSession(); session.setAttribute("id", business_id);
	  System.out.println("=========pass by login()============="); 
	  //list main body밑에 c태그로 로그인 로그아웃시 상태변경
	  
	  return "redirect:../list/main"; }
	 
	
	@RequestMapping("/main/logout")
	public String logout(HttpServletRequest request, HttpSession session) {
		System.out.println("=========pass by logout()=============");
		request.getSession().invalidate();
		request.getSession(true);
		
		return "redirect:../list/main";
	}
	
}
