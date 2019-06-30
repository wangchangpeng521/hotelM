package com.service;

import com.pojo.User;

import java.io.File;
import java.util.List;

public interface UserService {
    /**
     * 返回所有的房间信息
     */
    public List<User> getAllUser();
    /**
     * 根据用户名查找用户
     */
    public User getUserByName(String username);
    User getUserByNameAndPassword(User user);
}
