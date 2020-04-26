package com.cims.mapper;

import com.cims.bean.TbOpinion;
import com.cims.bean.TbOpinionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbOpinionMapper {
    int countByExample(TbOpinionExample example);

    int deleteByExample(TbOpinionExample example);

    int deleteByPrimaryKey(Integer oid);

    int insert(TbOpinion record);

    int insertSelective(TbOpinion record);

    List<TbOpinion> selectByExample(TbOpinionExample example);

    TbOpinion selectByPrimaryKey(Integer oid);

    int updateByExampleSelective(@Param("record") TbOpinion record, @Param("example") TbOpinionExample example);

    int updateByExample(@Param("record") TbOpinion record, @Param("example") TbOpinionExample example);

    int updateByPrimaryKeySelective(TbOpinion record);

    int updateByPrimaryKey(TbOpinion record);
    
    List<TbOpinion> selectByType();
}