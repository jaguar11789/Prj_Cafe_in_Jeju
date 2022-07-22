package com.tech.write.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/write/*")
public class WriteController {

	@RequestMapping("/register_cafe")
	public String register_cafe() {
		return "write/register_cafe";
	}
	@RequestMapping("/write_review")
	public String write_review() {
		return "write/write_review";
	}
}
