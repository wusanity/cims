package com.cims.service.impl;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.bean.TbClassInfo;
import com.cims.bean.TbClassScoreInfo;
import com.cims.bean.TbUserInfo;
import com.cims.bean.ViewCustom;
import com.cims.mapper.TbClassInfoMapper;
import com.cims.mapper.TbClassScoreInfoMapper;
import com.cims.mapper.TbUserInfoMapper;
import com.cims.service.ViewAbleService;

@Service
public class ViewAbleServiceImpl implements ViewAbleService{
	@Autowired
	private TbClassScoreInfoMapper tbClassScoreInfoMapper;
	@Autowired
	private TbClassInfoMapper tbClassInfoMapper;
	@Autowired
	private TbUserInfoMapper tbUserInfoMapper;
	@Override
	public ArrayList<ViewCustom> getViewCustoms(String uid,String tName) {
		//根据uid查询所有的课程评价得分包括历史记录
		List<TbClassInfo> classList = tbClassInfoMapper.selectByUid(uid);
		ArrayList<String> cidList = new ArrayList<>();
		for(TbClassInfo tbClassInfo : classList) {
			cidList.add(tbClassInfo.getCid());
		}
		//得到该用户所有课程评价得分
		ArrayList<TbClassScoreInfo> classScoreList = tbClassScoreInfoMapper.selectByCid(cidList);
		//开始拼接
		ArrayList<ViewCustom> viewCustoms = new ArrayList<>();
		for(TbClassScoreInfo tbClassScoreInfo : classScoreList) {
			ViewCustom viewCustom = new ViewCustom();
			for(TbClassInfo tbClassInfo : classList) {
				if(tbClassScoreInfo.getCid().equals(tbClassInfo.getCid())) {
					viewCustom.setCid(tbClassInfo.getCid());
					viewCustom.setClassName(tbClassInfo.getCname());
					viewCustom.setTeacher(tName);
				}
			}
			String str = tbClassScoreInfo.getSchoolYear() + "-" + tbClassScoreInfo.getSemester();
			viewCustom.setTime(str);
			viewCustoms.add(viewCustom);
		}
		return viewCustoms;
	}
	@Override
	public ArrayList<ViewCustom> getAllViewCustoms() {
		ArrayList<TbClassScoreInfo> allList = tbClassScoreInfoMapper.selectAll();
		ArrayList<ViewCustom> viewCustoms = new ArrayList<>();
		for(TbClassScoreInfo tbClassScoreInfo : allList) {
			ViewCustom viewCustom = new ViewCustom();
			viewCustom.setCid(tbClassScoreInfo.getCid());
			viewCustom.setTime(tbClassScoreInfo.getSchoolYear() + "-" + tbClassScoreInfo.getSemester());
			viewCustoms.add(viewCustom);
		}
		//查询老师名称
		List<TbUserInfo> allUserList = tbUserInfoMapper.selectAll();
		//查询课程名
		List<TbClassInfo> allClassList = tbClassInfoMapper.selectAll();
		for(ViewCustom viewCustom : viewCustoms) {
			for(TbUserInfo tbUserInfo : allUserList) {
				for(TbClassInfo tbClassInfo : allClassList) {
					if(viewCustom.getCid().equals(tbClassInfo.getCid()) && tbClassInfo.getUid().equals(tbUserInfo.getUid())) {
						viewCustom.setClassName(tbClassInfo.getCname());
						viewCustom.setTeacher(tbUserInfo.getTname());
					}
				}
			}
		}
		return viewCustoms;
	}
	@Override
	public void callPython(String cid, String time) {
		
		try {
				String schoolYear = time.substring(0,9);
				String semester = time.substring(10,11);
	           System.out.println("start;"+cid);
	           String[] args1 = new String[] { "python", "C:\\Users\\Administrator\\Desktop\\py\\pyLearn\\cims.py",cid,schoolYear,semester}; 
	           Process pr=Runtime.getRuntime().exec(args1);
	           BufferedReader in = new BufferedReader(new InputStreamReader(
	             pr.getInputStream()));
	           String line;
	           while ((line = in.readLine()) != null) {
	            System.out.println(line);
	           }
	           in.close();
	           pr.waitFor();
	           System.out.println("end");
	          } 
	        catch (Exception e) {
	           e.printStackTrace();
	          }
	}

}
