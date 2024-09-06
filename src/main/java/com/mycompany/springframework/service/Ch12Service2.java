package com.mycompany.springframework.service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch12Service2 {
	//정적 메소드
	public static Ch12Service2 getInstance() {
		log.info("실행");
		return new Ch12Service2();
	}
	
	//인스턴스 메소드
	public Ch12Service3 getCh12Service3() {
		return new Ch12Service3();
	}
}
