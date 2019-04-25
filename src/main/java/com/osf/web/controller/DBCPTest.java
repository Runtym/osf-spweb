package com.osf.web.controller;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

public class DBCPTest {

	public static void main(String[] args) {
		BasicDataSource bds = new BasicDataSource();
		bds.setDriverClassName("");
		bds.setUrl("");
		bds.setUsername("");
		bds.setPassword("");
		bds.setMaxActive(10);
		bds.setMinIdle(5);
	}
}
