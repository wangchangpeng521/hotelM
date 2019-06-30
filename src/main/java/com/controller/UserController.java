package com.controller;

import com.pojo.Room;
import com.pojo.User;
import com.service.RoomService;
import com.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private RoomService roomService;

    @Autowired
    private UserService userService;
    @RequestMapping("/login")
    public String login(User user,HttpServletRequest request){
        //采用shiro进行身份验证
       /* Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(user.getUsername(), user.getPassword());
        try {
            subject.login(usernamePasswordToken);
            usernamePasswordToken.setRememberMe(true);
        }catch (AuthenticationException e){
            request.setAttribute("msg","用户名或者密码错误");


        }*/
       User u = userService.getUserByNameAndPassword(user);
       if(u==null){
           request.setAttribute("msg","用户名或者密码错误！");
           return "forward:/index";
       }
       request.getSession().setAttribute("user",u);
        return "forward:/listHotel";
    }
    //先不用ajax

    @RequestMapping("/listHotel")
    public String login(HttpServletRequest request){
        List<Room> rooms = roomService.getAllRoom();
        request.setAttribute("rooms",rooms);
        return "listHotel";
    }



}
