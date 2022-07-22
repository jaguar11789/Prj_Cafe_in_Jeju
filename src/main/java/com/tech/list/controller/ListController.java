package com.tech.list.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/list/*")
public class ListController {

	@RequestMapping("/main")
	public String main() {

		return "list/main";
	}

	@RequestMapping("/jeju_detail")
	public String jeju_detail() {

		return "list/jeju_detail";
	}

	@RequestMapping("/jocheon_detail")
	public String jocheon_detail() {

		return "list/jocheon_detail";
	}

	@RequestMapping("/joongmoon_detail")
	public String joongmoon_detail() {

		return "list/joongmoon_detail";
	}

	@RequestMapping("/namwon_detail")
	public String namwon_detail() {

		return "list/namwon_detail";
	}

	@RequestMapping("/sungsan_detail")
	public String sungsan_detail() {

		return "list/sungsan_detail";
	}

	@RequestMapping("/gujwa_detail")
	public String gujwa_detail() {

		return "list/gujwa_detail";
	}

	@RequestMapping("/aewol_detail")
	public String aewol_detail() {

		return "list/aewol_detail";
	}

	@RequestMapping("/hanlim_detail")
	public String hanlim_detail() {

		return "list/hanlim_detail";
	}

	@RequestMapping("/hangyong_detail")
	public String hangyong_detail() {

		return "list/hangyong_detail";
	}

	@RequestMapping("/daejung_detail")
	public String daejung_detail() {

		return "list/daejung_detail";
	}

	@RequestMapping("/anduck_detail")
	public String anduck_detail() {

		return "list/anduck_detail";
	}

	@RequestMapping("/seogipo_detail")
	public String seogipo_detail() {

		return "list/seogipo_detail";
	}

	@RequestMapping("/pyoseon_detail")
	public String pyoseon_detail() {

		return "list/pyoseon_detail";
	}

	@RequestMapping("/cafe_info_menu")
	public String cafe_info_menu() {

		return "list/cafe_info_menu";
	}

	@RequestMapping("/cafe_info_detail")
	public String cafe_info_detail() {

		return "list/cafe_info_detail";
	}

	@RequestMapping("/cafe_info_review")
	public String cafe_info_review() {

		return "list/cafe_info_review";
	}

	@RequestMapping("/cafe_info_write_review")
	public String cafe_info_write_review() {

		return "list/cafe_info_write_review";
	}
}
