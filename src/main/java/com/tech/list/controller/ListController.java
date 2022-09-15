package com.tech.list.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tech.cafein.dto.CafeBoardDto;
import com.tech.cafein.dto.Free_Boarder_Img_Dto;
import com.tech.cafein.dto.Free_boarderDto;
import com.tech.cafein.dto.UserInfoDto;
import com.tech.cafein.dto.free_replyDto;
import com.tech.cafeinfo.vopage.SearchVO;
import com.tech.list.dao.ListDao;

@Controller
@RequestMapping("/list/*")
public class ListController {

	@Autowired
	private SqlSession session;

	@RequestMapping("/main")
	public String main() {

		return "main";
	}
	/*
	 * @RequestMapping("/main") public String main2() {
	 * 
	 * return "list/main"; }
	 */

	@RequestMapping("/jeju_detail")
	public String jeju_detail() {

		return "jeju_detail";
	}

	@RequestMapping("/jocheon_detail")
	public String jocheon_detail() {

		return "jocheon_detail";
	}

	@RequestMapping("/joongmoon_detail")
	public String joongmoon_detail() {

		return "joongmoon_detail";
	}

	@RequestMapping("/namwon_detail")
	public String namwon_detail() {

		return "namwon_detail";
	}

	@RequestMapping("/sungsan_detail")
	public String sungsan_detail() {

		return "sungsan_detail";
	}

	@RequestMapping("/gujwa_detail")
	public String gujwa_detail() {

		return "gujwa_detail";
	}

	@RequestMapping("/aewol_detail")
	public String aewol_detail() {

		return "aewol_detail";
	}

	@RequestMapping("/hanlim_detail")
	public String hanlim_detail() {

		return "hanlim_detail";
	}

	@RequestMapping("/hangyong_detail")
	public String hangyong_detail() {

		return "hangyong_detail";
	}

	@RequestMapping("/daejung_detail")
	public String daejung_detail() {

		return "daejung_detail";
	}

	@RequestMapping("/anduck_detail")
	public String anduck_detail() {

		return "anduck_detail";
	}

	@RequestMapping("/seogipo_detail")
	public String seogipo_detail() {

		return "seogipo_detail";
	}

	@RequestMapping("/pyoseon_detail")
	public String pyoseon_detail() {

		return "pyoseon_detail";
	}

	@RequestMapping("/cafe_info_menu")
	public String cafe_info_menu() {

		return "cafe_info_menu";
	}

	@RequestMapping("/cafe_info_detail")
	public String cafe_info_detail() {

		return "cafe_info_detail";
	}

	@RequestMapping("/cafe_info_writeboard")
	public String cafe_info_writeboard() {

		return "cafe_info_writeboard";
	}

	@RequestMapping("/cafe_info_board")
	public String cafe_info_board(HttpServletRequest request, SearchVO searchVO, Model model) {

		String strPage = request.getParameter("page");
		System.out.println("page1>>>>>> : " + strPage);
//		null 검사
		if (strPage == null)
			strPage = "1";
		System.out.println("page2>>>>>> : " + strPage);
		int page = Integer.parseInt(strPage);
		searchVO.setPage(page);

		ListDao listdao = session.getMapper(ListDao.class);
		int total2 = listdao.selectboardpage();

		System.out.println("전체 페이지 : " + total2);

		searchVO.pageCalculate(total2);

		int rowStart = searchVO.getRowStart();
		int rowEnd = searchVO.getRowEnd();

		System.out.println("첫 : " + rowStart);
		System.out.println("끝 : " + rowEnd);

		model.addAttribute("board", listdao.cafeboard(rowStart, rowEnd));
		model.addAttribute("searchVo", searchVO);

		return "cafe_info_board";
	}

	@RequestMapping("/cafe_info_review")
	public String cafe_info_review(HttpServletRequest request, SearchVO searchVO, Model model) {

		System.out.println("============cafe_info_review()===============");

		ListDao listdao = session.getMapper(ListDao.class);

		float total = listdao.total();
		float avgscore = total * 20;

		int countreview = listdao.countreview();

		float fivestar = listdao.fivestar();
		float fourstar = listdao.fourstar();
		float threestar = listdao.threestar();
		float twostar = listdao.twostar();
		float onestar = listdao.onestar();

		float fivepercent = Math.round((fivestar / countreview) * 100);
		float fourpercent = Math.round((fourstar / countreview) * 100);
		float threepercent = Math.round((threestar / countreview) * 100);
		float twopercent = Math.round((twostar / countreview) * 100);
		float onepercent = Math.round((onestar / countreview) * 100);

		model.addAttribute("avgscore", avgscore);
		model.addAttribute("total", total);

		model.addAttribute("countreview", countreview);

		model.addAttribute("fivepercent", fivepercent);
		model.addAttribute("fourpercent", fourpercent);
		model.addAttribute("threepercent", threepercent);
		model.addAttribute("twopercent", twopercent);
		model.addAttribute("onepercent", onepercent);

		System.out.println(fivepercent + "2323");

		/* paging */
		// listservice에서 dtos로 받았지만 여기선 list로 받겠다

		String strPage = request.getParameter("page");
		System.out.println("page1>>>>>> : " + strPage);
//		null 검사
		if (strPage == null)
			strPage = "1";
		System.out.println("page2>>>>>> : " + strPage);
		int page = Integer.parseInt(strPage);
		searchVO.setPage(page);

		int total2 = listdao.selectBoardTotCount();

		searchVO.pageCalculate(total2);

		int rowStart = searchVO.getRowStart();
		int rowEnd = searchVO.getRowEnd();

		model.addAttribute("review", listdao.cafereview(rowStart, rowEnd));

		model.addAttribute("totRowcnt", total);
		model.addAttribute("searchVo", searchVO);

		return "cafe_info_review";
	}

