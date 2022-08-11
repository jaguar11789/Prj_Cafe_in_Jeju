package com.tech.cafein.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserInfoDto {
	private String user_id;
	private String user_pwd;
	private String user_shapwd;
	private String user_nickname;
	private String user_email;
	private String user_pnum;
	private String user_name;
	private String user_num;
	private String userbirth;
	private String usersex;

	public UserInfoDto() {
		// TODO Auto-generated constructor stub
	}

	public UserInfoDto(String user_id, String user_pwd, String user_shapwd, String user_nickname, String user_email,
			String user_pnum, String user_name, String user_num, String userbirth, String usersex) {
		super();
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_shapwd = user_shapwd;
		this.user_nickname = user_nickname;
		this.user_email = user_email;
		this.user_pnum = user_pnum;
		this.user_name = user_name;
		this.user_num = user_num;
		this.userbirth = userbirth;
		this.usersex = usersex;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_shapwd() {
		return user_shapwd;
	}

	public void setUser_shapwd(String user_shapwd) {
		this.user_shapwd = user_shapwd;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_pnum() {
		return user_pnum;
	}

	public void setUser_pnum(String user_pnum) {
		this.user_pnum = user_pnum;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_num() {
		return user_num;
	}

	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}

	public String getUserbirth() {
		return userbirth;
	}

	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}

	public String getUsersex() {
		return usersex;
	}

	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}
}
