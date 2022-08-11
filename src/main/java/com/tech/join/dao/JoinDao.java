package com.tech.join.dao;

import com.tech.cafein.dto.UserInfoDto;

public interface JoinDao {

	public int idUserCheck(String id);

	public int idBusinessCheck(String id);

	public int nicknameUserCheck(String nickname);

	public int nicknameBusinessCheck(String nickname);

	public void sucessjoinuser(String userid, String userpwd, String usershapwd, String usernickname, String useremail,
			String userpnum, String username, String userbirth, String usersex);

	public UserInfoDto joinsucess_user(String userid);

	public UserInfoDto sucessjoinuser(String userid);

	public void sucessjoinbusiness(String businessid, String businesspwd, String businessname, String businessnickname,
			String businesspnum, String businessreginum, String businessemail, String businessbirth,
			String businesssex);

	public void sucessjoinbusiness(String businessid, String businesspwd, String businessshapwd,
			String businessnickname, String businessemail, String businesspnum, String businessname,
			String businessreginum, String businessbirth, String businesssex);

}
