package com.osf.web;

import java.util.HashMap;
import java.util.Map;

public class Exam {

	public static void main(String[] args) {
		String str = "{'나':'사람'}";
		System.out.println(str);
		Map<String,String> map = new HashMap<String,String>();
		map.put("나", "사람");
		System.out.println(map);
	}
}
