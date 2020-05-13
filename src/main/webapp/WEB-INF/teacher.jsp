<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员界面</title>
    <link rel="stylesheet" href="common/css/base.css">
    <link rel="stylesheet" href="common/css/common.css">
    <link rel="stylesheet" href="css/student.css">
    <style>
        .outer {
            height: 1000px;
            width: 100%;
            opacity:0.7;
        }

        .menu {
            height: 500px;
            width: 10%;
            background: antiquewhite;
        }

        .title {
            background: cornflowerblue;
            line-height: 40px;
        }
        .hide{
            display: none;
        }
        hr{
            line-height: 10px;
        }
    </style>
</head>
<body >
<div class="header">
    <img src="common/images/logo2.jpg" alt="logo" class="logo">
    <h1>武汉商学院</h1>
    <img src="common/images/good_study.jpg" alt="描述" class="desc">
</div>
<div class="content">

    <!--<h2>当前可评教的科目及教师：</h2>-->

    
	<div class="outer">
		<div class="userinfo">
        <p>当前用户: <span>${userInfo.tname}</span></p>
         <button id="logout" onclik="window.location.href='/cims/logout'" class="logout">退出</button>
    	</div >
	        <div class="menu">
	            <div class="item">
	                <div class="title" style="text-align:center;font-size:25px;">待办</div>
	                <div class="con">
	                    <div><a href="/cims/queryTask?status=1" style="color:#0a68ae; font-size:20px;">课程评价表</a></div>
	                    <div><a href="/cims/queryTask?status=2" style="color:#0a68ae; font-size:20px;">实训评价表</a></div>
	                </div>
	            </div>
	            <hr>
	            <div class="item">
	                <div class="title" style="text-align:center;font-size:25px;">评价结果</div>
	                <div class="con">
	                    <div><a href="/cims/view" style=" color:#0a68ae; font-size:20px;">可视化</a></div>
	                </div>
	            </div>
	        </div>
	</div>
</div>
<div class="footer">
    <!--<p>本页面由周口师范14级网络工程1班中央戏精学院大力支持</p>-->
</div>
</body>
<script src="common/bs/jquery2.1.4/dist/jquery.js"></script>
<script src="common/bs/angular/angular.js"></script>
<script src="js/student.js"></script>
</html>