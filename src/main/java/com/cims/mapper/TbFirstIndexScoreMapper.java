package com.cims.mapper;

import java.util.List;

import com.cims.bean.TbFirstIndexScore;
import com.cims.bean.TbSecondIndexScore;

public interface TbFirstIndexScoreMapper {
    int deleteByPrimaryKey(Integer fid);

    int insert(TbFirstIndexScore record);

    TbFirstIndexScore selectByPrimaryKey(Integer fid);

    int updateByPrimaryKey(TbFirstIndexScore record);
    
    int multiInsert(List<TbFirstIndexScore> list);
}