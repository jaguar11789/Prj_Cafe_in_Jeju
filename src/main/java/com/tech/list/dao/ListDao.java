package com.tech.list.dao;

import java.util.ArrayList;

import com.tech.cafein.dto.CafeBoardDto;
import com.tech.cafein.dto.Free_Boarder_Img_Dto;
import com.tech.cafein.dto.Free_boarderDto;
import com.tech.cafein.dto.ReviewDto;
import com.tech.cafein.dto.UserInfoDto;
import com.tech.cafein.dto.free_replyDto;

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

	
	//자유게시판 부분
	public ArrayList<Free_boarderDto> freeboarder();

	public int selfnum();
		
	public void imgwrite1(int fnum, String originFile, String changeFile);

	public void freeboarderdelete(String fnum);

	public void freeboarderimgdelete(String fnum);

	public void fuphit(String fnum);

	public Free_boarderDto freeboardercontent(String fnum);

	public ArrayList<Free_Boarder_Img_Dto> getFreeImg(String fnum);


	public void freemodify(String mtitle, String mcontent, String fnum);

	 public free_replyDto f_reply(String fnum);

	public void free_userinfo(String user_num);

	public UserInfoDto userinfo();


	public void free_write(String ftitle, String fcontent, String string);

	public UserInfoDto user_info(); 

	//자유게시판 댓글 부분
	
}