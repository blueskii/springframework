package com.mycompany.springframework.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch05")
public class Ch05Controller {
	@GetMapping("/header")
	public String header(
			@RequestHeader("User-Agent") String userAgent, //헤더값을 얻는 방법1
			HttpServletRequest request,
			Model model) {
		log.info("userAgent: " + userAgent);
		
		//헤더값을 얻는 방법2
		userAgent = request.getHeader("User-Agent");
		
		String browser = null;
		if(userAgent.contains("Edg")) {
			browser = "Edg";
		} else if(userAgent.contains("Chrome")) {
			browser = "Chrome";
		}
		
		model.addAttribute("browser", browser);
		
		String clientIp = request.getRemoteAddr();
		log.info("clientIp: " + clientIp);
		model.addAttribute("clientIp", clientIp);
		
		return "ch05/header";
	}
	
	@GetMapping("/createCookie")
	public String createCookie(HttpServletResponse response) {
		//쿠키 생성
		Cookie cookie1 = new Cookie("mid", "user1");
		//cookie1.setMaxAge(60); //클라이언트 파일시스템에 저장하는 기간 설정(없으면 브라우저 메모리에 저장)
		//cookie1.setDomain(".samsung.com"); //*.samsung.com 이라면 쿠키 전송
		//cookie1.setSecure(true); //https에서만 쿠키를 전송
		//cookie1.setHttpOnly(true); //브라우저의 자바스크립트로 쿠키에 접근을 허용하지 않음
		
		Cookie cookie2 = new Cookie("memail", "user1@mycompany.com");
		
		//쿠키를 응답 헤더에 추가해서 브라우저로 보냄
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
		return "redirect:/";
	}
	
	@GetMapping("/readCookie")
	public String readCookie(
			@CookieValue("mid") String mid,
			@CookieValue("memail") String memail,
			Model model) {
		log.info("mid: " + mid);
		log.info("memail: " + memail);
		
		model.addAttribute("mid", mid);
		model.addAttribute("memail", memail);
		
		return "ch05/readCookie";
	}
}






