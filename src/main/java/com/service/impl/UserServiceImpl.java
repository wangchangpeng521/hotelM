package com.service.impl;

import com.dao.UserMapper;
import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> getAllUser() {
        return null;
    }

    @Override
    public User getUserByName(String username) {
        return userMapper.selectByUserName(username);
    }

    @Override
    public User getUserByNameAndPassword(User user) {
        return userMapper.getUser(user);
    }
}
