package com.cims.mapper;

import com.cims.bean.TbClassInfo;
import com.cims.bean.TbClassInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbClassInfoMapper {
    int countByExample(TbClassInfoExample example);

    int deleteByExample(TbClassInfoExample example);

    int deleteByPrimaryKey(String cid);

    int insert(TbClassInfo record);

    int insertSelective(TbClassInfo record);

    List<TbClassInfo> selectByExample(TbClassInfoExample example);

    TbClassInfo selectByPrimaryKey(String cid);
    
    List<TbClassInfo> selectByUid(String uid); 

    int updateByExampleSelective(@Param("record") TbClassInfo record, @Param("example") TbClassInfoExample example);

    int updateByExample(@Param("record") TbClassInfo record, @Param("example") TbClassInfoExample example);

    int updateByPrimaryKeySelective(TbClassInfo record);

    int updateByPrimaryKey(TbClassInfo record);
    
    List<TbClassInfo> selectAll();
}