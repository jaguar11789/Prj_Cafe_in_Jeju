package com.tech.join.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tech.join.dao.JoinDao;

@RestController
public class JoinRestController {

	@Autowired
	private SqlSession session;
	
	@Autowired
	private MailSendService mailService;

	@PostMapping("/join/idCheck")
	public String idCheck(String id) {

		System.out.println("ID : " + id);

		JoinDao joindao = session.getMapper(JoinDao.class);

		int id1 = joindao.idUserCheck(id);
		int id2 = joindao.idBusinessCheck(id);

		String check = "";

		if (id1 + id2 < 1) { // == 0 으로 했을때 데이터베이스로 안들어가는 오류때문에 부등호로 교체
			check = "ok";
		}
		return check;
	}

	@PostMapping("/join/checkNickname")
	public String nicknameCheck(String nickname) {

		System.out.println("nickname : " + nickname);

		JoinDao joindao = session.getMapper(JoinDao.class);

		int nickname1 = joindao.nicknameUserCheck(nickname);
		int nickname2 = joindao.nicknameBusinessCheck(nickname);

		String check = "";

		if (nickname1 + nickname2 != 1) {
			check = "ok";
		}
		return check;
	}
	
	//checkEmail 들어오면 실행 MailSendService.java에서 값들 리턴받아옴.
	@PostMapping("/join/checkEmail")
	public String checkEmail(String email) {
		System.out.println("이메일 인증요청이 들어왔습니다!");
		System.out.println("이메일 인증 이메일 : " + email);
		
		return mailService.joinEmail(email);
	}
}
