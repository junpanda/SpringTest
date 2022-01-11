package com.jg.test.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jg.test.lesson04.dao.SellerDAO;
import com.jg.test.lesson04.model.Seller;

@Service
public class SellerBO {
	@Autowired
	private SellerDAO sellerDAO;
	
	public int addSeller(String nickname, String profileImageUrl, double temperature) {
		return sellerDAO.insertSeller(nickname, profileImageUrl, temperature);
	}
	public Seller getId(int id) {
		return sellerDAO.getSeller(id);
	}
}
