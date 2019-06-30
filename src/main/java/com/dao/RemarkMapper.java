package com.dao;

import com.pojo.Remark;
import com.pojo.RemarkExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RemarkMapper {
    long countByExample(RemarkExample example);

    int deleteByExample(RemarkExample example);

    int deleteByPrimaryKey(Integer kid);

    int insert(Remark record);

    int insertSelective(Remark record);

    List<Remark> selectByExample(RemarkExample example);

    Remark selectByPrimaryKey(Integer kid);

    int updateByExampleSelective(@Param("record") Remark record, @Param("example") RemarkExample example);

    int updateByExample(@Param("record") Remark record, @Param("example") RemarkExample example);

    int updateByPrimaryKeySelective(Remark record);

    int updateByPrimaryKey(Remark record);
}