package com.mycompany.springframework.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.Ch12DaoInterface;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch12Service8 {
	//@Autowired @Qualifier("ch12Dao4")
	@Resource(name="ch12Dao5")
	private Ch12DaoInterface dao;
	
	public Ch12Service8() {
		log.info("실행");
	}
}





