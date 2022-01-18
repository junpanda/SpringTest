package com.jg.test.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jg.test.lesson06.ReserveCheck;
import com.jg.test.lesson06.model.Booking;

@Repository
public interface BookingDAO {
	public List<Booking> selectBooking();
	
	public int deleteBooking(@Param("id") int id);
	
	public int insertBooking(
			@Param("name") String name,
			@Param("date") String date,
			@Param("day") int day,
			@Param("headcount") int headcount,
			@Param("phoneNumber") String phoneNumber
			);
	
	
	
	public ReserveCheck checkReserve(
			@Param("name")String name,
			@Param("phoneNumber") String phoneNumber);
	
}
