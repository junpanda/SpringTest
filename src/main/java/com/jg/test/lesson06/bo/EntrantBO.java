package com.jg.test.lesson06.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jg.test.lesson06.dao.EntrantDAO;

@Service
public class EntrantBO {
	
	@Autowired
	private EntrantDAO entrantDAO;
	
	public int addEntrant(String name, String license, int score){
		return entrantDAO.insertEntrant(name,license,score);
	}
}
