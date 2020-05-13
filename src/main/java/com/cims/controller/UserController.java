package com.cims.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cims.bean.TbUserInfo;
import com.cims.service.UserService;
import com.cims.util.Md5Util;
import com.sun.mail.util.LogOutputStream;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@RequestMapping(value="/toLogin")
	public String toLogin() {
		return "login";
	}
	@RequestMapping(value="/login")
	public String login(String identity,String userid,String password,HttpSession httpSession) {
		int ifPrivilege = 0;
		TbUserInfo tbUserInfo = new TbUserInfo();
		//逻辑：根据用户名和身份标识查密码
		if(identity.equals("teacher")) {
			ifPrivilege = 0;
		}else if(identity.equals("leader")) {
			ifPrivilege = 1;
		}else if(identity.equals("manager")) {
			ifPrivilege = 2;
		}
		tbUserInfo.setIfPrivilege(ifPrivilege);
		tbUserInfo.setUid(userid);
		tbUserInfo = userService.findPwd(tbUserInfo);
		password =Md5Util.md5(password);
		if(null != tbUserInfo) {
			if(password.equals(tbUserInfo.getPassword())) {
				httpSession.setAttribute("userInfo", tbUserInfo);				
				if(ifPrivilege==1){
					return "leader";
				}else if(ifPrivilege==2){
					return "manager";
				}else {
					return "teacher";
				}
			}else {
				return "login";
			}
		}else {
			return "login";
		}
		
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userInfo");
		return "login";
	}
	
	@RequestMapping(value="/test1")
	public String test(HttpServletRequest request) {
		ArrayList<HashMap<String, ArrayList<String>>> templateList = new ArrayList<HashMap<String, ArrayList<String>>>();
		ArrayList<String> list = new ArrayList<>();
		list.add("张三");
		list.add("李四");
		list.add("王五");
		HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
		hashMap.put("赵六", list);
		templateList.add(hashMap);
		request.setAttribute("templateList", templateList);
		return "test";		
	}
}
