package com.service;

import com.pojo.Room;

import java.util.List;

public interface RoomService {
    /**
     * 查找所有的房间信息
     */
    public List<Room> getAllRoom();
}
