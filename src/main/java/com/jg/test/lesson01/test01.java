package com.jg.test.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class test01 {
	
	@RequestMapping("/lesson01/test01/1")
	public String printString() {
		return "<h1>테스트 프로젝트 완성</h>";
	}
	
	
	@RequestMapping("/lesson01/test01/2")
	public Map<String, Integer> printMap(){
		Map<String, Integer> map = new HashMap<>();
		map.put("국어:", 80);
		map.put("수학:", 90);
		map.put("영어:", 85);
		
		return map;
		
	}
}
