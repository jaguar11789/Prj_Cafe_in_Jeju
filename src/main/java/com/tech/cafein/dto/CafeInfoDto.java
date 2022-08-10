package com.tech.cafein.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CafeInfoDto {
	private String cafe_name;
	private String cafe_comment;
	private String cafe_addr;
	private String cafe_telnum;
	private String cafe_pnum;
	private String cafe_area;
	private String cafe_sns;
	private String cafe_picture;
	private String cafe_detailcom;
	private String cafe_tag;
	private String business_reginum;
	private String business_name;
	private String cafe_b_registration;
	private String cafe_b_permit;
	
	

	public String getCafe_name() {
		return cafe_name;
	}

	public void setCafe_name(String cafe_name) {
		this.cafe_name = cafe_name;
	}

	public String getCafe_comment() {
		return cafe_comment;
	}

	public void setCafe_comment(String cafe_comment) {
		this.cafe_comment = cafe_comment;
	}

	public String getCafe_addr() {
		return cafe_addr;
	}

	public void setCafe_addr(String cafe_addr) {
		this.cafe_addr = cafe_addr;
	}

	public String getCafe_telnum() {
		return cafe_telnum;
	}

	public void setCafe_telnum(String cafe_telnum) {
		this.cafe_telnum = cafe_telnum;
	}

	public String getCafe_pnum() {
		return cafe_pnum;
	}

	public void setCafe_pnum(String cafe_pnum) {
		this.cafe_pnum = cafe_pnum;
	}

	public String getCafe_area() {
		return cafe_area;
	}

	public void setCafe_area(String cafe_area) {
		this.cafe_area = cafe_area;
	}

	public String getCafe_sns() {
		return cafe_sns;
	}

	public void setCafe_sns(String cafe_sns) {
		this.cafe_sns = cafe_sns;
	}

	public String getCafe_picture() {
		return cafe_picture;
	}

	public void setCafe_picture(String cafe_picture) {
		this.cafe_picture = cafe_picture;
	}

	public String getCafe_detailcom() {
		return cafe_detailcom;
	}

	public void setCafe_detailcom(String cafe_detailcom) {
		this.cafe_detailcom = cafe_detailcom;
	}

	public String getCafe_tag() {
		return cafe_tag;
	}

	public void setCafe_tag(String cafe_tag) {
		this.cafe_tag = cafe_tag;
	}

	public String getBusiness_reginum() {
		return business_reginum;
	}

	public void setBusiness_reginum(String business_reginum) {
		this.business_reginum = business_reginum;
	}

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}

	public String getCafe_b_registration() {
		return cafe_b_registration;
	}

	public void setCafe_b_registration(String cafe_b_registration) {
		this.cafe_b_registration = cafe_b_registration;
	}

	public String getCafe_b_permit() {
		return cafe_b_permit;
	}

	public void setCafe_b_permit(String cafe_b_permit) {
		this.cafe_b_permit = cafe_b_permit;
	}

	public CafeInfoDto() {
		// TODO Auto-generated constructor stub
	}

	public CafeInfoDto(String cafe_name, String cafe_comment, String cafe_addr, String cafe_telnum, String cafe_pnum,
			String cafe_area, String cafe_sns, String cafe_picture, String cafe_detailcom, String cafe_tag,
			String business_reginum, String business_name, String cafe_b_registration, String cafe_b_permit) {
		super();
		this.cafe_name = cafe_name;
		this.cafe_comment = cafe_comment;
		this.cafe_addr = cafe_addr;
		this.cafe_telnum = cafe_telnum;
		this.cafe_pnum = cafe_pnum;
		this.cafe_area = cafe_area;
		this.cafe_sns = cafe_sns;
		this.cafe_picture = cafe_picture;
		this.cafe_detailcom = cafe_detailcom;
		this.cafe_tag = cafe_tag;
		this.business_reginum = business_reginum;
		this.business_name = business_name;
		this.cafe_b_registration = cafe_b_registration;
		this.cafe_b_permit = cafe_b_permit;
	}
	
}
