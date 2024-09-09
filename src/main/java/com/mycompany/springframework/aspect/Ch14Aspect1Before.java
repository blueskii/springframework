package com.mycompany.springframework.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Slf4j
@Order(2)
public class Ch14Aspect1Before {
	@Before("execution(public * com.mycompany.springframework.controller.Ch14Controller.before*(..))")
	public void method() {
		//메소드 호출 전에 실행하는 공통 코드
		log.info("실행");
	}
}
