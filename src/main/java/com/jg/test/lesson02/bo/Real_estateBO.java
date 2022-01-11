package com.jg.test.lesson02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jg.test.lesson02.dao.Real_estateDAO;
import com.jg.test.lesson02.model.Real_estate;

@Service
public class Real_estateBO {
	
	@Autowired
	private Real_estateDAO real_estateDAO;
	
	public Real_estate getReal_estate1(int id) {
		return real_estateDAO. selectReal_estate1(id);
	}
	
	public List<Real_estate> getReal_estate2(int rent) {
		return real_estateDAO. selectReal_estate2(rent);
	}
	
	public List<Real_estate> getReal_estate3(int area, int price) {
		return real_estateDAO. selectReal_estate3(area, price);
	}
	
	public int addReal_estate(int realtorId, String address, int area, String type, int price) {
		return real_estateDAO.insertReal_estate(realtorId, address, area, type, price);
	}
	
	public int addReal_estate2(int realtorId, String address, int area, String type, int price, int rentPrice) {
		return real_estateDAO.insertReal_estate2(realtorId, address, area, type, price,rentPrice);
	}
	
	public int updateReal_estate(int id, String type, int price) {
		return real_estateDAO.updateReal_estate(id,type,price);
	}
	
	public int deleteReal_estate(int id) {
		return real_estateDAO.deleteReal_estate(id);
	}
}
