package com.cims.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cims.bean.TbOpinion;
import com.cims.bean.TbTempEvaluationTemplate;
import com.cims.bean.TbUserInfo;
import com.cims.service.ActivitiService;
import com.cims.service.OpinionService;
import com.cims.service.TempEvaluationTemplateService;
import com.cims.util.IOUtil;

@Controller
public class TempEvaluationTemplateController {
	@Autowired
	private TempEvaluationTemplateService tempEvaluationTemplateService;
	@Autowired
	private ActivitiService activitiService;
	@Autowired
	private OpinionService opinionService;
	@RequestMapping("managerGet")
	public String getAll(String status,HttpSession session) {
		TbUserInfo userInfo = (TbUserInfo) session.getAttribute("userInfo");
		//查询当前是否有任务在执行，如果有就说明就不可以重复进入待办任务
		Task task = activitiService.queryTask(null,status);
		//HashMap<String, String> read = IOUtil.read();
		ArrayList<TbOpinion> list = opinionService.findByType();
		for(TbOpinion tbOpinion : list) {
			session.setAttribute(tbOpinion.getType(), tbOpinion.getContent());
		}
		//1、未启动时，需要button
		//2、教研室主任通过时，不需要button
		HashMap<TbTempEvaluationTemplate, ArrayList<TbTempEvaluationTemplate>> hashMap = tempEvaluationTemplateService.findAllByStatus(status);
		if(null != hashMap&&hashMap.size() != 0) {
			session.setAttribute("hashMap3", hashMap);
			if(null == task) {
				session.setAttribute("flag", "true");
			}else {
				session.removeAttribute("flag");
			}
		}else {
			//为null，说明数据已经被打回
			session.removeAttribute("flag");
		}
		session.setAttribute("status",status);
		return "leaderView";
	}
	@RequestMapping("teacherGet")
	public String getAllTemp(String status,HttpSession session) {
		TbUserInfo userInfo = (TbUserInfo) session.getAttribute("userInfo");
			HashMap<TbTempEvaluationTemplate, ArrayList<TbTempEvaluationTemplate>> hashMap = tempEvaluationTemplateService.findAllByStatus(status);
			session.setAttribute("hashMap2", hashMap);
			session.setAttribute("status",status);
			return "activitiView";
	}
}
