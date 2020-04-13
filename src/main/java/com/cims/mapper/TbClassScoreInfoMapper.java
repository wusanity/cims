package com.cims.mapper;

import com.cims.bean.TbClassScoreInfo;
import com.cims.bean.TbClassScoreInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbClassScoreInfoMapper {
    int countByExample(TbClassScoreInfoExample example);

    int deleteByExample(TbClassScoreInfoExample example);

    int deleteByPrimaryKey(String sid);

    int insert(TbClassScoreInfo record);

    int insertSelective(TbClassScoreInfo record);

    List<TbClassScoreInfo> selectByExample(TbClassScoreInfoExample example);

    TbClassScoreInfo selectByPrimaryKey(String sid);

    int updateByExampleSelective(@Param("record") TbClassScoreInfo record, @Param("example") TbClassScoreInfoExample example);

    int updateByExample(@Param("record") TbClassScoreInfo record, @Param("example") TbClassScoreInfoExample example);

    int updateByPrimaryKeySelective(TbClassScoreInfo record);

    int updateByPrimaryKey(TbClassScoreInfo record);
}