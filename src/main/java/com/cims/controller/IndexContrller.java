package com.cims.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping(value="indexCustom")
	public String generateTemplate() {
		return "indexCustom";
	}
	
	@RequestMapping(value="checkIndex",method=RequestMethod.POST)
	@ResponseBody
	public String  checkIndex(String name) {
		TbIndex tbIndex = indexService.findByName(name);
		if(null == tbIndex) {
			return "0";
		}else {
			return "1";
		}
		
	}
	
	@RequestMapping(value="addIndex",method=RequestMethod.POST)
	public String addIndex(String radio,String first,String[] checkbox,HttpServletRequest request) {
		ArrayList<TbIndex> list = new ArrayList<>();
		String classificationId = "";
		//设置分类编号
		if(radio.equals("1")) {
			classificationId = "c001";
		}else if(radio.equals("2")) {
			classificationId = "c002";
		}else if(radio.equals("3")) {
			classificationId = "c003";
		}else if(radio.equals("4")) {
			classificationId = "c004";
		}
		//获取当前最大编号
		String maxIid = indexService.findMaxIid();
		Integer iid = Integer.parseInt(maxIid.substring(1));
		//填充一级指标
		TbIndex fIndex = new TbIndex();
		fIndex.setClassificationId(classificationId);
		++iid;
		fIndex.setIid("i0"+iid);
		fIndex.setParentId("0");
		fIndex.setIndicatorName(first);
		list.add(fIndex);
		 
		String parent = fIndex.getIid();
		for(int i = 1 ; i <= checkbox.length ; i++) {
			TbIndex sIndex = new TbIndex();
			String param = "second_" + i; 
			String second = request.getParameter(param);
			sIndex.setClassificationId(classificationId);
			sIndex.setIndicatorName(second);
			++iid;
			sIndex.setIid("i0"+iid);
			sIndex.setParentId(parent);
			list.add(sIndex);
		}
		indexService.addBatch(list);
		return "indexCustom";
	}
}
