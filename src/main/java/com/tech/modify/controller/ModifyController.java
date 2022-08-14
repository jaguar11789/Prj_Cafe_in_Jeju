package com.tech.modify.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.Enumeration;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
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

import com.tech.cafein.dto.UserInfoDto;
import com.tech.modify.dao.ModifyDao;

@Controller
@RequestMapping("/modify/*")
public class ModifyController {
	
	
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("business_modify")
	public String business_modify() {
		return "business_modify";
	}

	@RequestMapping("check_pwd_modify")
	public String check_pwd_modify() {
		return "check_pwd_modify";
	}

	@RequestMapping("userinfo_modify")
	public String userinfo_modify(HttpServletRequest request,HttpSession session, Model model) {
		session = request.getSession();
		//지금은 세션에 유저 아이디 저장됨 / 아이디도 유니크 키 줄거라 별 상관 없을거라고 생각은하지만 그래도 pk가져오는게 좋을듯?
		String userid=(String)session.getAttribute("id");
		
		ModifyDao dao=sqlSession.getMapper(ModifyDao.class);
		
		UserInfoDto dto=dao.userModifyView(userid);
		
		model.addAttribute("userinfo",dto);
		
		return "userinfo_modify";
	}

	@RequestMapping("modify_cafe")
	public String modify_cafe() {
		return "modify_cafe";
	}

	@RequestMapping("userpwd_modify")
	public String userpwd_modify() {
		return "userpwd_modify";
	}

	@RequestMapping("usersec_modify")
	public String usersec_modify() {
		return "usersec_modify";
	}

	@RequestMapping("user_modify_info")
	public String user_modify_info() {
		return "user_modify_info";
	}

	@RequestMapping("user_modify_pwd")
	public String user_modify_pwd() {
		return "user_modify_pwd";
	}

	@RequestMapping("user_modify_sec")
	public String user_modify_sec() {
		return "user_modify_sec";
	}

	@RequestMapping("usersec_modify_seccess")
	public String usersec_modify_seccess() {
		return "usersec_modify_seccess";
	}
	
	
	
	
	
	@RequestMapping("user_info_update")
	public String userinfoupdate(Model model, HttpSession session, HttpServletRequest request) throws Exception {
		
		
		//세션에서 유저 아이디 받기
		String userid=(String)session.getAttribute("id");
		ModifyDao dao = sqlSession.getMapper(ModifyDao.class);
		
		//name 속성의 이름 가져온다
		Enumeration<String> attrName = request.getParameterNames();
			//스트링 타입으로 변경해줌
			String name = attrName.nextElement();
			//파일 업로드 하는게 아니면 그냥 일반 실행
			String value = request.getParameter(name);
			
			if(value != null && value != ""){ //벨류값이 존재할때만 진행~
				dao.userinfoUpdate(userid,name,value);
				
			}
			
			System.out.println("name=" + name +" value = "+value);
					
		return "redirect:/modify/userinfo_modify";
	}
	
	@RequestMapping("user_info_userImgupdate")
	public String user_profileimg_update(Model model, HttpSession session, MultipartHttpServletRequest request) throws Exception {
		//프로필 사진 업데이트 부분만 따로 떼옴
		
		//세션에서 유저 아이디 받기
		String userid=(String)session.getAttribute("id");
		ModifyDao dao = sqlSession.getMapper(ModifyDao.class);
				
			
			//첨부된 파일 가져오기
			MultipartFile file=request.getFile("user_imgfile");

			
		if(!file.isEmpty()) { //파일이 비어있지 않다면
			//첨부파일의 파일명 가져오기
			String filename = file.getOriginalFilename();
			
			System.out.println(" 파일명 : "+filename);
			//업로드 경로
			String root = "C:\\javabigspring\\springwork22\\Cafe_in_Jeju\\src\\main\\webapp\\resources\\upload" + "\\"
					+ filename;
			
			//파일 업로드 시키기
			file.transferTo(new File(root));
			
			dao.userImgUpdate(userid,filename);				
			
		}
					
		return "redirect:/modify/userinfo_modify";
	}
	
	
	//유저 비밀번호 변경
	@RequestMapping(method = RequestMethod.POST, value =  "user_modify_pwd")
	public String user_pwd_modify(HttpServletRequest request, Model model, HttpSession session)
			throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException,
			InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {

		session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		
		System.out.println(user_id);
		String userpwd = request.getParameter("pwd");

		// 단방향 암호화처리(crypt)
		MessageDigest md = MessageDigest.getInstance("SHA-512");

		// 암호화할 데이터를 byte형 배열로 넣어준다. 예외발생해서 예외처리
		md.update(userpwd.getBytes("utf-8"));

		// md.digest() : 암호화된 데이터를 byte배열로 반환한다.
		// usershapwd db에 있는 2차 암호화된 user_shapwd를 의미 //user_pwd는 key값
		String usershapwd = Base64.getEncoder().encodeToString(md.digest()); // key값

		byte[] keyBytes = new byte[16];
		System.arraycopy(usershapwd.getBytes("utf-8"), 0, keyBytes, 0, keyBytes.length);
		// 비밀키 생성 (키에 사용할 byte형 배열과 알고리즘 이름을 지정한다.)
		SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");
		
		// Cipher 객체 생성 및 초기화 (예외처리)
		/*
		 * 알고리즘/모드/패딩 (AES/CBC/PKCS5Padding) - CBC(Cipher Block Chaining Mode) : 동일한 평문
		 * 블록과 암호문 블록의 쌍이 발생하지 않도록 이전단계의 암복호화한 결과를 현 단계에 사용하는 모드를 말한다. - Padding : CBC에서
		 * 작업을할 때 마지막 블록이 블록의 길이가 부족할 때 부족한 부분을 채워넣는 방식을 말한다.
		 */
		Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");

		// 초기화 벡터값 작성
		// 초기화 벡터(Initial Vector, IV) - 암호문이 패턴화되지 않도록 사용하는 데이터를 말한다.
		// 암호화 처리중 첫번째 블록은 암호화할 때 사용되는 값이다.
		String iv = usershapwd.substring(0, 16);
		byte[] ivBytes = new byte[16];
		System.arraycopy(iv.getBytes("utf-8"), 0, ivBytes, 0, ivBytes.length);

		// 암호를 옵션 종류에 맞게 초기화한다.
		// 옵션 종류: ENCRYPT_MODE(암호화모드), DECRYP_MODE(복호화모드)
		c.init(Cipher.ENCRYPT_MODE, keySpec, new IvParameterSpec(ivBytes));

		// 암호하할 데이터를 byte형 배열로 공급하여 암호화 작업을 수행한다
		byte[] encryptBytes = c.doFinal(userpwd.getBytes("utf-8"));
		userpwd = Base64.getEncoder().encodeToString(encryptBytes);

		ModifyDao dao = sqlSession.getMapper(ModifyDao.class);
		
		dao.userPwdUpdate(user_id,userpwd,usershapwd);
		
		
		return "user_modify_pwd";
	}
	
	//유저 탈퇴하기
	@RequestMapping("useeDelete")
	public String userDelete(HttpServletRequest request, HttpSession session) {
		//세션의 유저아이디 가져오기
		session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		
		ModifyDao dao = sqlSession.getMapper(ModifyDao.class);
		
		//이미 비번 체크하고 넘어와서 걍 세션 아이디로 유저정보 삭제 진행
		dao.userDelete(user_id);
		
		session.invalidate();
		
		
		return "usersec_modify_seccess";
	}
}
