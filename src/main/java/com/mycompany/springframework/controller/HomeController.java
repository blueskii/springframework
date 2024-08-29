package com.mycompany.springframework.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	@RequestMapping("")
	public String index(Model model) {
		log.info("실행");
		model.addAttribute("chNum", "ch01");
		return "home";
	}
}
