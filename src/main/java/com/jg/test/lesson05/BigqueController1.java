package com.jg.test.lesson05;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jg.test.lesson05.bo.WeatherBO;
import com.jg.test.lesson05.model.Weather;

@Controller
public class BigqueController1 {
	
	@Autowired
	public WeatherBO weatherBO;
	
	
	@GetMapping("/lesson05/ex06/show")
	public String showpage(	Model model) {
		List<Weather> weather = weatherBO.getWeather();
		
		model.addAttribute("weather", weather);
		return "lesson05/weathershow";
	}
	
	@GetMapping("/lesson05/ex06/put")
	public String putpage() {
		return "lesson05/weatherput";
	}
	
	
	@PostMapping("/lesson05/ex06/add")
	public String add(
			@RequestParam("date") String date
			,@RequestParam("weather") String weather
			,@RequestParam("temperatures") double temperatures 
			,@RequestParam("precipitation") double precipitation
			,@RequestParam("microDust") String microDust
			,@RequestParam("windSpeed") double windSpeed
			,Model model) {
		
		int count = weatherBO.addWeather(date,weather,temperatures,precipitation,microDust,windSpeed);
		
		return "redirect:/lesson05/ex06/show";
	}
}
