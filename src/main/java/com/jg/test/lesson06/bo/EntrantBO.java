package com.jg.test.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jg.test.lesson06.dao.EntrantDAO;
import com.jg.test.lesson06.model.Entrant;

@Service
public class EntrantBO {
	
	@Autowired
	private EntrantDAO entrantDAO;
	
	public int addEntrant(String name, String license, int score){
		return entrantDAO.insertEntrant( name,license,score);
	}
	
	public List<Entrant> getEntrant(){
		return entrantDAO.selectEntrant();
	}
	
	public boolean isDuplicateName(String name) {
		int count = entrantDAO.selectCountName(name);
		if(count == 0) { //중복이 안된 상태
			return false;
		}
		else {
			return true;
		}
	}
	
	public int deleteEntrant(int id) {
		return entrantDAO.deleteEntrant(id);
	}
}
