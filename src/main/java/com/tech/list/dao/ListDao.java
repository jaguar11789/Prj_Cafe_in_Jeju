package com.tech.list.dao;

import java.util.ArrayList;

import com.tech.cafein.dto.Free_boarderDto;
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

	public ArrayList<Free_boarderDto> freeboarder();

	public int selfnum();

	public void free_write(String ftitle, String fcontent, String string);

	public void imgwrite(int fnum, String originFile, String changeFile);

}