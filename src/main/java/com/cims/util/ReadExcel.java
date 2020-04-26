package com.cims.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

public class ReadExcel {
	//总行数
	private int totalRows = 0;
	//总条数，总列数
	private int totalCells = 0;
	//信息错误接收器
	private String errorMsg;
	public ReadExcel() {
		super();
	}
	public int getTotalRows() {
		return totalRows;
	}
	
	public int getTotalCells() {
		return totalCells;
	}
	
	public String getErrorMsg() {
		return errorMsg;
	}
	//读EXCEL数据，获取信息集合
	public List<Map<String, Object>> getExcelInfo(MultipartFile mFile){
		String fileName = mFile.getOriginalFilename();//获取文件名
		//List<Map<String, Object>> userList = new LinkedList<Map<String,Object>>();
		try {
			if(!validateExcel(fileName)) {//验证文件名是否合格
				return null;
			}
			boolean isExcel2003 = true;//根据文件名判断是2003版本还是2007版本
			if(isExcel2007(fileName)) {
				isExcel2003 = false;
			}
			return createExcel(mFile.getInputStream(), isExcel2003);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	//根据excel里面的内容读取客户端信息
	public List<Map<String, Object>> createExcel(InputStream is,boolean isExcel2003){
		try {
			Workbook wb = null;
			if(isExcel2003) {//当excel是2003时，创建excel2003
				wb = new HSSFWorkbook(is);
			}else {//当excel是2007时，创建excel2007
				wb = new XSSFWorkbook(is);
			}
			return readExcelValue(wb);//读取Excel里面客户的信息
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	//读取Excel里客户的信息
	private List<Map<String, Object>> readExcelValue(Workbook wb){
		//得到第一个sheet
		Sheet sheet = wb.getSheetAt(0);
		//得到Excel的行数
		this.totalRows = sheet.getPhysicalNumberOfRows();
		//得到Excel的列数（前提是有行数）
		if(totalRows > 1 && sheet.getRow(0) != null) {
			this.totalCells = sheet.getRow(0).getPhysicalNumberOfCells();
		}
		List<Map<String,Object>> userList = new ArrayList<Map<String,Object>>();
		//循环Excel行数，从一开始，去掉了表头
		for(int r = 1; r < totalRows ; r++) {
			Row row = sheet.getRow(r);
			if(row == null) {
				continue;
			}
			//循环Excel的列
			Map<String, Object> map = new HashMap<String,Object>();
			for(int c = 0; c < this.totalCells; c++) {
				Cell cell = row.getCell(c);
				if(null != cell) {
					if(c == 0) {
						//如果是纯数字，cell.getNumericCellValue()获得是25.0,通过截取字符串去掉.0获得25
						if(cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC) {
							String name = String.valueOf(cell.getNumericCellValue());
							map.put("cid", name.substring(0,name.length() - 2 > 0 ? name.length() - 2 : 1));//课程编号		
						}else {
							map.put("cid", cell.getStringCellValue());//名称
						}
					}else if (c == 1) {
                        if (cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC) {
                            String sex = String.valueOf(cell.getNumericCellValue());
                            map.put("secondIndicatorId",sex.substring(0, sex.length() - 2 > 0 ? sex.length() - 2 : 1));//指标编号
                        } else {
                            map.put("secondIndicatorId",cell.getStringCellValue());// 性别
                        }
                    }else if (c == 2) {
                        if (cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC) {
                            String age = String.valueOf(cell.getNumericCellValue());
                            map.put("score", age.substring(0, age.length() - 2 > 0 ? age.length() - 2 : 1));//指标得分
                        } else {
                            map.put("score", cell.getStringCellValue());// 年龄
                        }
                    }
				}
			}
			// 添加到list，按行添加
            userList.add(map);
		}
		return userList;
	}
	//验证EXCEL文件
	public boolean validateExcel(String filePath) {
		if(filePath == null || !(isExcel2003(filePath) || isExcel2007(filePath))) {
			errorMsg = "文件名不是excel格式";
			return false;
		}
		return true;
	}
	//是否是2003的excel，是返回true
	public static boolean isExcel2003(String filePath) {
		return filePath.matches("^.+\\.(?i)(xls)$");
	}
	//是否是2007的excel，返回true时2007
	public static boolean isExcel2007(String filePath) {
		return filePath.matches("^.+\\.(?i)(xlsx)$");
	}
}
