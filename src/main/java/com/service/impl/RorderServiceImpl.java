package com.service.impl;

import com.dao.RorderMapper;
import com.pojo.Rorder;
import com.service.RorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RorderServiceImpl implements RorderService {

    @Autowired
    private RorderMapper rorderMapper;

    @Override
    public void addOrder(Rorder rorder) {

        rorderMapper.insertSelective(rorder);
    }
}
