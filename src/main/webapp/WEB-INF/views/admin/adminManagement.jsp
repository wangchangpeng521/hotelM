<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>LarryBlogCMS-Home</title>
  <meta name="renderer" content="webkit"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
  <meta name="apple-mobile-web-app-status-bar-style" content="black"> 
  <meta name="apple-mobile-web-app-capable" content="yes">  
  <meta name="format-detection" content="telephone=no"> 
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/common/layui/css/layui.css" media="all">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/common/bootstrap/css/bootstrap.css" media="all">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/common/global.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" media="all">
  <style>
    body{margin: 10px;
        padding: 50px
    }
    .demo-carousel{height: 200px; line-height: 200px; text-align: center;}
    #table{
      margin: 20px;
    }
    
  </style>
</head>
<body>
  <table class="layui-table" id="table" lay-size="lg" lay-even="" lay-skin="line row">
    <tr>
      <th>用户名</th><th>用户名</th><th>用户名</th><th>编辑</th>
    </tr>
    <tr>
      <td></td><td></td><td></td>
      <td class="edit"><a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
          <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
          <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
      </td>
    </tr>
    <tr>
      <td></td><td></td><td></td>
      <td class="edit"><a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
          <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
          <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
      </td>
    </tr><tr>
      <td></td><td></td><td></td>
      <td class="edit"><a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
          <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
          <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
      </td>
    </tr>
    <tr>
      <td></td><td></td><td></td>
      <td class="edit"><a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
          <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
          <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
      </td>
    </tr>
  

  </table>

</body>
</html>