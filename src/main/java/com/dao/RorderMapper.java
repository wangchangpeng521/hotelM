package com.dao;

import com.pojo.Rorder;
import com.pojo.RorderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RorderMapper {
    long countByExample(RorderExample example);

    int deleteByExample(RorderExample example);

    int deleteByPrimaryKey(Integer oid);

    int insert(Rorder record);

    int insertSelective(Rorder record);

    List<Rorder> selectByExample(RorderExample example);

    Rorder selectByPrimaryKey(Integer oid);

    int updateByExampleSelective(@Param("record") Rorder record, @Param("example") RorderExample example);

    int updateByExample(@Param("record") Rorder record, @Param("example") RorderExample example);

    int updateByPrimaryKeySelective(Rorder record);

    int updateByPrimaryKey(Rorder record);
}