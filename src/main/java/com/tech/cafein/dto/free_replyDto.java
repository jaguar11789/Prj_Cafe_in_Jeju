package com.tech.cafein.dto;

import java.sql.Date;

public class free_replyDto {
//	CREATE TABLE f_reply (
//			fno number not null,
//			fnum number not null,
//			fid	varchar(30),
//			fcontent varchar(1000) not null,
//			fDate Date not null,
//		constraint f_fnum_fk foreign key(fnum) references freeboarder(fnum)
//		on delete cascade);
	private int fno;
	private int fnum;
	private String fid;
	private String fcontent;
	private Date fdate;

	public free_replyDto() {
		// TODO Auto-generated constructor stub
	}

	public free_replyDto(int fno, int fnum, String fid, String fcontent, Date fdate) {
		super();
		this.fno = fno;
		this.fnum = fnum;
		this.fid = fid;
		this.fcontent = fcontent;
		this.fdate = fdate;
	}

	public int getFno() {
		return fno;
	}

	public void setFno(int fno) {
		this.fno = fno;
	}

	public int getFnum() {
		return fnum;
	}

	public void setFnum(int fnum) {
		this.fnum = fnum;
	}

	public String getFid() {
		return fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
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
	
}
