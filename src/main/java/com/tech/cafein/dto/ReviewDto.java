package com.tech.cafein.dto;

public class ReviewDto {
	private String title;
	private String id;
	private float score;
	private String content;
	private String img;
	
	public ReviewDto() {
	}
	
	
	
	public ReviewDto(String title, String id, float score, String content, String img) {
		super();
		this.title = title;
		this.id = id;
		this.score = score;
		this.content = content;
		this.img = img;
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
	
	
}
