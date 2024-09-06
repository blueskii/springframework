package com.mycompany.springframework.dao;

import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class Ch12Dao1 {
	public Ch12Dao1() {
		log.info("실행");
	}
}