	@RequestMapping("/cafe_info_write_review")
	public String cafe_info_write_review() {

		return "cafe_info_write_review";
	}

	@RequestMapping("/writereview")
	public String wrtiereivew(MultipartHttpServletRequest request, Model model) throws Exception {

		String star = request.getParameter("rating");
		String title = request.getParameter("reviewtitle");
		String content = request.getParameter("reviewcontent");
		MultipartFile file = request.getFile("reviewphoto");

		if (file == null) {
			file = null;
		}
		System.out.println("file : " + file);
		int starsocre = Integer.parseInt(star);

		System.out.println(starsocre + "별점임");

		String filename = file.getOriginalFilename();
		String root = "C:\\javabigspring\\TeamProject\\Cafe_in_Jeju\\src\\main\\webapp\\resources\\upload" + "\\"
				+ filename;

		file.transferTo(new File(root));// transferTo -> 파일 업로드

		System.out.println("filename : " + filename);

		System.out.println("file 없음?");
		ListDao listdao = session.getMapper(ListDao.class);
		listdao.writereview(title, content, filename, starsocre);
		System.out.println("받음");

		return "redirect:cafe_info_review";
	}

	// 자유게시판부분
	// 자유게시판 목록 불러오기, 페이징 처리부분
	@RequestMapping("/free_boarder")
	public String free_boarder(HttpServletRequest request, SearchVO searchVO, Model model) {
		ListDao listdao = session.getMapper(ListDao.class);
		System.out.println("ssss");

		model.addAttribute("free_boarder", listdao.freeboarder());

		return "free_boarder";
	}

	@RequestMapping("/free_boarder_write")
	public String free_boarder_write1() { // 자유게시판 글쓰기 뷰단으로 화면전환

		return "free_boarder_write";
	}

