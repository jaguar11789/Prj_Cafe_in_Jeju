package com.tech.join.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.cafein.dto.UserInfoDto;
import com.tech.join.dao.JoinDao;

@Controller
@RequestMapping("/join/*")
public class JoinController {
	
	private String userid1 = "redirect:joinsucess_user";

	@Autowired
	private SqlSession session;

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

	@RequestMapping("/user_join")
	public String user_join() {

		return "join/user_join";
	}

	/*@RequestMapping("/joinsucess_user")
	public String joinsucess_user(HttpServletRequest request, Model model) {

		
		JoinDao joindao = session.getMapper(JoinDao.class);
		UserInfoDto userdto = joindao.joinsucess_user();
		
		return "join/joinsucess_user";
	}*/
	
	@RequestMapping(method = RequestMethod.POST, value = "/joinsucess")
	public String sucessjoinuser(HttpServletRequest request, Model model) {
		

		String userid = request.getParameter("userid");
		String userpwd1 = request.getParameter("userpwd1");
		String userpwd2 = request.getParameter("userpwd2");
		String username = request.getParameter("username");
		String usernickname = request.getParameter("usernickname");
		String userpnum = request.getParameter("userpnum");
		String useremail = request.getParameter("useremail");

		
		
		JoinDao joindao = session.getMapper(JoinDao.class);
		
		joindao.sucessjoinuser(userid, userpwd1, userpwd2, username, usernickname, userpnum, useremail);
		
		return "redirect:joinsucess_user";
	}
}
