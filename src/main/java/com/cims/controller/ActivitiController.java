package com.cims.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cims.service.ActivitiService;

@Controller
public class ActivitiController {
	@Autowired
	private ActivitiService activitiService;
	@RequestMapping("deploy")
	@ResponseBody
	public String deploy() {
		activitiService.deploy();
		return "success";
	}
	@RequestMapping("startInstance")
	public String startInstance(String status) {
		activitiService.startInstance(status);
		return null;
	}
}
