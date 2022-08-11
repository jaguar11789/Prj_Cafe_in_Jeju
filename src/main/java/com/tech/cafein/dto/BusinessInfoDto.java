package com.tech.cafein.dto;



import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BusinessInfoDto {

	private String business_id;
	private String business_pwd;
	private String business_shapwd;
	private String business_nickname;
	private String business_email;
	private String business_pnum;
	private String business_name;
	private String business_reginum;
	private String business_birth;
	private String business_sex;
	private String business_num;
	

	public BusinessInfoDto() {
	}


	public BusinessInfoDto(String business_id, String business_pwd, String business_shapwd, String business_nickname,
			String business_email, String business_pnum, String business_name, String business_reginum,
			String business_birth, String business_sex, String business_num) {
		super();
		this.business_id = business_id;
		this.business_pwd = business_pwd;
		this.business_shapwd = business_shapwd;
		this.business_nickname = business_nickname;
		this.business_email = business_email;
		this.business_pnum = business_pnum;
		this.business_name = business_name;
		this.business_reginum = business_reginum;
		this.business_birth = business_birth;
		this.business_sex = business_sex;
		this.business_num = business_num;
	}

	
	

	
}
