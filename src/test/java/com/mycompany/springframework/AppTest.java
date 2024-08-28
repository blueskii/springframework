package com.mycompany.springframework;

import static org.junit.Assert.assertNull;

import org.junit.jupiter.api.Test;

import lombok.extern.slf4j.Slf4j;

@Slf4j
class AppTest {

	@Test
	void test() {
		log.info("테스트 실행");
		assertNull(null);
	}

}
