package com.cims.test;

import java.util.HashMap;

import org.junit.Test;

import com.cims.util.IOUtil;

public class IOTest {
	@Test
	public void ioTest1() {
		HashMap<String, String> read = IOUtil.read();
		System.out.println(read.size());

	}
	@Test
	public void ioTest2() {
		HashMap<String, String> hashMap = new HashMap<>();
		hashMap.put("director2", "7777777");
		hashMap.put("director3", "8888888");
		IOUtil.store(hashMap);
	}
}
