package com.jg.test.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jg.test.lesson04.bo.SellerBO;
import com.jg.test.lesson04.model.Seller;

@Controller
public class SellerController {
	@Autowired
	public SellerBO sellerBO;
	
	@RequestMapping("/lesson04/test01/1")
	public String SellerView() {
		return "/lesson04/Seller";
	}
	
	@ResponseBody
	@RequestMapping("/lesson04/test01/add_seller")
	public String add_seller(
			@RequestParam("nickname")String nickname,
			@RequestParam("profileImageUrl")String profileImageUrl,
			@RequestParam("temperature")double temperature
			) {
		int count = sellerBO.addSeller(nickname, profileImageUrl, temperature);
		return "닉네임"+nickname+"주소"+profileImageUrl+"온도"+temperature;
	}
	
	@RequestMapping("/lesson04/test01/seller_info")
	public String getseller(
			Model model,
			@RequestParam(value = "id", required = false) Integer id
			) {
		
		if(id==null) {
			Seller seller = sellerBO.getId(1);
			model.addAttribute("result", seller);
		}
		else {
			Seller seller = sellerBO.getId(id);
			model.addAttribute("result", seller);
		}
		
		
		
		return "lesson04/seller_info";
	}
}
