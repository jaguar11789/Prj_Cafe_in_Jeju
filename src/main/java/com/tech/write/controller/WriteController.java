package com.tech.write.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.tech.join.dao.JoinDao;
import com.tech.list.dao.ListDao;
import com.tech.write.dao.WriteDao;

@Controller
@RequestMapping("/write/*")
public class WriteController {

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

		System.out.println("=========caferegistersucess()지나가유~~=========");

		String attachPath = "resources\\upload\\";
		String uploadPath = mtfRequest.getSession().getServletContext().getRealPath("/");
		System.out.println("uploadPath : " + uploadPath);
		String path = uploadPath + attachPath;

		MultipartRequest req = new MultipartRequest(mtfRequest, path, 1024 * 1024 * 20, "utf-8",
				new DefaultFileRenamePolicy());

		String cafename = mtfRequest.getParameter("cafename");
		String cafecondent = mtfRequest.getParameter("cafecondent");
		String cafeaddr[] = mtfRequest.getParameterValues("cafeaddr");
		String cafetnum[] = mtfRequest.getParameterValues("cafetnum");
		String cafepnum[] = mtfRequest.getParameterValues("cafepnum");
		String cafeconvenience[] = mtfRequest.getParameterValues("cafeconvenience");
		String cafesns = mtfRequest.getParameter("cafesns");
		List<MultipartFile> cafephoto = mtfRequest.getFiles("cafephoto");
		String cafedetail = mtfRequest.getParameter("cafedetail");
		String cafetag[] = mtfRequest.getParameterValues("cafetag");
		String cafeceoname = mtfRequest.getParameter("cafeceoname");
		String cafebusnum[] = mtfRequest.getParameterValues("cafebusnum");
		List<MultipartFile> cafebuslicense = mtfRequest.getFiles("cafebuslicense");
		List<MultipartFile> cafepermit = mtfRequest.getFiles("cafepermit");
		
//		if (cafephoto == null) {
//			cafephoto = "";
//		}
//		if (cafebuslicense == null) {
//			cafebuslicense = "";
//		}
//		if (cafepermit == null) {
//			cafepermit = "";
//		}

		String caddr = String.join(" ", cafeaddr);
		System.out.println(caddr);

		String ctnum = String.join("-", cafetnum);
		System.out.println("ctnum : " + ctnum);

		String cpnum = String.join("-", cafepnum);
		System.out.println("ctnum : " + cpnum);

		String cconvenience = String.join(",", cafeconvenience);
		System.out.println("ctnum : " + cconvenience);

		String ctag = String.join(",", cafetag);
		System.out.println("ctnum : " + ctag);
		String cbusnum = String.join("-", cafebusnum);
		System.out.println("ctnum : " + cbusnum);

		WriteDao writedao = session.getMapper(WriteDao.class);

		writedao.registercafeinfo(cafename, cafecondent, caddr, ctnum, cpnum, cconvenience, cafesns, cafephoto,
				cafedetail, ctag, cafeceoname, cbusnum, cafebuslicense, cafepermit);

		return "register_cafemenu";
	}

}
