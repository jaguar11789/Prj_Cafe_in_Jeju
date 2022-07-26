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

	@PostMapping("/join/idCheck")
	public String idCheck(String id) {

		System.out.println("ID : " + id);

		JoinDao joindao = session.getMapper(JoinDao.class);

		int id1 = joindao.idUserCheck(id);
		int id2 = joindao.idBusinessCheck(id);

		String check = "";

		if (id1 + id2 != 1) {
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
}