	// 자유게시판 글쓰기 기능
	@RequestMapping("/boarderwrite")
	public String free_boarder_write(HttpSession Session, MultipartHttpServletRequest request, Model model) throws Exception {

		//세션에서 유저 아이디 받기
//	      String user_num=(String)Session.getAttribute("user_num");
//	      ModifyDao dao = sqlSession.getMapper(ModifyDao.class);
		String user_num = request.getParameter("user_num");
		String ftitle = request.getParameter("ftitle");
		String fcontent = request.getParameter("fcontent");


		System.out.println("=============ctitle = " + ftitle + "==============");
		System.out.println("=============user_num = " + user_num + "==============");
		System.out.println("=============ccontent = " + fcontent + "==============");
		
		ListDao listdao = session.getMapper(ListDao.class);
		UserInfoDto user_info = listdao.user_info();
		model.addAttribute("user_info",user_info);
		
		listdao.free_write(ftitle, fcontent, "nullfile");
		listdao.free_userinfo(user_num);
		
		int fnum = listdao.selfnum();
		String root = "C:\\javabigspring\\teamproject\\Prj_Cafe_in_Jeju\\src\\main\\webapp\\resources\\upload";
		List<MultipartFile> fileList = request.getFiles("ffile");

		for (MultipartFile mf : fileList) {
			String originFile = mf.getOriginalFilename();
			System.out.println("빈 오리진 파일 확인:" + originFile);
			long longtime = System.currentTimeMillis();
			String changeFile = longtime + "_" + originFile;
			String pathfile = root + "\\" + changeFile;
			try {
				if (!originFile.equals("")) { // >>>>>>>>>>>>>>>>>>>아무런 파일을 선택하지 않았을때 예외처리
					mf.transferTo(new File(pathfile));// path장소 수정필요
					System.out.println("다중 업로드 성공!!!");
					listdao.imgwrite1(fnum, originFile, changeFile);
					System.out.println("rebrdimgtb write 성공!!!");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:free_boarder";
	}

	// 자유게시판 글 보여주기
	@RequestMapping("/free_boarder_content")
	public String free_boarder_content(HttpServletRequest request, Model model) {

		String fnum = request.getParameter("fnum");

		ListDao listdao = session.getMapper(ListDao.class);
		System.out.println(fnum + "eeee");
		
		//조회수
		listdao.fuphit(fnum);
		// 글 가져오기
		Free_boarderDto freeboarderdto = listdao.freeboardercontent(fnum);

		// 글번호의 이미지 가져오기
		ArrayList<Free_Boarder_Img_Dto> imgdto = listdao.getFreeImg(fnum);

		model.addAttribute("freeboarderdto", freeboarderdto);
		model.addAttribute("images", imgdto);

		//리뷰 가져오기
		free_replyDto freereplydto = listdao.f_reply(fnum);
		
		model.addAttribute("freereplydto",freereplydto);
		
		return "free_boarder_content";

	}

	// 자유게시판 글 삭제
	@RequestMapping("/freeboarderdelete")
	public String freeboarderdelete(HttpServletRequest request, Model model) {
		String fnum = request.getParameter("fnum");

		ListDao listdao = session.getMapper(ListDao.class);

		listdao.freeboarderimgdelete(fnum);
		listdao.freeboarderdelete(fnum);

		return "redirect:free_boarder";

	}

	// 자유게시판 글 수정부분
	@RequestMapping("/free_boarder_modify")
	public String free_boarder_modify(HttpServletRequest request, Model model) {

		String fnum = request.getParameter("fnum");
		String user_num = request.getParameter("user_num");
		String ftitle = request.getParameter("ftitle");
		String fcontent = request.getParameter("fcontent");

		System.out.println(fnum+"+++++++++++++++++++++");
		System.out.println(user_num+"+++++++++++++++++++++");

		// 글 가져오기

		model.addAttribute("fnum", fnum);
		model.addAttribute("user_num", user_num);
		model.addAttribute("ftitle", ftitle);
		model.addAttribute("fcontent", fcontent);

		return "free_boarder_modify";
	}
	@RequestMapping(method = RequestMethod.POST, value = "/freemodify")
	public String freeviewmodify(HttpServletRequest request, Model model) {
		
		String mtitle = request.getParameter("mtitle");
		String mcontent = request.getParameter("mcontent");
		String fnum = request.getParameter("fnum");

		ListDao listdao = session.getMapper(ListDao.class);
		listdao.freemodify(mtitle, mcontent, fnum);
		
		
		return "redirect:free_boarder_content?fnum=" + fnum;
	}
	

	@RequestMapping("/cafe_info_boardview")
	public String boardview(HttpServletRequest request, Model model) {

		String cnum = request.getParameter("cnum");

		ListDao listdao = session.getMapper(ListDao.class);

		listdao.uphit(cnum);

		CafeBoardDto cafeboarddto = listdao.cafeboardview(cnum);
		model.addAttribute("cafeboardview", cafeboarddto);

		ArrayList<CafeBoardDto> boarddto = listdao.boardimg(cnum);

		model.addAttribute("boardimg", boarddto);

		return "cafe_info_boardview";
	}

	@RequestMapping("/boarddelete")
	public String boarddelete(HttpServletRequest request, Model model) {

		String cnum = request.getParameter("cnum");

		ListDao listdao = session.getMapper(ListDao.class);

		listdao.boardimgdelete(cnum);
		listdao.boarddelete(cnum);

		return "redirect:cafe_info_board";
	}

	@RequestMapping("/writeboard")
	public String writeboard(MultipartHttpServletRequest mtfRequest, Model model) throws Exception {

		String ctitle = mtfRequest.getParameter("ctitle");
		String ccontent = mtfRequest.getParameter("ccontent");

		System.out.println("=============ctitle = " + ctitle + "==============");
		System.out.println("=============ccontent = " + ccontent + "==============");

		ListDao listdao = session.getMapper(ListDao.class);
		listdao.writeboard(ctitle, ccontent, "nullfile");

		int cnum = listdao.selCnum();

		String root = "C:\\javabigspring\\springwork22\\Cafe_in_Jeju\\src\\main\\webapp\\resources\\upload";
		List<MultipartFile> fileList = mtfRequest.getFiles("cfile");

		for (MultipartFile mf : fileList) {
			String originFile = mf.getOriginalFilename();
			System.out.println("빈 오리진 파일 확인:" + originFile);
			long longtime = System.currentTimeMillis();
			String changeFile = longtime + "_" + mf.getOriginalFilename();
			String pathfile = root + "\\" + changeFile;
			try {
				if (!originFile.equals("")) { // >>>>>>>>>>>>>>>>>>>아무런 파일을 선택하지 않았을때 예외처리
					mf.transferTo(new File(pathfile));// path장소 수정필요
					System.out.println("다중 업로드 성공!!!");
					listdao.imgwrite(cnum, originFile, changeFile);
					System.out.println("rebrdimgtb write 성공!!!");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return "redirect:cafe_info_board";
	}


}