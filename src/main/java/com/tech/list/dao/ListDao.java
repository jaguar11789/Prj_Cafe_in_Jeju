package com.tech.list.dao;

import java.util.ArrayList;

import com.tech.cafein.dto.CafeBoardDto;
import com.tech.cafein.dto.CafeBoardImgDto;
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
	
	public ArrayList<CafeBoardDto> cafeboard(int rowStart, int rowEnd);

	public void writeboard(String ctitle, String ccontent, String cfile);

	public int selCnum();

	public void imgwrite(int cnum, String originFile, String changeFile);

	public void uphit(String cnum);

	public CafeBoardDto cafeboardview(String cnum);

	public ArrayList<CafeBoardDto> boardimg(String cnum);

	public int selectboardpage();

	public void boarddelete(String cnum);

	public void boardimgdelete(String cnum);

	public void boardmodify(String mtitle, String mcontent, String cnum);

}