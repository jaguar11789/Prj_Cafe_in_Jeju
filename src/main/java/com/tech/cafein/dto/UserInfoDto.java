package com.tech.cafein.dto;


import lombok.Getter;
import lombok.Setter;


public class UserInfoDto {
	private String user_id;
	private String user_pwd;
	private String user_shapwd;
	private String user_nickname;
	private String user_email;
	private String user_pnum;
	private String user_name;
	private String user_num;
	private String user_birth;
	private String user_sex;

	public UserInfoDto() {
	}// 컨트롤러에서 해당되는 타입으로 받기 위해 생성

	public UserInfoDto(String user_id, String user_pwd, String user_shapwd, String user_nickname, String user_email,
			String user_pnum, String user_name, String user_num, String user_birth, String user_sex) {
		super();
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_shapwd = user_shapwd;
		this.user_nickname = user_nickname;
		this.user_email = user_email;
		this.user_pnum = user_pnum;
		this.user_name = user_name;
		this.user_num = user_num;
		this.user_birth = user_birth;
		this.user_sex = user_sex;
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

	public String getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	} 

	

}
