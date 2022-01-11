package com.jg.test.lesson06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jg.test.lesson06.bo.EntrantBO;

@Controller
public class SubmitController {
	
	@Autowired
	private EntrantBO entrantBO;
	
	@GetMapping("/lesson06/test01/add_page")
	public String test01() {
		return "lesson06/add";
	}
	
	@ResponseBody
	@PostMapping("/lesson06/test/add")
	public String test02(
			@RequestParam("name") String name,
			@RequestParam("license") String license,
			@RequestParam("score") int score) {
		int count = entrantBO.addEntrant(name, license, score);
		
		return "완료"; 
	}
}
