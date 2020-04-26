package com.cims.mapper;

import java.util.ArrayList;

import com.cims.bean.TbClassScoreInfo;

public interface TbClassScoreInfoMapper {

    int deleteByPrimaryKey(String sid);

    int insert(TbClassScoreInfo record);

    TbClassScoreInfo selectByPrimaryKey(String sid);

    int updateByPrimaryKey(TbClassScoreInfo record);
    
    ArrayList<TbClassScoreInfo> selectByCid(ArrayList<String> cid);
    
    ArrayList<TbClassScoreInfo> selectAll();
}