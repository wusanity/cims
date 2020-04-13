package com.cims.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cims.bean.TbTempEvaluationTemplate;
import com.cims.service.TempEvaluationTemplateService;

@Controller
public class TempEvaluationTemplateController {
	@Autowired
	private TempEvaluationTemplateService tempEvaluationTemplateService;
	@RequestMapping("getByStatus")
	public String getAll(String status,HttpSession session) {
		HashMap<TbTempEvaluationTemplate, ArrayList<TbTempEvaluationTemplate>> hashMap = tempEvaluationTemplateService.findAllByStatus(status);
		session.setAttribute("hashMap2", hashMap);
		if(status.equals("1")) {
			session.setAttribute("str1", "课程评价表");
		}else {
			session.setAttribute("str1", "实训评价表");
		}
		return "templateView";
	}
}
