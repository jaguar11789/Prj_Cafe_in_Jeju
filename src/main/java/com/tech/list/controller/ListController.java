package com.tech.list.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.cafein.dto.ReviewDto;
import com.tech.list.dao.ListDao;
import com.tech.cafeinfo.vopage.SearchVO;

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

		ListDao listdao = session.getMapper(ListDao.class);

		model.addAttribute("board", listdao.cafeboard());

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

	/*
	 * @RequestMapping("/writereview") public String writereview(HttpServletRequest
	 * request, Model model) { System.out.println("======write()======"); try {
	 * String attachPath = "resources\\upload\\"; String uploadPath =
	 * request.getSession().getServletContext().getRealPath("/");
	 * System.out.println("uploadPath :" + uploadPath); String path = uploadPath +
	 * attachPath;
	 * 
	 * System.out.println("지나가유~!!!!");
	 * 
	 * MultipartRequest req = // MultipartRequest이거로 write_view로 보내서 받을 때도
	 * MultipartRequest로 받아야 된다 new MultipartRequest(request, path, 1024 * 1024 *
	 * 20, "utf-8", new DefaultFileRenamePolicy());// 임포트확인
	 * 
	 * System.out.println("multipart지나가유~~!!!!!"); // MultipartRequest는 파일 이름이 같으면
	 * 변화를 줘서 저장을 하는 기능이 있다 String title = req.getParameter("reviewtitle"); //
	 * String id = req.getParameter("id"); // String score =
	 * req.getParameter("score"); String content =
	 * req.getParameter("reviewcontent"); String file =
	 * req.getFilesystemName("reviewphoto");
	 * 
	 * if (file == null) { file = ""; } ListDao listdao =
	 * session.getMapper(ListDao.class); listdao.writereview(title, content ,file);
	 * 
	 * System.out.println("받아옴~!!!!");
	 * 
	 * } catch (Exception e) { e.getMessage(); } return "redirect:cafe_info_review";
	 * }
	 */

	@RequestMapping("/writereview")
	public String wrtiereivew(MultipartHttpServletRequest request, Model model) throws Exception {

//      String attachPath = "resources\\upload\\";
//      String uploadPath = request.getSession().getServletContext().getRealPath("/");
//      System.out.println("uploadPath :" + uploadPath);
//      String path = uploadPath + attachPath;
//      
//      System.out.println("지나가유~!!!!");
//      
//      MultipartRequest req = // MultipartRequest이거로 write_view로 보내서 받을 때도 MultipartRequest로 받아야 된다
//            new MultipartRequest(request, path, 1024 * 1024 * 20, "utf-8", new DefaultFileRenamePolicy());// 임포트확인

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
		String root = "C:\\javabigspring\\springwork22\\Cafe_in_Jeju\\src\\main\\webapp\\resources\\upload" + "\\"
				+ filename;

		file.transferTo(new File(root));// transferTo -> 파일 업로드

		System.out.println("filename : " + filename);

		System.out.println("file 없음?");
		ListDao listdao = session.getMapper(ListDao.class);
		listdao.writereview(title, content, filename, starsocre);
		System.out.println("받음");

		return "redirect:cafe_info_review";
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
	@RequestMapping("/cafe_info_boardview")
	public String boardview() {
		
		return "cafe_info_boardview";
	}

}