package com.cims.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cims.bean.TbUserInfo;
import com.cims.bean.ViewCustom;
import com.cims.service.ViewAbleService;

@Controller
public class ViewAbleController {
	@Autowired
	private ViewAbleService viewAbleService;
	@RequestMapping("/view")
	public String getEvaluatedData(HttpSession session,HttpServletRequest request) {
		TbUserInfo userInfo = (TbUserInfo) session.getAttribute("userInfo");
		ArrayList<ViewCustom> viewCustoms = new ArrayList<>();
		if(userInfo.getIfPrivilege() == 1) {
			//查询所有
			//首先查询所有的
			viewCustoms = viewAbleService.getAllViewCustoms();
		}else {
			String uid = userInfo.getUid();
			String tName = userInfo.getTname();
			viewCustoms = viewAbleService.getViewCustoms(uid,tName);
		}
		request.setAttribute("viewCustoms", viewCustoms);
		return "dataAnalysis";
	}
	
	@RequestMapping("/viewAble")
	public String viewAble(String cid,String time,HttpSession session) {
		viewAbleService.callPython(cid,time);
		TbUserInfo userInfo = (TbUserInfo) session.getAttribute("userInfo");
		if(userInfo.getIfPrivilege() == 1) {
			return "leader";
		}else {
			return "teacher";
		}
	}
}
