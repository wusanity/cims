package com.cims.mapper;

import com.cims.bean.TbIndex;
import com.cims.bean.TbIndexExample;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbIndexMapper {
	List<TbIndex> selectIndex(ArrayList<String> list);
	
    int countByExample(TbIndexExample example);

    int deleteByExample(TbIndexExample example);

    int insert(TbIndex record);

    int insertSelective(TbIndex record);

    List<TbIndex> selectByExample(TbIndexExample example);

    int updateByExampleSelective(@Param("record") TbIndex record, @Param("example") TbIndexExample example);

    int updateByExample(@Param("record") TbIndex record, @Param("example") TbIndexExample example);
}