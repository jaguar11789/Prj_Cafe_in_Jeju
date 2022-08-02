package com.tech.login.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tech.login.dao.LoginDao;

@RestController
public class LoginRestController {

	@Autowired
	private SqlSession sqlsession;
	
	@PostMapping("/login/loginUserCheck")
	public String loginCheck(String user_id, String user_pwd) {
		
		System.out.println("user_id : " + user_id);
		
		
		String result = "";
		
		LoginDao logindao = sqlsession.getMapper(LoginDao.class);
		
		int loginUserIdCtn = logindao.loginUserCheck(user_id, user_pwd);
		
		if(loginUserIdCtn == 1) {
			result = "true";			
		}
		return result;
	}
	
	
	@PostMapping("/login/loginBusinessCheck")
	public String loginBusinessCheck(String business_id, String business_pwd) {

		System.out.println("business_id : " + business_id);

		String result = "";

		LoginDao logindao = sqlsession.getMapper(LoginDao.class);

		int loginBusinessIdCtn = logindao.loginBusinessCheck(business_id, business_pwd);

		if (loginBusinessIdCtn == 1) {
			result = "true";

		}
		return result;
	}

}
