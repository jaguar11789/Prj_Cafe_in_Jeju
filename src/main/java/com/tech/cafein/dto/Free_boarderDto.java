package com.tech.cafein.dto;

import java.sql.Date;

public class Free_boarderDto {
	private int fnum;
	private String ftitle;
	private String fid;
	private String fcontent;
	private Date fdate;
	private int fhit;
	private int fgroup;
	private int fstep;
	private int findent;
	private String ffile;
public Free_boarderDto() {

	// TODO Auto-generated constructor stub
}
public Free_boarderDto(int fnum, String ftitle,String fid,  String fcontent, Date fdate, int fhit, int fgroup,
		int fstep, int findent, String ffile) {
	super();
	this.fnum = fnum;
	this.ftitle = ftitle;
	this.fid = fid;
	this.fcontent = fcontent;
	this.fdate = fdate;
	this.fhit = fhit;
	this.fgroup = fgroup;
	this.fstep = fstep;
	this.findent = findent;
	this.ffile = ffile;
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
public int getFgroup() {
	return fgroup;
}
public void setFgroup(int fgroup) {
	this.fgroup = fgroup;
}
public int getFstep() {
	return fstep;
}
public void setFstep(int fstep) {
	this.fstep = fstep;
}
public int getFindent() {
	return findent;
}
public void setFindent(int findent) {
	this.findent = findent;
}
public String getFfile() {
	return ffile;
}
public void setFfile(String ffile) {
	this.ffile = ffile;
}

}
