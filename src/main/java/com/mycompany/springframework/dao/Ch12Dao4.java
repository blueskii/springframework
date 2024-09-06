package com.mycompany.springframework.dao;

import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class Ch12Dao4 implements Ch12DaoInterface {
	public Ch12Dao4() {
		log.info("실행");
	}
}
