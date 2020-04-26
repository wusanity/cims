package com.cims.service.impl;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cims.bean.TbClassInfo;
import com.cims.bean.TbClassScoreInfo;
import com.cims.bean.TbEvaluationTemplate;
import com.cims.bean.TbFirstIndexScore;
import com.cims.bean.TbSecondIndexScore;
import com.cims.bean.TbTempEvaluationTemplate;
import com.cims.mapper.TbClassScoreInfoMapper;
import com.cims.mapper.TbEvaluationTemplateMapper;
import com.cims.mapper.TbFirstIndexScoreMapper;
import com.cims.mapper.TbIndexMapper;
import com.cims.mapper.TbSecondIndexScoreMapper;
import com.cims.service.ExcelService;
import com.cims.util.ReadExcel;
import com.graphbuilder.math.func.SumFunction;

@Service
public class ExcelServiceImpl implements ExcelService{
	@Autowired
	private TbSecondIndexScoreMapper tbSecondIndexScoreMapper;
	@Autowired
	private TbEvaluationTemplateMapper tbEvaluationTemplateMapper;
	@Autowired
	private TbFirstIndexScoreMapper tbFirstIndexScoreMapper;
	@Autowired
	private TbClassScoreInfoMapper tbClassScoreInfoMapper;
	@Override
	public void readExcelFile(MultipartFile file) {
		//String result = "";
		DecimalFormat df2  = new DecimalFormat("###.00");
		//创建处理Excel的类
		ReadExcel readExcel = new ReadExcel();
		//解析excel，获取上传的事件单
		List<Map<String, Object>> userList = readExcel.getExcelInfo(file);
		//所有的二级指标数据
		List<TbEvaluationTemplate> selectByZero = tbEvaluationTemplateMapper.selectByZero();
		//所有的一级指标数据
		List<TbEvaluationTemplate> selectEqualZero = tbEvaluationTemplateMapper.selectEqualZero();
		//存放二级指标集合
		ArrayList<TbSecondIndexScore> list = new ArrayList<>();
		//计算所有数据对应课程各二级指标总分
		point:
		for(Map<String, Object> hashMap : userList) {
			float sum = 0;
			int count = 0;
			TbSecondIndexScore tbSecondIndexScore = new TbSecondIndexScore();
			tbSecondIndexScore.setCid(hashMap.get("cid").toString());
			tbSecondIndexScore.setSecondIndicatorId(hashMap.get("secondIndicatorId").toString());
			//tbSecondIndexScore.setScore(Float.parseFloat(hashMap.get("score").toString()));
			//如果list中已经存在该指标就无需添加到list中
			for(TbSecondIndexScore tempIndexScore : list) {
				if(tbSecondIndexScore.getCid().equals(tempIndexScore.getCid()) && 
						tbSecondIndexScore.getSecondIndicatorId().equals(tempIndexScore.getSecondIndicatorId())) {
					continue point;
				}
			}
			for(Map<String, Object> tempMap : userList) {
				if(tbSecondIndexScore.getCid().equals(tempMap.get("cid").toString()) && 
						tbSecondIndexScore.getSecondIndicatorId().equals(tempMap.get("secondIndicatorId").toString())) {
					sum = sum + Float.parseFloat(tempMap.get("score").toString());
					count++;
				}
			}
			sum = Float.parseFloat(df2.format(sum/count));
			tbSecondIndexScore.setScore(sum);
			list.add(tbSecondIndexScore);
		}
		//完成最后的分装
		for(TbEvaluationTemplate tbEvaluationTemplate : selectByZero) {
			for(TbSecondIndexScore temp : list) {
				if(tbEvaluationTemplate.getIndicatorId().equals(temp.getSecondIndicatorId())) {
					temp.setParentId(tbEvaluationTemplate.getParentId());
					temp.setWeight(tbEvaluationTemplate.getWeight());
					Calendar cal = Calendar.getInstance();
					int year = cal.get(Calendar.YEAR);//获取年份
			        int month=cal.get(Calendar.MONTH) + 1;//获取月份
			        String schoolYear = (year - 1) + "-" + year;
			        temp.setSchoolYear(schoolYear);
			        if(month < 9) {
			        	temp.setSemester(2);
			        }else {
			        	temp.setSemester(1);
			        }
				}
			}
		}
		//此处进行循环插入
		ArrayList<TbFirstIndexScore> fList = geTbFirstList(list,selectEqualZero);
		tbSecondIndexScoreMapper.multiInsert(list);
		tbFirstIndexScoreMapper.multiInsert(fList);
		tbClassScoreInfoMapper.insert(getClassScoreInfo(fList));
	}
	//进行进行一级指标的填充
	public ArrayList<TbFirstIndexScore> geTbFirstList(ArrayList<TbSecondIndexScore> list,List<TbEvaluationTemplate> selectEqualZero){
		ArrayList<TbFirstIndexScore> fList = new ArrayList<>();
		//一级指标的集合
		for(TbEvaluationTemplate tbEvaluationTemplate : selectEqualZero) {
			TbFirstIndexScore tbFirstIndexScore = new TbFirstIndexScore();
			tbFirstIndexScore.setClassificationId(tbEvaluationTemplate.getClassificationId());
			tbFirstIndexScore.setFirstIndicatorId(tbEvaluationTemplate.getIndicatorId());
			tbFirstIndexScore.setWeight(tbEvaluationTemplate.getWeight());
			boolean flag = true;
			float sum = 0f;
			//只有一套课程的二级指标数据，所以不需要考虑得过于复杂
			for(TbSecondIndexScore tbSecondIndexScore : list) {
				if(tbSecondIndexScore.getParentId().equals(tbEvaluationTemplate.getIndicatorId())) {
					if(flag == true) {
						tbFirstIndexScore.setSchoolYear(tbSecondIndexScore.getSchoolYear());
						tbFirstIndexScore.setSemester(tbSecondIndexScore.getSemester());
						tbFirstIndexScore.setCid(tbSecondIndexScore.getCid());
						flag = false;
					}
					Float score = tbSecondIndexScore.getScore();
					float parseFloat = (Float.parseFloat(tbSecondIndexScore.getWeight()))/100;
					sum = sum + score * parseFloat;
				}
			}
			tbFirstIndexScore.setScore(sum);
			fList.add(tbFirstIndexScore);
		}
		return fList;
	}
	
	//进行课程的得分的填充
	public TbClassScoreInfo getClassScoreInfo(ArrayList<TbFirstIndexScore> fList) {
		TbClassScoreInfo tbClassScoreInfo = new TbClassScoreInfo();
		int count = 1;
		float sum = 0;
		for(TbFirstIndexScore tbFirstIndexScore : fList) {
			if(count == 1) {
				tbClassScoreInfo.setCid(tbFirstIndexScore.getCid());
				tbClassScoreInfo.setSchoolYear(tbFirstIndexScore.getSchoolYear());
				tbClassScoreInfo.setSemester(tbFirstIndexScore.getSemester());
			}
			Float score = tbFirstIndexScore.getScore();
			float parseFloat = (Float.parseFloat(tbFirstIndexScore.getWeight()))/100;
			sum = sum + score * parseFloat;
		}
		tbClassScoreInfo.setScore(sum);
		return tbClassScoreInfo;
	}
}