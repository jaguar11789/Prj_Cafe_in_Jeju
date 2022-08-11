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

	

}
