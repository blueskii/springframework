package com.mycompany.springframework.dao;

import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class Ch12Dao3 {
	public Ch12Dao3() {
		log.info("실행");
	}
}
