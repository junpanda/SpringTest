package com.jg.test.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jg.test.lesson04.bo.RealtorBO;
import com.jg.test.lesson04.model.Realtor;

@Controller
public class RealtorController {
	
	@Autowired
	public RealtorBO realtorBO;
	
	@RequestMapping("/lesson04/test02/1")
	public String viewrealtor() {		
		return "lesson04/Realtor";
	}
	
	@RequestMapping(path="/lesson04/test02/add_realtor", method = RequestMethod.POST)
	@PostMapping("/lsseon04/test02/add_realtor")
	public String addrealtor(
			@ModelAttribute Realtor realtor,
			Model model
			) {
		int count = realtorBO.addRealtor(realtor);
		model.addAttribute("result", realtor);
		
		return "lesson04/realtorInfo";
	}
	
}
