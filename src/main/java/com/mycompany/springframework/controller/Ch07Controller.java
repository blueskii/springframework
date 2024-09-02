package com.mycompany.springframework.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch07")
public class Ch07Controller {
	@GetMapping("/objectScope1")
	public String objectScope1(HttpServletRequest request, 
							HttpSession session, Model model) {
		//Request 사용 범위(요청과 헤더 사이에 사용할 수 있는 범위)
		request.setAttribute("key1", "value1");
		model.addAttribute("key2", "value2");
		
		//Session 사용 범위(같은 브라우저에서 사용할 수 있는 범위)
		session.setAttribute("key3", "value3");
		
		//Application 사용 범위(모든 브라우저에서 사용할 수 있는 범위)
		ServletContext application = request.getServletContext();
		application.setAttribute("key4", "value4");
		
		model.addAttribute("chNum", "ch07");
		return "ch07/objectScope";
	}
	
	@GetMapping("/objectScope2")
	public String objectScope2(HttpServletRequest request, 
							HttpSession session, Model model) {
		model.addAttribute("chNum", "ch07");
		return "ch07/objectScope";
	}
}

















