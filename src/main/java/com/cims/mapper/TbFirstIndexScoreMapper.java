package com.cims.mapper;

import com.cims.bean.TbFirstIndexScore;
import com.cims.bean.TbFirstIndexScoreExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbFirstIndexScoreMapper {
    int countByExample(TbFirstIndexScoreExample example);

    int deleteByExample(TbFirstIndexScoreExample example);

    int deleteByPrimaryKey(String fid);

    int insert(TbFirstIndexScore record);

    int insertSelective(TbFirstIndexScore record);

    List<TbFirstIndexScore> selectByExample(TbFirstIndexScoreExample example);

    TbFirstIndexScore selectByPrimaryKey(String fid);

    int updateByExampleSelective(@Param("record") TbFirstIndexScore record, @Param("example") TbFirstIndexScoreExample example);

    int updateByExample(@Param("record") TbFirstIndexScore record, @Param("example") TbFirstIndexScoreExample example);

    int updateByPrimaryKeySelective(TbFirstIndexScore record);

    int updateByPrimaryKey(TbFirstIndexScore record);
}