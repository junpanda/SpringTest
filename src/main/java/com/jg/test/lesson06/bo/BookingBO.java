package com.jg.test.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jg.test.lesson06.ReserveCheck;
import com.jg.test.lesson06.dao.BookingDAO;
import com.jg.test.lesson06.model.Booking;

@Service
public class BookingBO {
	
	@Autowired
	private BookingDAO bookingDAO;
	
	public List<Booking> getBooking(){
		return bookingDAO.selectBooking();
	}
	
	public int deleteBooking(int id) {
		return bookingDAO.deleteBooking(id);
	}
	public int addBooking(String name, String date, int day, int headcount, String phoneNumber){
		return bookingDAO.insertBooking( name, date, day, headcount, phoneNumber);
	}
	
	public ReserveCheck checkReserve(String name, String phoneNumber) {
		return bookingDAO.checkReserve(name, phoneNumber);
	}
}
