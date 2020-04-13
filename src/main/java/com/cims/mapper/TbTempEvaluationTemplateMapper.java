package com.cims.mapper;

import com.cims.bean.TbTempEvaluationTemplate;
import com.cims.bean.TbTempEvaluationTemplateExample;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbTempEvaluationTemplateMapper {
    int countByExample(TbTempEvaluationTemplateExample example);

    int deleteByExample(TbTempEvaluationTemplateExample example);

    int deleteByPrimaryKey(Integer eid);

    int insert(TbTempEvaluationTemplate record);

    int insertSelective(TbTempEvaluationTemplate record);

    List<TbTempEvaluationTemplate> selectByExample(TbTempEvaluationTemplateExample example);

    TbTempEvaluationTemplate selectByPrimaryKey(Integer eid);

    int updateByExampleSelective(@Param("record") TbTempEvaluationTemplate record, @Param("example") TbTempEvaluationTemplateExample example);

    int updateByExample(@Param("record") TbTempEvaluationTemplate record, @Param("example") TbTempEvaluationTemplateExample example);

    int updateByPrimaryKeySelective(TbTempEvaluationTemplate record);

    int updateByPrimaryKey(TbTempEvaluationTemplate record);

	void multiInsert(ArrayList<TbTempEvaluationTemplate> list);

	Integer selectMaxEid();
	
	List<Integer> selectStatus();
	
	List<TbTempEvaluationTemplate> selectAllByStatus(String status);
}