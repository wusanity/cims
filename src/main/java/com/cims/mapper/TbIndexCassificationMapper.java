package com.cims.mapper;

import com.cims.bean.TbIndexCassification;
import com.cims.bean.TbIndexCassificationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbIndexCassificationMapper {
    int countByExample(TbIndexCassificationExample example);

    int deleteByExample(TbIndexCassificationExample example);

    int deleteByPrimaryKey(String classificationId);

    int insert(TbIndexCassification record);

    int insertSelective(TbIndexCassification record);

    List<TbIndexCassification> selectByExample(TbIndexCassificationExample example);

    TbIndexCassification selectByPrimaryKey(String classificationId);

    int updateByExampleSelective(@Param("record") TbIndexCassification record, @Param("example") TbIndexCassificationExample example);

    int updateByExample(@Param("record") TbIndexCassification record, @Param("example") TbIndexCassificationExample example);

    int updateByPrimaryKeySelective(TbIndexCassification record);

    int updateByPrimaryKey(TbIndexCassification record);
}