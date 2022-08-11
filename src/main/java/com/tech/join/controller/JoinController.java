package com.tech.join.controller;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tech.join.dao.JoinDao;

@Controller
@RequestMapping("/join/*")
public class JoinController {
	
	private String userid1 = "redirect:joinsucess_user";

	@Autowired
	private SqlSession session;

	@RequestMapping("/join")
	public String join() {

		return "join";
	}

	@RequestMapping("/business_join")
	public String business_join() {

		return "business_join";
	}

	@RequestMapping("/joinsucess_business")
	public String joinsucess_business() {

		return "joinsucess_business";
	}

	@RequestMapping("/user_join")
	public String user_join() {

		return "user_join";
	}

	/*@RequestMapping("/joinsucess_user")
	public String joinsucess_user(HttpServletRequest request, Model model) {

		
		JoinDao joindao = session.getMapper(JoinDao.class);
		UserInfoDto userdto = joindao.joinsucess_user();
		
		return "join/joinsucess_user";
	}*/
	
	 @RequestMapping(method = RequestMethod.POST, value = "/userjoinsucess")
	   public String sucessjoinuser(HttpServletRequest request, Model model) throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
	      

	      String userid = request.getParameter("userid");
	      String userpwd = request.getParameter("userpwd");
	      String username = request.getParameter("username");
	      String usernickname = request.getParameter("usernickname");
	      String userpnum = request.getParameter("userpnum");
	      String useremail = request.getParameter("useremail");
	      //Data userbirth = transFormat.parse(request.getParameter("userbirth"));	      
	      String userbirth = request.getParameter("userbirth");
	      String usersex = request.getParameter("usersex");
	      
	    //단방향 암호화처리(crypt)
	      MessageDigest md = MessageDigest.getInstance("SHA-512");
	      
         // 암호화할 데이터를 byte형 배열로 넣어준다. 예외발생해서 예외처리
         md.update(userpwd.getBytes("utf-8"));
         
         // md.digest() : 암호화된 데이터를 byte배열로 반환한다.
         //usershapwd db에 있는 2차 암호화된 user_shapwd를 의미 //user_pwd는 key값 
        String usershapwd = Base64.getEncoder().encodeToString(md.digest()); //key값
         
        byte[] keyBytes = new byte[16];
        System.arraycopy(usershapwd.getBytes("utf-8"), 0, keyBytes, 0, keyBytes.length);
      //비밀키 생성 (키에 사용할 byte형 배열과 알고리즘 이름을 지정한다.)
        SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");
        
        // Cipher 객체 생성 및 초기화 (예외처리)
        /*
            알고리즘/모드/패딩 (AES/CBC/PKCS5Padding)
            - CBC(Cipher Block Chaining Mode) : 동일한 평문 블록과 암호문 블록의 쌍이 발생하지 않도록 이전단계의 암복호화한 결과를 
            현 단계에 사용하는 모드를 말한다.
            - Padding : CBC에서 작업을할 때 마지막 블록이 블록의 길이가 부족할 때 부족한 부분을 채워넣는 방식을 말한다.
         */
        Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
        
        // 초기화 벡터값 작성
        // 초기화 벡터(Initial Vector, IV) - 암호문이 패턴화되지 않도록 사용하는 데이터를 말한다.
        //                           암호화 처리중 첫번째 블록은 암호화할 때 사용되는 값이다.
        String iv = usershapwd.substring(0, 16);
        byte[] ivBytes = new byte[16];
        System.arraycopy(iv.getBytes("utf-8"), 0, ivBytes, 0, ivBytes.length);
        
        // 암호를 옵션 종류에 맞게 초기화한다.
        // 옵션 종류: ENCRYPT_MODE(암호화모드), DECRYP_MODE(복호화모드)
        c.init(Cipher.ENCRYPT_MODE,	keySpec, new IvParameterSpec(ivBytes));
        
        // 암호하할 데이터를 byte형 배열로 공급하여 암호화 작업을 수행한다
        byte[] encryptBytes = c.doFinal(userpwd.getBytes("utf-8"));
        userpwd = Base64.getEncoder().encodeToString(encryptBytes);
	      
	      
	      JoinDao joindao = session.getMapper(JoinDao.class);
	      joindao.sucessjoinuser(userid, userpwd, usershapwd, usernickname,  
	  			useremail, userpnum, username, userbirth, usersex);
	      
	      model.addAttribute("user_id",userid);
	      
//	      return "redirect:joinsucess_user";
	      return "joinsucess_user";
	   }
	 
	 @RequestMapping(method = RequestMethod.POST, value = "/businessjoinsucess")
	 public String sucessjoinbusiness(HttpServletRequest request, Model model) throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		 
		 
		 String businessid = request.getParameter("businessid");
		 String businesspwd = request.getParameter("businesspwd");	     
		 String businessname = request.getParameter("businessname");
		 String businessnickname = request.getParameter("businessnickname");
		 String businesspnum = request.getParameter("businesspnum");
		 String businessreginum = request.getParameter("businessreginum");
		 String businessemail = request.getParameter("businessemail");
		 String businessbirth = request.getParameter("businessbirth");
	      String businesssex = request.getParameter("businesssex");
		 
		//business user의 단방향 암호화처리(crypt)
		 MessageDigest md = MessageDigest.getInstance("SHA-512");
		 
		 //암호화할 데이터를 byte형 배열로 넣어준다. 예외발생해서 예외처리
		 md.update(businesspwd.getBytes("utf-8"));
		 
		 //md.digest() : 암호화된 데이터를 byte배열로 반환한다.
		 //businessshapwd db에 있는 2차 암호화된 business_shapwd를 의미 , business_pwd는 key값\
		 String businessshapwd = Base64.getEncoder().encodeToString(md.digest()); //key값
		 
		 byte[] keyBytes = new byte[16];
		 System.arraycopy(businessshapwd.getBytes("utf-8"), 0, keyBytes, 0, keyBytes.length);
		 //비밀키 생성 (키에 사용할 byte형 배열과 알고리즘 이름을 지정.)
		 SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");
		 
		 Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
		 
		 //초기화 벡터값(Initial Vector, IV) - 암호문이 패턴화되지 않도록 사용하는 데이터를 말한다.
		 // 암호화 처리중 첫번째 블록은 암호화할 때 사용되는 값이다.
		 String iv = businessshapwd.substring(0, 16);
		 byte[] ivBytes = new byte[16];
		 System.arraycopy(iv.getBytes("utf-8"), 0, ivBytes, 0, ivBytes.length);
		 
		 //암호를 옵션 종류에 맞게 초기화
		 //옵션 종류 : ENCRYPT_MODE(암호화모드), DECRYPT_MODE(복호화모드)
		 c.init(Cipher.ENCRYPT_MODE, keySpec, new IvParameterSpec(ivBytes));
		 
		 //암호화할 데이터를 byte배열로 공급하여 암호화 작업 수행
		 byte[] encryptBytes = c.doFinal(businesspwd.getBytes("utf-8"));
		 businesspwd = Base64.getEncoder().encodeToString(encryptBytes);
		 
		 JoinDao joindao = session.getMapper(JoinDao.class);
		 joindao.sucessjoinbusiness(businessid, businesspwd, businessshapwd, businessnickname,
					businessemail, businesspnum, businessname, businessreginum, businessbirth, businesssex);
		 
		 model.addAttribute("business_id",businessid);
		 
//	      return "redirect:joinsucess_user";
		 return "joinsucess_business";
	 }
}
