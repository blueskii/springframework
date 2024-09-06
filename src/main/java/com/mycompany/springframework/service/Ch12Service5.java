package com.mycompany.springframework.service;

import com.mycompany.springframework.dao.Ch12Dao1;
import com.mycompany.springframework.dao.Ch12Dao2;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Data
public class Ch12Service5 {
	private Ch12Dao1 dao1;
	private Ch12Dao2 dao2;
	private String field3;
	private int field4;
	
	public Ch12Service5() {
		log.info("실행");
	}
}
