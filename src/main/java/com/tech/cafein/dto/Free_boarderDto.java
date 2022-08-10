package com.tech.cafein.dto;

import java.sql.Date;

public class Free_boarderDto {
	private int fnum;
	private String fid;
	private String ftitle;
	private String fcontent;
	private Date fdate;
	private int fhit;
	private String ffile;
	
public Free_boarderDto(int fnum, String fid, String ftitle, String fcontent, Date fdate, int fhit, String ffile) {
		super();
		this.fnum = fnum;
		this.fid = fid;
		this.ftitle = ftitle;
		this.fcontent = fcontent;
		this.fdate = fdate;
		this.fhit = fhit;
		this.ffile = ffile;
	}
public Free_boarderDto() {
	// TODO Auto-generated constructor stub
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

}
