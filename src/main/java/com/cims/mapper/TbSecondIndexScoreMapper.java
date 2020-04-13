package com.cims.mapper;

import com.cims.bean.TbSecondIndexScore;
import com.cims.bean.TbSecondIndexScoreExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbSecondIndexScoreMapper {
    int countByExample(TbSecondIndexScoreExample example);

    int deleteByExample(TbSecondIndexScoreExample example);

    int deleteByPrimaryKey(String sid);

    int insert(TbSecondIndexScore record);

    int insertSelective(TbSecondIndexScore record);

    List<TbSecondIndexScore> selectByExample(TbSecondIndexScoreExample example);

    TbSecondIndexScore selectByPrimaryKey(String sid);

    int updateByExampleSelective(@Param("record") TbSecondIndexScore record, @Param("example") TbSecondIndexScoreExample example);

    int updateByExample(@Param("record") TbSecondIndexScore record, @Param("example") TbSecondIndexScoreExample example);

    int updateByPrimaryKeySelective(TbSecondIndexScore record);

    int updateByPrimaryKey(TbSecondIndexScore record);
}