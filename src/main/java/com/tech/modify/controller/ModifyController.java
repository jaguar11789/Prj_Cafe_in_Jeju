package com.tech.modify.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/modify/*")
public class ModifyController {

	@RequestMapping("business_modify")
	public String business_modify() {
		return "modify/business_modify";
	}

	@RequestMapping("check_pwd_modify")
	public String check_pwd_modify() {
		return "modify/check_pwd_modify";
	}

	@RequestMapping("userinfo_modify")
	public String userinfo_modify() {
		return "modify/userinfo_modify";
	}

	@RequestMapping("modify_cafe")
	public String modify_cafe() {
		return "modify/modify_cafe";
	}

	@RequestMapping("userpwd_modify")
	public String userpwd_modify() {
		return "modify/userpwd_modify";
	}

	@RequestMapping("usersec_modify")
	public String usersec_modify() {
		return "modify/usersec_modify";
	}

	@RequestMapping("user_modify_info")
	public String user_modify_info() {
		return "modify/user_modify_info";
	}

	@RequestMapping("user_modify_pwd")
	public String user_modify_pwd() {
		return "modify/user_modify_pwd";
	}

	@RequestMapping("user_modify_sec")
	public String user_modify_sec() {
		return "modify/user_modify_sec";
	}

	@RequestMapping("usersec_modify_seccess")
	public String usersec_modify_seccess() {
		return "modify/usersec_modify_seccess";
	}
}
