package com.cims.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cims.bean.TbEvaluationTemplate;
import com.cims.bean.TbOpinion;
import com.cims.bean.TbTempEvaluationTemplate;
import com.cims.bean.TbUserInfo;
import com.cims.service.ActivitiService;
import com.cims.service.EvaluationTemplateService;
import com.cims.service.OpinionService;
import com.cims.service.TempEvaluationTemplateService;
import com.cims.util.IOUtil;

@Controller
public class ActivitiController {
	@Autowired
	private ActivitiService activitiService;
	@Autowired
	private TempEvaluationTemplateService tempEvaluationTemplateService;
	@Autowired
	private EvaluationTemplateService evaluationTemplateService;
	@Autowired
	private OpinionService opinionService;
	@RequestMapping("deploy")
	@ResponseBody
	public String deploy() {
		activitiService.deploy();
		return "success";
	}
	@RequestMapping("startInstance")
	public String startInstance(String status,HttpSession session) {
		TbUserInfo userInfo = (TbUserInfo) session.getAttribute("userInfo");
		activitiService.startInstance(status);
		activitiService.completeTask(userInfo.getTitle(), status);
		return "leader";
	}
	//查询任务，主任以及院长进入待办需要先判断是否有任务，有任务则进行查询，没任务则不查询
	@RequestMapping("queryTask")
	public String queryTask(String status,HttpSession session,RedirectAttributes attr) {
		TbUserInfo userInfo = (TbUserInfo) session.getAttribute("userInfo");
		Task queryTask1 = activitiService.queryTask(userInfo.getTitle(), status);
		Task queryTask2 = activitiService.queryTask(null, status);
		//如果当前用户的待办任务为空，并且流程实例中的待办任务不为空，则当前用户无法进入审核流程
		if((null == queryTask1) && (null != queryTask2)) {
			session.removeAttribute("hashMap2");
			session.removeAttribute("str1");
			return 	"activitiView";	
		}else {
			attr.addAttribute("status",status);
			return "redirect:/teacherGet";
		}
	}
	@RequestMapping("completeTask")
	public String completeTask(String status,String opinion,HttpSession session) {
		TbUserInfo userInfo = (TbUserInfo) session.getAttribute("userInfo");
//		try {
//			opinion = new String(opinion.getBytes("iso-8859-1"),"GBK");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		//HashMap<String, String> hashMap = new HashMap<>();
		TbOpinion tbOpinion = new TbOpinion();
		if(userInfo.getTitle().equals("president")) {
			tbOpinion.setType("president"+status);
			tbOpinion.setContent(opinion);
			Integer maxEid = evaluationTemplateService.findMaxEid();
			ArrayList<TbEvaluationTemplate> list = getEvaluationTemplates(session,maxEid);
			evaluationTemplateService.addEvaluationTemplate(list);
			//tempEvaluationTemplateService.deleteByStatus(status);	
		}else {
			tbOpinion.setType("director"+status);
			tbOpinion.setContent(opinion);
		}
		activitiService.completeTask(userInfo.getTitle(), status);
		tbOpinion.setTime(new Date());
		opinionService.addOpinion(tbOpinion);
		//IOUtil.store(hashMap);
		return "teacher";
	}
	@RequestMapping("rejectTask")
	public String rejectTask(String status,String opinion,HttpSession session) {
		TbOpinion tbOpinion = new TbOpinion();
		TbUserInfo userInfo = (TbUserInfo) session.getAttribute("userInfo");
		if(userInfo.getTitle().equals("president")) {
			tbOpinion.setType("president"+status);
			tbOpinion.setContent(opinion);
		}else {
			tbOpinion.setType("director"+status);
			tbOpinion.setContent(opinion);
		}
		activitiService.deleteInstance(status);
		//tempEvaluationTemplateService.deleteByStatus(status);
		tbOpinion.setTime(new Date());
		opinionService.addOpinion(tbOpinion);
		//IOUtil.store(hashMap);
		return "teacher";
	}
	@RequestMapping("deleteInstance")
	@ResponseBody
	public String deleteInstance() {
		activitiService.deleteInstance("1");
		return "success";
	}
	public ArrayList<TbEvaluationTemplate> getEvaluationTemplates(HttpSession session,Integer maxEid){
		HashMap<TbTempEvaluationTemplate,ArrayList<TbTempEvaluationTemplate>> hashMap = (HashMap<TbTempEvaluationTemplate, ArrayList<TbTempEvaluationTemplate>>) session.getAttribute("hashMap2");
		ArrayList<TbEvaluationTemplate> list = new ArrayList<>();
		for(Map.Entry<TbTempEvaluationTemplate, ArrayList<TbTempEvaluationTemplate>> entry : hashMap.entrySet()) {
			TbTempEvaluationTemplate key = entry.getKey();
			TbEvaluationTemplate tbEvaluationTemplate = new TbEvaluationTemplate();
			tbEvaluationTemplate.setEid(++maxEid);
			tbEvaluationTemplate.setIndicatorId(key.getIndicatorId());
			tbEvaluationTemplate.setParentId(key.getParentId());
			tbEvaluationTemplate.setIndicatorName(key.getIndicatorName());
			tbEvaluationTemplate.setClassificationId(key.getClassificationId());
			tbEvaluationTemplate.setStatus(key.getStatus());
			tbEvaluationTemplate.setWeight(key.getWeight());
			list.add(tbEvaluationTemplate);
			for(TbTempEvaluationTemplate temp : entry.getValue()) {
				TbEvaluationTemplate tbEvaluationTemplate2 = new TbEvaluationTemplate();
				tbEvaluationTemplate2.setEid(++maxEid);
				tbEvaluationTemplate2.setIndicatorId(temp.getIndicatorId());
				tbEvaluationTemplate2.setParentId(temp.getParentId());
				tbEvaluationTemplate2.setIndicatorName(temp.getIndicatorName());
				tbEvaluationTemplate2.setClassificationId(temp.getClassificationId());
				tbEvaluationTemplate2.setStatus(temp.getStatus());
				tbEvaluationTemplate2.setWeight(temp.getWeight());
				list.add(tbEvaluationTemplate2);
			}
		}
		return list;
	}
}
