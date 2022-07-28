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
