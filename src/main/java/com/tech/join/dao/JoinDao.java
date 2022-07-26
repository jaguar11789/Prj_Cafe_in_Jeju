package com.tech.join.dao;

import com.tech.cafein.dto.UserInfoDto;

public interface JoinDao {

	public int idUserCheck(String id);
	public int idBusinessCheck(String id);

	public int nicknameUserCheck(String nickname);
	public int nicknameBusinessCheck(String nickname);
	
	public void sucessjoinuser(String userid, String userpwd1, String userpwd2, String username, 
			String usernickname, String userpnum, String useremail);
	
	public UserInfoDto joinsucess_user(String userid);
	public UserInfoDto sucessjoinuser(String userid);
	public UserInfoDto joinsucess_user();

}
