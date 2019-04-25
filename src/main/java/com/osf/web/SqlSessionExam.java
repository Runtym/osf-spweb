package com.osf.web;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SqlSessionExam {
	@Autowired
	private static SqlSession ss;
	
	
	public static void main(String[] args) {
		ss.selectOne("addr.selectCountWithSido");
	}
}










