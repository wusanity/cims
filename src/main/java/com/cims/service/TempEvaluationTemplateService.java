package com.cims.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.cims.bean.TbTempEvaluationTemplate;

public interface TempEvaluationTemplateService {
	public void addEvaluationTemplate(ArrayList<TbTempEvaluationTemplate> list);
	public Integer findMaxEid();
	public HashMap<TbTempEvaluationTemplate,ArrayList<TbTempEvaluationTemplate>> findAllByStatus(String status);
}
