package com.mycompany.springframework.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.dto.Ch08LoginForm;
import com.mycompany.springframework.dto.Ch08Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch08")
public class Ch08Controller {
	@GetMapping("/login")
	public String loginForm(Model model) {
		model.addAttribute("chNum", "ch08");
		return "ch08/loginForm";
	}
	
	@PostMapping("/login")
	public String login(Ch08LoginForm loginForm, HttpSession session) {
		Ch08Member member = new Ch08Member();
		member.setMid(loginForm.getMid());
		member.setMpassword(loginForm.getMpassword());
		member.setMname("홍길동");
		member.setMemail("hong@mycompany.com");
		
		session.setAttribute("login", member);
		
		return "redirect:/";
	}
	
	@GetMapping("/loginInfo")
	public String loginInfo(Model model) {
		model.addAttribute("chNum", "ch08");
		return "ch08/loginInfo";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		//session.removeAttribute("login");
		session.invalidate();
		return "redirect:/ch08/login";
	}
}

















