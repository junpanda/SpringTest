package com.jg.test.lesson01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class test02 {
	
	@RequestMapping("/lesson01/test02/1")
	public List<Map<String, Object>> printList(){
		List<Map<String, Object>> listmap = new ArrayList<Map<String, Object>>();
		
		Map<String, Object> map1 = new HashMap<String, Object>();
		
		map1.put("rate", 15);
		map1.put("director", "봉준호");
		map1.put("time", 131);
		map1.put("title", "기생충");
		listmap.add(map1);
		
		Map<String, Object> map2 = new HashMap<String, Object>();
		
		map2.put("rate", 0);
		map2.put("director", "로베르토 베니니");
		map2.put("time", 166);
		map2.put("title", "인생은 아름다워");
		listmap.add(map2);
		
		Map<String, Object> map3 = new HashMap<String, Object>();
		
		map3.put("rate", 12);
		map3.put("director", "크리스토퍼 놀란");
		map3.put("time", 147);
		map3.put("title", "인셉션");
		listmap.add(map3);
		
		Map<String, Object> map4 = new HashMap<String, Object>();
		
		map4.put("rate", 15);
		map4.put("director", "윤종빈");
		map4.put("time", 133);
		map4.put("title", "범죄와의 전쟁: 나쁜놈들 전성시대");
		listmap.add(map4);
		
		
		return listmap;
	}
	
	@RequestMapping("/lesson01/test02/2")
	public List<data> dataList(){
		List<data> dataList = new ArrayList<data>();
		
		data content = new data();
		content.setTitle("안녕하세요 가입인사 드립니다.");
	    content.setUser("hagulu");
	    content.setContent("안녕하세요. 가입했어요.");
	    dataList.add(content);
	    
		
		return dataList;	
	}
	
	@RequestMapping("/lesson01/test02/3")
	public ResponseEntity<data> entity(){
		data content = new data();
		content.setTitle("안녕하세요 가입인사 드립니다.");
	    content.setUser("hagulu");
	    content.setContent("안녕하세요. 가입했어요.");
	    
	    ResponseEntity<data> entity = new ResponseEntity<>(content, HttpStatus.INTERNAL_SERVER_ERROR);
		
	    
	    return entity;
	}
	
}
