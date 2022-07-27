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
	
	 @RequestMapping(method = RequestMethod.POST, value = "/userjoinsucess")
	   public String sucessjoinuser(HttpServletRequest request, Model model) {
	      

	      String userid = request.getParameter("userid");
	      String userpwd = request.getParameter("userpwd");	     
	      String username = request.getParameter("username");
	      String usernickname = request.getParameter("usernickname");
	      String userpnum = request.getParameter("userpnum");
	      String useremail = request.getParameter("useremail");

	      JoinDao joindao = session.getMapper(JoinDao.class);
	      joindao.sucessjoinuser(userid, userpwd, username, usernickname, userpnum, useremail);
	      
	      model.addAttribute("user_id",userid);
	      
//	      return "redirect:joinsucess_user";
	      return "join/joinsucess_user";
	   }
	 
	 @RequestMapping(method = RequestMethod.POST, value = "/businessjoinsucess")
	 public String sucessjoinbusiness(HttpServletRequest request, Model model) {
		 
		 
		 String businessid = request.getParameter("businessid");
		 String businesspwd = request.getParameter("businesspwd");	     
		 String businessname = request.getParameter("businessname");
		 String businessnickname = request.getParameter("businessnickname");
		 String businesspnum = request.getParameter("businesspnum");
		 String businessreginum = request.getParameter("businessreginum");
		 String businessemail = request.getParameter("businessemail");
		 
		 JoinDao joindao = session.getMapper(JoinDao.class);
		 joindao.sucessjoinbusiness(businessid, businesspwd, businessname, businessnickname, businesspnum, businessreginum, businessemail);
		 
		 model.addAttribute("business_id",businessid);
		 
//	      return "redirect:joinsucess_user";
		 return "join/joinsucess_business";
	 }
}
