package com.cims.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.bean.TbEvaluationTemplate;
import com.cims.mapper.TbEvaluationTemplateMapper;
import com.cims.service.EvaluationTemplateService;
@Service
public class EvaluationTemplateServiceImpl implements EvaluationTemplateService{
	@Autowired
	private TbEvaluationTemplateMapper tbEvaluationTemplateMapper;
	@Override
	public void addEvaluationTemplate(ArrayList<TbEvaluationTemplate> list) {
		tbEvaluationTemplateMapper.multiInsert(list);
	}
	@Override
	public Integer findMaxEid() {
		Integer max = tbEvaluationTemplateMapper.selectMaxEid();
		if(null == max) {
			return 1;
		}else {
			return max;
		}
		
	}
	
}
