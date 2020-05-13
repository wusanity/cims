package com.cims.mapper;

import com.cims.bean.TbScoreRank;
import com.cims.bean.TbScoreRankCustom;
import com.cims.bean.TbScoreRankExample;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbScoreRankMapper {
    int countByExample(TbScoreRankExample example);

    int deleteByExample(TbScoreRankExample example);

    int deleteByPrimaryKey(Integer rid);

    int insert(TbScoreRank record);

    int insertSelective(TbScoreRank record);

    List<TbScoreRank> selectByExample(TbScoreRankExample example);

    TbScoreRank selectByPrimaryKey(Integer rid);

    int updateByExampleSelective(@Param("record") TbScoreRank record, @Param("example") TbScoreRankExample example);

    int updateByExample(@Param("record") TbScoreRank record, @Param("example") TbScoreRankExample example);

    int updateByPrimaryKeySelective(TbScoreRank record);

    int updateByPrimaryKey(TbScoreRank record);
    
    List<TbScoreRankCustom> selectCustoms();

	int multiInsert(ArrayList<TbScoreRank> rankList);
	
	TbScoreRank selecTbByCid(String cid);
	
	List<TbScoreRank> selectAll();
	
}