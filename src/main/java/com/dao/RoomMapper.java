package com.dao;

import com.pojo.Room;
import com.pojo.RoomExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RoomMapper {
    long countByExample(RoomExample example);

    int deleteByExample(RoomExample example);

    int insert(Room record);

    int insertSelective(Room record);

    List<Room> selectAll();

    List<Room> selectByExample(RoomExample example);

    int updateByExampleSelective(@Param("record") Room record, @Param("example") RoomExample example);

    int updateByExample(@Param("record") Room record, @Param("example") RoomExample example);
}