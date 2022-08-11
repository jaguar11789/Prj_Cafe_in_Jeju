package com.tech.login.controller;

import java.io.UnsupportedEncodingException;
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

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tech.cafein.dto.BusinessInfoDto;
import com.tech.cafein.dto.UserInfoDto;
import com.tech.login.dao.LoginDao;

@RestController
public class LoginRestController {

	@Autowired
	private SqlSession sqlsession;
	
	@PostMapping("/login/loginUserCheck")
	public String loginCheck(String user_id, String user_pwd) throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {
		
		System.out.println("user_id : " + user_id);
		
		
		String result = "";
		LoginDao logindao = sqlsession.getMapper(LoginDao.class);
		
		//복호화처리 (decrytp) 
		if(logindao.loginUserCheck(user_id) == 1) {
			//userid를 들고가서 db에서 select 해와야함
			UserInfoDto userinfodto = logindao.getUserPwd(user_id);
			
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
	         
	         if(decryptPwd.equals(user_pwd)) {
	        	 result = "true";
	         }
			
		}
		
		return result;
	}
	
	
	@PostMapping("/login/loginBusinessCheck")
	public String loginBusinessCheck(String business_id, String business_pwd) throws UnsupportedEncodingException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException, IllegalBlockSizeException, BadPaddingException {

		System.out.println("business_id : " + business_id);

		String result = "";

		LoginDao logindao = sqlsession.getMapper(LoginDao.class);

		//business복호화처리 (decrypt)

		if (logindao.loginBusinessCheck(business_id) == 1) {
			//businessid를 들고가서 db에서 select
			BusinessInfoDto businessinfodto = logindao.getBusinessPwd(business_id);
			
			byte[] keyBytes = new byte[16];
			System.arraycopy(businessinfodto.getBusiness_shapwd().getBytes("utf-8"), 0, keyBytes, 0, keyBytes.length);
			SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");
			Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
			String iv = businessinfodto.getBusiness_shapwd().substring(0, 16);
			byte[] ivBytes = new byte[16];
			System.arraycopy(iv.getBytes("utf-8"), 0, ivBytes, 0, ivBytes.length);
			c.init(Cipher.DECRYPT_MODE, keySpec, new IvParameterSpec(ivBytes));
			//복원할 암호화된 문자열을 decoding한 byte형 배열을 구한다.
			byte[] byteStr = Base64.getDecoder().decode(businessinfodto.getBusiness_pwd());
			//암호화된 byte 배열을 원래의 데이터로 복원한 후 문자열로 변환하여 반환한다.
			String decryptPwd = new String(c.doFinal(byteStr), "utf-8");
			
			
			if(decryptPwd.equals(business_pwd)) {
				result = "true";				
			}
			System.out.println(result);
		}
		return result;
	}

}
