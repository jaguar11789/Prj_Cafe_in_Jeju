package com.tech.modify.dao;

import com.tech.cafein.dto.UserInfoDto;

public interface ModifyDao {

	UserInfoDto getUserPwd(String user_id);
	
	UserInfoDto userModifyView(String userid);

	void userinfoUpdate(String userid, String name, String value);

	void userImgUpdate(String userid, String filename);

	void userPwdUpdate(String user_id, String userpwd, String usershapwd);

	void userDelete(String user_id);

}
