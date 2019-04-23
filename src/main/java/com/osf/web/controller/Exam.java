package com.osf.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Exam {
	public String str;
	/*
	 * Log4j level 순서
	 * 1. TRACE
	 * 2. DEBUG
	 * 3. INFO
	 * 4. WARN
	 * 5. ERROR
	 * 6. FATAL
	 */
	public static void main(String[] args) {
		String str = null;
		if("홍길동".equals(str)) {
			log.info("이름은 홍길이 맞습니다.");
		}else {
			log.debug("나도 나올려나?");
			log.info("이름은 홍길이 아닙니다.");
		}
		log.warn("프로그램 비정상 종료, 그치만 문제는 없음");
	}
}
