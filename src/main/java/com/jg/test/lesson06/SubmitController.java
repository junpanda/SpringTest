package com.jg.test.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jg.test.lesson06.bo.EntrantBO;
import com.jg.test.lesson06.model.Entrant;

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
		
		if(count ==1) {
			return "success";
		}
		else {
			return "fail";
		}
	}
	
	@GetMapping("/lesson06/test/view")
	public String test03(Model model) {
		List<Entrant> entrant = entrantBO.getEntrant();
		
		model.addAttribute("entrant", entrant);
		return "lesson06/view";
	}
	
	@ResponseBody
	@GetMapping("/lesson06/test/duplicate_name")
	public Map<String,String> test04(@RequestParam("name") String name) {
		Map<String,String> result = new HashMap<>();
		
		if(entrantBO.isDuplicateName(name)) {
			result.put("isDuplicate", "true");
		}
		else {
			result.put("isDuplicate", "false");
		}
		return result;
	}
	
	@ResponseBody
	@PostMapping("/lesson06/test/delete")
	public String test05(@RequestParam(value="id") int id) {
		
		int delete =entrantBO.deleteEntrant(id);
		if(delete == 1) {
			return "success";
		}
		else {
			return "fail";
		}
	}
}
