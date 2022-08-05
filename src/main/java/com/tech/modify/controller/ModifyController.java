package com.tech.modify.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/modify/*")
public class ModifyController {

	@RequestMapping("business_modify")
	public String business_modify() {
		return "business_modify";
	}

	@RequestMapping("check_pwd_modify")
	public String check_pwd_modify() {
		return "check_pwd_modify";
	}

	@RequestMapping("userinfo_modify")
	public String userinfo_modify() {
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
}
