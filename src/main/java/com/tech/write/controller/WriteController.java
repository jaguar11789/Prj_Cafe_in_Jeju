package com.tech.write.controller;

import java.io.File;
import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tech.list.dao.ListDao;
import com.tech.write.dao.WriteDao;

@Controller
@RequestMapping("/write/*")
public class WriteController {

	@Autowired
	private SqlSession session;

	@RequestMapping("/register_cafe")
	public String register_cafe() {
		return "register_cafe";
	}

	@RequestMapping("/write_review")
	public String write_review() {
		return "write_review";
	}

	@RequestMapping("/register_cafemenu")
	public String register_cafemenu() {
		return "register_cafemenu";
	}

	@RequestMapping("/register_cafechange")
	public String register_cafechange() {
		return "register_cafechange";
	}

	@RequestMapping("/caferegistersucess")
	public String caferegistersucess(MultipartHttpServletRequest mtfRequest, Model model) throws Exception {
		System.out.println("왔니");

		WriteDao writedao = session.getMapper(WriteDao.class);

		String cafename = mtfRequest.getParameter("cafname");
		String cafecondent = mtfRequest.getParameter("cafcondent");
		String addr1 = mtfRequest.getParameter("addr1");////
		String addr2 = mtfRequest.getParameter("addr2");
		String addr3 = mtfRequest.getParameter("addr3");////
		String cafetnum = mtfRequest.getParameter("cafcnum");
		String cafepnum = mtfRequest.getParameter("cafpnum");
		String[] cafeconvenience = mtfRequest.getParameterValues("cafeconvenience");
		String cafesns = mtfRequest.getParameter("sns");////
		String cafephoto = mtfRequest.getParameter("cafephoto");
		String cafedetail = mtfRequest.getParameter("opentime");
		String[] cafetag = mtfRequest.getParameterValues("cafetag");
		String cafebusnum = mtfRequest.getParameter("busnum");
		String cafeceoname = mtfRequest.getParameter("ceoname");
		MultipartFile cafebuslicense = mtfRequest.getFile("cafebuslicense");
		MultipartFile cafepermit = mtfRequest.getFile("cafepermit");

		if (cafebuslicense == null) {
			cafebuslicense = null;
		}
		if (cafepermit == null) {
			cafepermit = null;
		}

		String filename1 = cafebuslicense.getOriginalFilename();
		String root1 = "C:\\javabigspring\\springwork22\\Cafe_in_Jeju\\src\\main\\webapp\\resources\\upload" + "\\"
				+ filename1;
		String filename2 = cafepermit.getOriginalFilename();
		String root2 = "C:\\javabigspring\\springwork22\\Cafe_in_Jeju\\src\\main\\webapp\\resources\\upload" + "\\"
				+ filename2;

		cafebuslicense.transferTo(new File(root1));
		cafepermit.transferTo(new File(root2));

		writedao.caferegister(cafename, cafecondent, "nullfile", cafetnum, cafepnum, "nullfile", cafesns, "nullfile",
				cafedetail, "nullfile", cafebusnum, cafeceoname, filename1, filename2);

		int cafe_num = writedao.selNum();

		String root = "C:\\javabigspring\\springwork22\\Cafe_in_Jeju\\src\\main\\webapp\\resources\\upload";
		List<MultipartFile> fileList = mtfRequest.getFiles("cafephoto");
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
					writedao.imgwrite(cafe_num, originFile, changeFile);
					System.out.println("rebrdimgtb write 성공!!!");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		writedao.cafeaddr(addr1, addr2, addr3, cafe_num);

		for (String cafecon : cafeconvenience) {

			writedao.cafeconvenience(cafecon, cafe_num);
		}

		for (String cafet : cafetag) {

			writedao.cafetag(cafet, cafe_num);
		}

		return "register_cafemenu";
	}

	@RequestMapping("/register_menu")
	public String register_menu(MultipartHttpServletRequest mtfRequest, Model model) throws Exception {

		System.out.println("wwww");

		WriteDao writedao = session.getMapper(WriteDao.class);

		int cafe_num = writedao.selNum();
		

		String cmenu[] = mtfRequest.getParameterValues("cmenu");
		
		String root = "C:\\javabigspring\\springwork22\\Cafe_in_Jeju\\src\\main\\webapp\\resources\\upload";
		List<MultipartFile> imgList = mtfRequest.getFiles("cimg");

		System.out.println("eee");
		
		
		for(int i=0; i<imgList.size(); i++) {
			MultipartFile il = imgList.get(i);
			
			String originFile = il.getOriginalFilename();
			System.out.println("빈 오리진 파일 확인 : " + originFile);
			long longtime = System.currentTimeMillis();
			String changeFile = longtime + "_" + il.getOriginalFilename();
			String pathfile = root + "\\" + changeFile;
			try {
				if (!originFile.equals("")) { // >>>>>>>>>>>>>>>>>>>아무런 파일을 선택하지 않았을때 예외처리
					il.transferTo(new File(pathfile));// path장소 수정필요
					System.out.println("다중 업로드 성공!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
					for(int j=i; j >=i; j--) {
						String cmname = cmenu[j];
						writedao.menuimgwrite(cmname,originFile, changeFile, cafe_num);
						System.out.println("카페이름 : " + cmname + "오리진파일 : "+originFile+" 체인지 파일 : "+
								changeFile + "카페번호 : "+ cafe_num);
					}
					
					System.out.println("rebrdimgtb write 성공!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		
//		for (String cmname : cmenu) {
//
//		}
//			
//			
//		for (MultipartFile il : imgList ) {
//			
//			String originFile = il.getOriginalFilename();
//			System.out.println("빈 오리진 파일 확인:" + originFile);
//			long longtime = System.currentTimeMillis();
//			String changeFile = longtime + "_" + il.getOriginalFilename();
//			String pathfile = root + "\\" + changeFile;
//			try {
//				if (!originFile.equals("")) { // >>>>>>>>>>>>>>>>>>>아무런 파일을 선택하지 않았을때 예외처리
//					il.transferTo(new File(pathfile));// path장소 수정필요
//					System.out.println("다중 업로드 성공!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
//					
//					writedao.menuimgwrite(cmname,originFile, changeFile, cafe_num);
//					
//					System.out.println("rebrdimgtb write 성공!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}

		System.out.println("rerere");
		return "business_mypage";
	}

}
