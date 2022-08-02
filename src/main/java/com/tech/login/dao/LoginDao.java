package com.tech.login.dao;

public interface LoginDao {

	int loginUserCheck(String user_id, String user_pwd);

	int loginBusinessCheck(String business_id, String business_pwd);

}
