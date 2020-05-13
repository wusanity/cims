package com.cims.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.cims.bean.TbIndex;

public interface IndexService {
	public HashMap<TbIndex, ArrayList<TbIndex>> findClassIndex(ArrayList<String> list);

	public TbIndex findByName(String name);

	public String findMaxIid();

	public void addBatch(ArrayList<TbIndex> list);
	
}
