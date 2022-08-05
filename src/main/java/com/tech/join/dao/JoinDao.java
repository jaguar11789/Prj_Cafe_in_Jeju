package com.tech.join.dao;

import com.tech.cafein.dto.UserInfoDto;

public interface JoinDao {

	public int idUserCheck(String id);
	public int idBusinessCheck(String id);

	public int nicknameUserCheck(String nickname);
	public int nicknameBusinessCheck(String nickname);
	
	public void sucessjoinuser(String userid, String userpwd, String username, 
			String usernickname, String userpnum, String useremail, String userbirth, String usersex);
	
	public UserInfoDto joinsucess_user(String userid);
	public UserInfoDto sucessjoinuser(String userid);
	public void sucessjoinbusiness(String businessid, String businesspwd, String businessname, String businessnickname,
			String businesspnum, String businessreginum, String businessemail);

}
