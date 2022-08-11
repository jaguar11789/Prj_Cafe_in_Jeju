package com.tech.cafein.dto;

import lombok.Getter;
import lombok.Setter;

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

	public String getBusiness_id() {
		return business_id;
	}

	public void setBusiness_id(String business_id) {
		this.business_id = business_id;
	}

	public String getBusiness_pwd() {
		return business_pwd;
	}

	public void setBusiness_pwd(String business_pwd) {
		this.business_pwd = business_pwd;
	}

	public String getBusiness_shapwd() {
		return business_shapwd;
	}

	public void setBusiness_shapwd(String business_shapwd) {
		this.business_shapwd = business_shapwd;
	}

	public String getBusiness_nickname() {
		return business_nickname;
	}

	public void setBusiness_nickname(String business_nickname) {
		this.business_nickname = business_nickname;
	}

	public String getBusiness_email() {
		return business_email;
	}

	public void setBusiness_email(String business_email) {
		this.business_email = business_email;
	}

	public String getBusiness_pnum() {
		return business_pnum;
	}

	public void setBusiness_pnum(String business_pnum) {
		this.business_pnum = business_pnum;
	}

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}

	public String getBusiness_reginum() {
		return business_reginum;
	}

	public void setBusiness_reginum(String business_reginum) {
		this.business_reginum = business_reginum;
	}

	public String getBusiness_birth() {
		return business_birth;
	}

	public void setBusiness_birth(String business_birth) {
		this.business_birth = business_birth;
	}

	public String getBusiness_sex() {
		return business_sex;
	}

	public void setBusiness_sex(String business_sex) {
		this.business_sex = business_sex;
	}

	public String getBusiness_num() {
		return business_num;
	}

	public void setBusiness_num(String business_num) {
		this.business_num = business_num;
	}

}
