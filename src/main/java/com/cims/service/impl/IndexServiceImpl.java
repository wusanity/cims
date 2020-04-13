package com.cims.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.bean.TbIndex;
import com.cims.mapper.TbIndexMapper;
import com.cims.service.IndexService;
@Service
public class IndexServiceImpl implements IndexService{
	@Autowired
	private TbIndexMapper tbIndexMapper;
	@Override
	public HashMap<TbIndex, ArrayList<TbIndex>> findClassIndex(ArrayList<String> list) {
		HashMap<TbIndex, ArrayList<TbIndex>> templateList = new HashMap<TbIndex, ArrayList<TbIndex>>();
		HashMap<TbIndex, ArrayList<TbIndex>> map = new HashMap<>();
		
		List<TbIndex> classIndex = tbIndexMapper.selectIndex(list);
		for(int i = 0; i < classIndex.size() ; i++) {
			TbIndex tbIndex = classIndex.get(i);
			if(tbIndex.getParentId().equals("0")) {
				map.put(tbIndex, null);
				classIndex.remove(i);
			}
		}
		for(Map.Entry<TbIndex, ArrayList<TbIndex>> a:map.entrySet()) {
			TbIndex fistIndex = a.getKey();
			ArrayList<TbIndex> secondIndexList = new ArrayList<>();
			for(int k = 0 ; k <classIndex.size() ; k++) {
				if(classIndex.get(k).getParentId().equals(fistIndex.getIid())) {
					secondIndexList.add(classIndex.get(k));
				}
			}
			map.put(a.getKey(), secondIndexList);	
		}
		return map;
	}

}
