package com.tech.cafein.dto;

public class Free_Boarder_Img_Dto {

	private int fbino;
	private int fnum;
	private String fborgfile;
	private String fbchgfile;

	public Free_Boarder_Img_Dto() {
		// TODO Auto-generated constructor stub
	}

	public Free_Boarder_Img_Dto(int fbino, int fnum, String fborgfile, String fbchgfile) {
		super();
		this.fbino = fbino;
		this.fnum = fnum;
		this.fborgfile = fborgfile;
		this.fbchgfile = fbchgfile;
	}

	public int getFbino() {
		return fbino;
	}

	public void setFbino(int fbino) {
		this.fbino = fbino;
	}

	public int getFnum() {
		return fnum;
	}

	public void setFnum(int fnum) {
		this.fnum = fnum;
	}

	public String getFborgfile() {
		return fborgfile;
	}

	public void setFborgfile(String fborgfile) {
		this.fborgfile = fborgfile;
	}

	public String getFbchgfile() {
		return fbchgfile;
	}

	public void setFbchgfile(String fbchgfile) {
		this.fbchgfile = fbchgfile;
	}
}
