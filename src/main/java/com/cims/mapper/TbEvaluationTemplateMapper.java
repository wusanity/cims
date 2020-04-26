package com.cims.mapper;

import com.cims.bean.TbEvaluationTemplate;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbEvaluationTemplateMapper {


    int deleteByPrimaryKey(String eid);

    int insert(TbEvaluationTemplate record);
    
    int multiInsert(ArrayList<TbEvaluationTemplate> list);
    
    int insertSelective(TbEvaluationTemplate record);


    TbEvaluationTemplate selectByPrimaryKey(String eid);

    int updateByPrimaryKeySelective(TbEvaluationTemplate record);

    int updateByPrimaryKey(TbEvaluationTemplate record);

	Integer selectMaxEid();
	
	List<TbEvaluationTemplate> selectByZero();
	
	List<TbEvaluationTemplate> selectEqualZero();
}