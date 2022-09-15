package com.tech.cafein.dto;

import java.sql.Date;

public class Free_boarderDto {
	private int fnum;
	private String user_num;
	private String ftitle;
	private String fcontent;
	private Date fdate;
	private int fhit;
	private String ffile;
	private Free_Boarder_Img_Dto freeboardimgdto;
	public Free_boarderDto() {
		// TODO Auto-generated constructor stub
	}
	public Free_boarderDto(int fnum, String user_num, String ftitle, String fcontent, Date fdate, int fhit,
			String ffile, Free_Boarder_Img_Dto freeboardimgdto) {
		super();
		this.fnum = fnum;
		this.user_num = user_num;
		this.ftitle = ftitle;
		this.fcontent = fcontent;
		this.fdate = fdate;
		this.fhit = fhit;
		this.ffile = ffile;
		this.freeboardimgdto = freeboardimgdto;
	}
	public int getFnum() {
		return fnum;
	}
	public void setFnum(int fnum) {
		this.fnum = fnum;
	}
	public String getUser_num() {
		return user_num;
	}
	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}
	public String getFtitle() {
		return ftitle;
	}
	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}
	public String getFcontent() {
		return fcontent;
	}
	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}
	public Date getFdate() {
		return fdate;
	}
	public void setFdate(Date fdate) {
		this.fdate = fdate;
	}
	public int getFhit() {
		return fhit;
	}
	public void setFhit(int fhit) {
		this.fhit = fhit;
	}
	public String getFfile() {
		return ffile;
	}
	public void setFfile(String ffile) {
		this.ffile = ffile;
	}
	public Free_Boarder_Img_Dto getFreeboardimgdto() {
		return freeboardimgdto;
	}
	public void setFreeboardimgdto(Free_Boarder_Img_Dto freeboardimgdto) {
		this.freeboardimgdto = freeboardimgdto;
	}
	
}