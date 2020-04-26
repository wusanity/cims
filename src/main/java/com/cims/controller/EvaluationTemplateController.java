package com.cims.controller;

import static org.assertj.core.api.Assertions.in;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cims.bean.TbIndex;
import com.cims.bean.TbTempEvaluationTemplate;
import com.cims.service.EvaluationTemplateService;
import com.cims.service.TempEvaluationTemplateService;

@Controller
public class EvaluationTemplateController {
	@Autowired
	private EvaluationTemplateService evaluationTemplateService;
	@Autowired
	private TempEvaluationTemplateService tempEvaluationTemplateService;
	@RequestMapping(value="gTemplate")
	public String generateTemplate(@RequestParam("fItem") String[] fItem,@RequestParam("sItem") String[] sItem,HttpSession session,HttpServletRequest request) {
		ArrayList<TbTempEvaluationTemplate> list = new ArrayList<>();	
		float sum = 0;
		HashMap<TbIndex, ArrayList<TbIndex>> hashMap = (HashMap<TbIndex, ArrayList<TbIndex>>) session.getAttribute("hashMap");
		Integer eid = tempEvaluationTemplateService.findMaxEid();
		Integer version = tempEvaluationTemplateService.findMaxVersion();
		if(null == eid) {
			eid = 1;
		}
		if(null == version) {
			version = 1;
		}
		for(Map.Entry<TbIndex, ArrayList<TbIndex>> entry : hashMap.entrySet()) {
			TbTempEvaluationTemplate tbEvaluationTemplate = new TbTempEvaluationTemplate();
			TbIndex tbIndex = entry.getKey();
			for(int i = 0 ; i < fItem.length ; i++) {				 
				if(tbIndex.getIid().equals(fItem[i])) {
					tbEvaluationTemplate.setClassificationId(tbIndex.getClassificationId());
					tbEvaluationTemplate.setIndicatorId(tbIndex.getIid());
					tbEvaluationTemplate.setIndicatorName(tbIndex.getIndicatorName());
					tbEvaluationTemplate.setParentId("0");
					tbEvaluationTemplate.setWeight(request.getParameter(fItem[i]));
					sum = sum + Float.parseFloat(request.getParameter(fItem[i]));
					tbEvaluationTemplate.setStatus(Integer.parseInt(request.getParameter("type")));
					tbEvaluationTemplate.setEid(eid++);	
					tbEvaluationTemplate.setVersion(version);
					list.add(tbEvaluationTemplate);
					continue;
				}
				
			}		
		}
		if(sum != 100) {
			return "template";
		}
		for(Map.Entry<TbIndex, ArrayList<TbIndex>> entry : hashMap.entrySet()) {
			
			ArrayList<TbIndex> sList = entry.getValue();
			for(TbIndex tbIndex : sList) {
				for(int j = 0; j < sItem.length ; j++) {
					if(tbIndex.getIid().equals(sItem[j])) {
						TbTempEvaluationTemplate tbEvaluationTemplate = new TbTempEvaluationTemplate();
						tbEvaluationTemplate.setClassificationId(tbIndex.getClassificationId());
						tbEvaluationTemplate.setIndicatorId(tbIndex.getIid());
						tbEvaluationTemplate.setIndicatorName(tbIndex.getIndicatorName());
						tbEvaluationTemplate.setParentId(tbIndex.getParentId());
						tbEvaluationTemplate.setWeight(request.getParameter(sItem[j]));
						tbEvaluationTemplate.setStatus(Integer.parseInt(request.getParameter("type")));
						tbEvaluationTemplate.setEid(eid++);		
						tbEvaluationTemplate.setVersion(version);
						list.add(tbEvaluationTemplate);
					}
					
				}
			}
		}
		sum = 0;
		for(int k = 0 ; k < list.size() ; k++) {
			TbTempEvaluationTemplate temp1 = list.get(k);
			if(temp1.getParentId().equals("0")) {
				continue;
			}
			for(int m = 0 ; m < list.size() ; m++) {
				TbTempEvaluationTemplate temp2 = list.get(m);
				if(
						!(temp1.getIndicatorId().equals(temp2.getIndicatorId())) && 
						!(temp1.getParentId().equals("0")) && 
						!(temp2.getParentId().equals("0")) && 
						(temp1.getParentId().equals(temp2.getParentId()))
					) {
					sum = sum + Float.parseFloat(list.get(k).getWeight()) + Float.parseFloat(list.get(m).getWeight());
					System.out.println(Float.parseFloat(temp1.getWeight()));
					System.out.println(Float.parseFloat(temp2.getWeight()));
				}
			}
			if(sum != 100) {
				return "template";
			}
			sum = 0;
		}
		tempEvaluationTemplateService.addEvaluationTemplate(list);
		return "leader";
	}
}
