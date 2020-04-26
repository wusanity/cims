<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>评价数据可视化</title>
    <link rel="stylesheet" href="common/css/base.css">
    <link rel="stylesheet" href="common/css/common.css">
    <link rel="stylesheet" href="css/student.css">
</head>
<body ng-app="myApp" ng-controller="myCtrl">
<div class="header">
    <img src="common/images/logo.jpg" alt="logo" class="logo">
    <h1>武汉商学院</h1>
    <img src="common/images/good_study.jpg" alt="描述" class="desc">
</div>
<div class="content">

    <h2>可视化课程：</h2>

    <div class="userinfo">
        <p>当前用户: <span>${userInfo.tname}</span></p>
        <button ng-click="logout()" class="logout">退出</button>
    </div>
    <ul>
	    <c:forEach items="${viewCustoms}" var="temp">
	    	<li >
	            <a  class="clearfix" target="_self" href="/cims/viewAble?cid=${temp.cid}&time=${temp.time}">
	                <p class="course_name">${temp.className}</p>
	                <p class="course_time">${temp.time}</p>
	                <p class="teacher_name">${temp.teacher}</p>
	                <p class="status" ng-class="{true:'complete',false:'uncomplete'}[list.status]">查看</p>
	            </a>
        	</li>
	    </c:forEach>
    </ul>
</div>
</body>
<script src="common/bs/jquery2.1.4/dist/jquery.js"></script>
<script src="common/bs/angular/angular.js"></script>
<script src="js/student.js"></script>
</html>