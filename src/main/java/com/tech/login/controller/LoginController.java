package com.tech.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tech.cafein.dto.BusinessInfoDto;
import com.tech.login.dao.LoginDao;

@Controller
public class LoginController {
	
	@Autowired
	private SqlSession sqlsession;
	
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
	
	
	@RequestMapping("/login/login_business_session")
	public String login_business_session(HttpServletRequest request, HttpSession session) {
		
		
		//이미 앞에서 검증했기 때문에 그냥 바로 실행해줌
		String business_id = request.getParameter("id");
		String business_pwd = request.getParameter("pwd");
		System.out.println("business_id : " + business_id);
		
		LoginDao dao=sqlsession.getMapper(LoginDao.class);
		BusinessInfoDto dto = dao.getBusinessInfo(business_id,business_pwd);
		
		session = request.getSession();
		//세션에 비지니스 고유키 저장해줌
		session.setAttribute("busi_num", dto.getBusiness_num());
		
		// list main body밑에 c태그로 로그인 로그아웃시 상태변경

		return "redirect:../list/main";
	}
	 
	
	@RequestMapping("/main/logout")
	public String logout(HttpServletRequest request, HttpSession session) {
		System.out.println("=========pass by logout()=============");
		request.getSession().invalidate();
		request.getSession(true);
		
		return "redirect:../list/main";
	}
	
}
