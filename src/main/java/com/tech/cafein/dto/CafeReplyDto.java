package com.tech.cafein.dto;

public class CafeReplyDto {

	private int cnum;
	private String rcontent;
	private int rnum;
	
	public CafeReplyDto() {
		// TODO Auto-generated constructor stub
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public CafeReplyDto(int cnum, String rcontent, int rnum) {
		super();
		this.cnum = cnum;
		this.rcontent = rcontent;
		this.rnum = rnum;
	}

	

}
