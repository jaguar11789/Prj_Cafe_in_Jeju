package com.tech.login.dao;

import com.tech.cafein.dto.BusinessInfoDto;
import com.tech.cafein.dto.UserInfoDto;

public interface LoginDao {

	int loginUserCheck(String user_id);

	int loginBusinessCheck(String business_id);

	UserInfoDto getUserPwd(String user_id);

	BusinessInfoDto getBusinessPwd(String business_id);
}
