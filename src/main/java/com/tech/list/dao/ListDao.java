package com.tech.list.dao;

import java.util.ArrayList;

import com.tech.cafein.dto.ReviewDto;

public interface ListDao {

	public void writereview(String title, String content, String file);

	public ArrayList<ReviewDto> cafereview(int rowStart, int rowEnd);

	public float total();

	public void writereview(String title, String content, String filename, int starsocre);

	public int countreview();

	public float fivestar();

	public float fourstar();

	public float threestar();

	public float twostar();

	public float onestar();

	public int selectBoardTotCount();

}