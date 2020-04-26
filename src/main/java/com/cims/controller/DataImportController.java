package com.cims.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cims.service.ExcelService;
@Controller
public class DataImportController {
	@Autowired
	private ExcelService excelService;
	@RequestMapping("upload")
	public String upload() {
		return "upload";
	}
	//导入excel
	@RequestMapping(value="/import",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> importExcel(@RequestParam(value="file",required=false) MultipartFile file,HttpServletRequest request,HttpServletResponse response){
		Map<String, Object> map = new HashMap<String, Object>();
		excelService.readExcelFile(file);
		//map.put("message",result);
		return map;
	}
}
