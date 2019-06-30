package com.service.impl;

import com.dao.RoomMapper;
import com.pojo.Room;
import com.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class RoomServiceImpl implements RoomService {

    @Autowired
    private  RoomMapper roomMapper;

    @Override
    public List<Room> getAllRoom() {

        List<Room> list = roomMapper.selectAll();
        if(list ==null){
            System.out.println("没有查到数据o");
        }
        return list;
    }

}
