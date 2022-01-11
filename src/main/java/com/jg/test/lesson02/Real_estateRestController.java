package com.jg.test.lesson02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jg.test.lesson02.bo.Real_estateBO;
import com.jg.test.lesson02.model.Real_estate;

@RestController
public class Real_estateRestController {
	
	@Autowired
	public Real_estateBO real_estateBO;
	
	@RequestMapping("/lesson03/test01/1")
	public Real_estate test01_1(
			
			@RequestParam("id") int id
			) {
		
		return real_estateBO.getReal_estate1(id);
		
	}
	
	@RequestMapping("/lesson03/test01/2")
	public List<Real_estate> test01_2(
			
			@RequestParam("rent") int rent
			) {
		
		return real_estateBO.getReal_estate2(rent);
		
	}
	
	@RequestMapping("/lesson03/test01/3")
	public List<Real_estate> test01_3(
			
			@RequestParam("area") int area
			,@RequestParam("price") int price
			) {
		
		return real_estateBO.getReal_estate3(area, price);
		
	}
	
	@RequestMapping("/lesson03/test02/1")
	public String test02_1() {
		int count = real_estateBO.addReal_estate(3,"푸르지용 리버 303동 1104호", 89 ,"매매", 100000);
		return "입력 결과" + count;
				
	}
	
	@RequestMapping("/lesson03/test02/2")
	public String test02_2(
			@RequestParam("realtorid") int realtorId
			) {
		int count = real_estateBO.addReal_estate2(realtorId,"쌍떼빌리버 오피스텔 814호", 45 ,"월세", 100000,120);
		return "입력 결과" + count;
	}
	
	@RequestMapping("/lesson03/test02/3")
	public String test02_3() {
		int count = real_estateBO.updateReal_estate(23,"전세",70000);
		return "수정 성공" + count;	
	}
	
	@RequestMapping("/lesson03/test02/4")
	public String test02_4(
			@RequestParam("id") int id
			) {
		int count = real_estateBO.deleteReal_estate(id);
		return "삭제 성공" + count;
	}
}
