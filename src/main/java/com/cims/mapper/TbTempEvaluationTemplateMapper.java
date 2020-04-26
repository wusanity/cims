package com.cims.mapper;

import com.cims.bean.TbTempEvaluationTemplate;

import java.util.ArrayList;
import java.util.List;

public interface TbTempEvaluationTemplateMapper {

    int deleteByPrimaryKey(Integer eid);

    int insert(TbTempEvaluationTemplate record);

    TbTempEvaluationTemplate selectByPrimaryKey(Integer eid);

    int updateByPrimaryKey(TbTempEvaluationTemplate record);

	void multiInsert(ArrayList<TbTempEvaluationTemplate> list);

	Integer selectMaxEid();
	
	List<Integer> selectStatus();
	
	List<TbTempEvaluationTemplate> selectAllByStatus(String status);

	void deleteByStatus(String status);
	
	Integer selectMaxVersion();
}