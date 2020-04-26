package com.cims.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.bean.TbTempEvaluationTemplate;
import com.cims.mapper.TbTempEvaluationTemplateMapper;
import com.cims.service.TempEvaluationTemplateService;
@Service
public class TempEvaluationTemplateServiceImpl implements TempEvaluationTemplateService{
	@Autowired
	private TbTempEvaluationTemplateMapper tbTempEvaluationTemplateMapper;
	@Override
	public void addEvaluationTemplate(ArrayList<TbTempEvaluationTemplate> list) {
		// TODO Auto-generated method stub
		tbTempEvaluationTemplateMapper.multiInsert(list);
	}

	@Override
	public Integer findMaxEid() {
		return tbTempEvaluationTemplateMapper.selectMaxEid();
	}

	@Override
	public HashMap<TbTempEvaluationTemplate,ArrayList<TbTempEvaluationTemplate>> findAllByStatus(String status) {
		List<TbTempEvaluationTemplate> list = tbTempEvaluationTemplateMapper.selectAllByStatus(status);
		HashMap<TbTempEvaluationTemplate,ArrayList<TbTempEvaluationTemplate>> hashMap = new HashMap<>();
		for(TbTempEvaluationTemplate tbTempEvaluationTemplate : list) {
			if(tbTempEvaluationTemplate.getParentId().equals("0")) {
				hashMap.put(tbTempEvaluationTemplate, null);
			}
		}
		for(Map.Entry<TbTempEvaluationTemplate,ArrayList<TbTempEvaluationTemplate>> entry : hashMap.entrySet()) {
			TbTempEvaluationTemplate key = entry.getKey();
			ArrayList<TbTempEvaluationTemplate> temp = new ArrayList<>();
			for(TbTempEvaluationTemplate tbTempEvaluationTemplate : list) {
				if(tbTempEvaluationTemplate.getParentId().equals(key.getIndicatorId())) {
					temp.add(tbTempEvaluationTemplate);
				}
			}
			hashMap.put(key, temp);
		}
		return hashMap;
	}

	@Override
	public void deleteByStatus(String status) {
		tbTempEvaluationTemplateMapper.deleteByStatus(status);
	}

	@Override
	public Integer findMaxVersion() {
		return tbTempEvaluationTemplateMapper.selectMaxVersion();
	}

}
