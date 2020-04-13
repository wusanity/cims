package com.cims.service;

import java.util.ArrayList;

import com.cims.bean.TbEvaluationTemplate;

public interface EvaluationTemplateService {
	public void addEvaluationTemplate(ArrayList<TbEvaluationTemplate> list);
	public Integer findMaxEid();
	//生成评价模板后，需要发表评价表模板，发表过程就是启动实例的时间
	//需要有两个标识，
	//public 
}
