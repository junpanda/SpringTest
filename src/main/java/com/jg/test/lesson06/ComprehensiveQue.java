package com.jg.test.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jg.test.lesson06.bo.BookingBO;
import com.jg.test.lesson06.model.Booking;

@Controller
public class ComprehensiveQue {
	
	@Autowired
	private BookingBO bookingBO;
	
	
	@GetMapping("/lesson06/test03/listpage")
	public String ex01(Model model) {
		
		List <Booking> booking = bookingBO.getBooking();
		
		model.addAttribute("booking", booking);
		
		return "lesson06/listpage";
	}
	@ResponseBody
	@PostMapping("/lesson06/test03/delete")
	public String ex02(@RequestParam(value="id") int id) {
		
		int delete =bookingBO.deleteBooking(id);
		if(delete == 0) {
			return "fail";
		}
		else {
			return "success";
		}
	}
	
	@GetMapping("/lesson06/test03/reservepage")
	public String ex03() {
		return "lesson06/reservepage";
	}
	
	@ResponseBody
	@PostMapping("/lesson06/test03/add")
	public String ex04(
			@RequestParam("name") String name,
			@RequestParam("date") String date,
			@RequestParam("day") int day,
			@RequestParam("headcount") int headcount,
			@RequestParam("phoneNumber") String phoneNumber) {
		int count = bookingBO.addBooking(name, date, day, headcount, phoneNumber);
		
		
		if(count ==1) {
			return "success";
		}
		else {
			return "fail";
		}
	}
	@GetMapping("/lesson06/test03/mainpage")
	public String ex05() {
		return "lesson06/mainpage";
	}
	
	/*@ResponseBody
	@GetMapping("/lesson06/test03/checkreserve")
	public Map<String,Object> test04(
			@RequestParam("name") String name,
			@RequestParam("phoneNumber") String phoneNumber) {
		Map<String,Object> result = new HashMap<>();
		ReserveCheck check = bookingBO.checkReserve(name, phoneNumber);
		
		
		
		if (check == null){
			result.put("name", null);
			result.put("phoneNumber", null);
		}
		else {
			result.put("name",check.name);
			result.put("date",check.date);
			result.put("day",check.day);
			result.put("headcount",check.headcount);
			result.put("state",check.state);
			result.put("phoneNumber", check.phoneNumber);
		}
		
		return result;
	}*/
	
	@ResponseBody
	@GetMapping("/lesson06/test03/checkreserve")
	public ReserveCheck test05(
			@RequestParam("name") String name,
			@RequestParam("phoneNumber") String phoneNumber) {
		ReserveCheck check = bookingBO.checkReserve(name, phoneNumber);
		
		return check;
	}
}
