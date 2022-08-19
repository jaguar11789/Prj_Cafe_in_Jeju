package com.tech.modify.controller;

import java.io.UnsupportedEncodingException;
import java.net.http.HttpRequest;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tech.cafein.dto.UserInfoDto;
import com.tech.login.dao.LoginDao;
import com.tech.modify.dao.ModifyDao;

@RestController
public class ModifyRestController {
	
	
	@Autowired
	private SqlSession sqlsession;
	
	@PostMapping("/modify/pwdCheck")
	public String pwdCheck(String pwd,HttpSession session,HttpServletRequest request)
			throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException,
			InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {

		String result = "";
		
		ModifyDao dao = sqlsession.getMapper(ModifyDao.class);
		
		
		//이미 세션에 들어있는 유저 정보 가져오기
		session = request.getSession();
		String user_id=(String)session.getAttribute("id");
		System.out.println(user_id);
		System.out.println(pwd);

		
			// 복호화처리 (decrytp)
			UserInfoDto userinfodto = dao.getUserPwd(user_id);

			byte[] keyBytes = new byte[16];
			System.arraycopy(userinfodto.getUser_shapwd().getBytes("utf-8"), 0, keyBytes, 0, keyBytes.length);
			SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");
			Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
			String iv = userinfodto.getUser_shapwd().substring(0, 16);
			byte[] ivBytes = new byte[16];
			System.arraycopy(iv.getBytes("utf-8"), 0, ivBytes, 0, ivBytes.length);
			c.init(Cipher.DECRYPT_MODE, keySpec, new IvParameterSpec(ivBytes));
			// 복원할 암호화된 문자열을 decoding한 byte형 배열을 구한다.
			byte[] byteStr = Base64.getDecoder().decode(userinfodto.getUser_pwd());
			// 암호화된 byte 배열을 원래의 데이터로 복원한 후 문자열로 변환하여 반환한다.
			String decryptPwd = new String(c.doFinal(byteStr), "utf-8");

			if (decryptPwd.equals(pwd)) {
				result = "pass";
			}

		

		return result;
	}
	
}
