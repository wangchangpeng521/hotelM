package com.test;

import com.controller.UserController;
import com.pojo.User;
import com.service.UserService;
import com.shiro.UserRealm;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


public class MyLisener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent event) {
        System.out.println("========================================");
        ServletContext servletContext = event.getServletContext();
        WebApplicationContext webApplicationContext = WebApplicationContextUtils.getWebApplicationContext(servletContext);
        UserController userRealm = webApplicationContext.getBean(UserController.class);
        System.out.println(userRealm.getClass().getName());

    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
