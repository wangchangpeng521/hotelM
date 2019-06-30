package com.controller;

import com.pojo.Rorder;
import com.service.RorderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/room")
public class RoomController {

    @Autowired
    private RorderService rorderService;


    @RequestMapping("/bookRoom")
    @ResponseBody
    public Map<String ,String> bookRoom(Rorder rorder){
        HashMap<String,String> Msg = new HashMap<>();
        //将获得数据插入数据表中
        rorderService.addOrder(rorder);

        Msg.put("msg","添加成功");
        return Msg;

    }
}
