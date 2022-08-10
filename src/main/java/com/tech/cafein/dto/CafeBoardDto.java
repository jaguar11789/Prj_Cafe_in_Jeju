package com.tech.cafein.dto;

import java.sql.Date;

public class CafeBoardDto {

	private int cnum;
	private String ctitle;
	private String ccontent;
	private String user_id;
	private Date cdate;
	private int chit;
	private String cfile;
	private int cafe_num;
	private CafeBoardImgDto cafeboardimgdto;

	
	
	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public Date getCdate() {
		return cdate;
	}

	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

	public int getChit() {
		return chit;
	}

	public void setChit(int chit) {
		this.chit = chit;
	}

	public String getCfile() {
		return cfile;
	}

	public void setCfile(String cfile) {
		this.cfile = cfile;
	}

	public int getCafe_num() {
		return cafe_num;
	}

	public void setCafe_num(int cafe_num) {
		this.cafe_num = cafe_num;
	}

	public CafeBoardImgDto getCafeboardimgdto() {
		return cafeboardimgdto;
	}

	public void setCafeboardimgdto(CafeBoardImgDto cafeboardimgdto) {
		this.cafeboardimgdto = cafeboardimgdto;
	}

	public CafeBoardDto() {
	}

	public CafeBoardDto(int cnum, String ctitle, String ccontent, String user_id, Date cdate, int chit, String cfile,
			int cafe_num, CafeBoardImgDto cafeboardimgdto) {
		super();
		this.cnum = cnum;
		this.ctitle = ctitle;
		this.ccontent = ccontent;
		this.user_id = user_id;
		this.cdate = cdate;
		this.chit = chit;
		this.cfile = cfile;
		this.cafe_num = cafe_num;
		this.cafeboardimgdto = cafeboardimgdto;
	}

	

}
