package com.tech.login.dao;

import com.tech.cafein.dto.BusinessInfoDto;

public interface LoginDao {

	int loginUserCheck(String user_id, String user_pwd);

	int loginBusinessCheck(String business_id, String business_pwd);
	
	BusinessInfoDto getBusinessInfo(String business_id,String business_pwd);
}
