package com.cims.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cims.bean.TbIndex;
import com.cims.service.IndexService;

@Controller
public class IndexContrller {
	@Autowired
	private IndexService indexService;
	
	@RequestMapping(value="getIndex")
	public String getIndex(String type,HttpSession session) {
		ArrayList<String> list = new ArrayList<String>();
		String str = "";
		if("1".equals(type)) {
			//课程评价模板生成
			//c002、c003、c004
			list.add("c002");
			list.add("c003");
			list.add("c004");
			str="课程评价指标";
		}else if("2".equals(type)) {
			//实训评价模板生成
			list.add("c001");
			str="实训评价指标";
		}
		HashMap<TbIndex, ArrayList<TbIndex>> hashMap = indexService.findClassIndex(list);
		System.out.println(hashMap.toString());
		session.setAttribute("hashMap", hashMap);
		session.setAttribute("str", str);
		session.setAttribute("type",type);
		return "template";
	}
//	@RequestMapping()
//	public String generateTemplate() {
//		
//	}
}
