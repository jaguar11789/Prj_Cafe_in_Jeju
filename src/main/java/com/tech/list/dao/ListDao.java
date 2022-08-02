package com.tech.list.dao;

import java.util.ArrayList;

import com.tech.cafein.dto.ReviewDto;

public interface ListDao {

	public void writereview(String title, String content, String file);

	public ArrayList<ReviewDto> cafereview();

}