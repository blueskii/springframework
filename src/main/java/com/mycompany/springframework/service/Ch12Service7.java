package com.mycompany.springframework.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.Ch12Dao1;
import com.mycompany.springframework.dao.Ch12Dao2;
import com.mycompany.springframework.dao.Ch12Dao3;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch12Service7 {
	//Field 주입 ------------------------------
	@Autowired // @Resource
	private Ch12Dao1 dao1;
	
	//생성자 주입 --------------------------------
	private Ch12Dao2 dao2;
	@Autowired
	public Ch12Service7(Ch12Dao2 dao2) {
		this.dao2 = dao2;
		log.info("실행");
	}
	
	//Setter 주입
	private Ch12Dao3 dao3;
	@Autowired //@Resource
	public void setCh12Dao3(Ch12Dao3 dao3) {
		this.dao3 = dao3;
		log.info("실행");
	}
}





