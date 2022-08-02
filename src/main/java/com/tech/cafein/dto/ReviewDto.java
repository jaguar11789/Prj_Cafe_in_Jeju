package com.tech.cafein.dto;

import java.sql.Date;

public class ReviewDto {
	private String title;
	private String id;
	private float score;
	private String content;
	private String img;
	private int reviewnum;
	private Date rdate;

	public ReviewDto() {
	}

	public ReviewDto(String title, String id, float score, String content, String img, int reviewnum, Date rdate) {
		super();
		this.title = title;
		this.id = id;
		this.score = score;
		this.content = content;
		this.img = img;
		this.reviewnum = reviewnum;
		this.rdate = rdate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public float getScore() {
		return score;
	}

	public void setScore(float score) {
		this.score = score;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getReviewnum() {
		return reviewnum;
	}

	public void setReviewnum(int reviewnum) {
		this.reviewnum = reviewnum;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

}
