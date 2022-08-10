package com.tech.cafein.dto;

public class CafeBoardImgDto {

	private int cbino;
	private int cnum;
	private String cborgfile;
	private String cbchgfile;

	public int getCbino() {
		return cbino;
	}

	public void setCbino(int cbino) {
		this.cbino = cbino;
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	public String getCborgfile() {
		return cborgfile;
	}

	public void setCborgfile(String cborgfile) {
		this.cborgfile = cborgfile;
	}

	public String getCbchgfile() {
		return cbchgfile;
	}

	public void setCbchgfile(String cbchgfile) {
		this.cbchgfile = cbchgfile;
	}

	public CafeBoardImgDto() {}

	public CafeBoardImgDto(int cbino, int cnum, String cborgfile, String cbchgfile) {
		super();
		this.cbino = cbino;
		this.cnum = cnum;
		this.cborgfile = cborgfile;
		this.cbchgfile = cbchgfile;
	}

}
