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
	@RequestMapping("user_modify")
	public String user_modify() {
		return "modify/user_modify";
	}
	@RequestMapping("modify_cafe")
	public String modify_cafe() {
		return "modify/modify_cafe";
	}
}
