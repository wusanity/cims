package com.cims.mapper;

import java.util.List;

import com.cims.bean.TbSecondIndexScore;

public interface TbSecondIndexScoreMapper {

    int deleteByPrimaryKey(Integer sid);

    int insert(TbSecondIndexScore record);

    TbSecondIndexScore selectByPrimaryKey(Integer sid);

    int updateByPrimaryKey(TbSecondIndexScore record);
    
    int multiInsert(List<TbSecondIndexScore> list);
}