<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录页面</title>
    <link rel="stylesheet" href="common/css/base.css" >
    <link rel="stylesheet" href="common/css/common.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div class="header">
    <img src="common/images/logo2.jpg" alt="logo" class="logo">
    <h1>武汉商学院</h1>
    <img src="common/images/good_study.jpg" alt="描述" class="desc">
</div>
<div class="content">
    <div class="login">
        <form action="/cims/login" id="loginForm">
            <div class="title">高校教学信息管理系统</div>
            <div class="identity" style="font-size:14px;">
                <span>身  份</span>
                <input type="radio" name="identity" value="teacher" id="student" checked><label for="student" style="font-size:14px;">教师</label>
                <input type="radio" name="identity" value="leader" id="teacher"><label for="teacher" style="font-size:14px;">管理员</label>
                <input type="radio" name="identity" value="manager" id="leader"><label for="leader" style="font-size:14px;">系统管理员</label>
            </div>
            <div class="account">
                <span>账  号</span>
                <input type="text" name="userid" id="userid" placeholder="请输入你的工号/学号">
            </div>
            <div class="password">
                <span>密  码</span>
                <input type="password" name="password" id="pwd" placeholder="请输入你的密码">
            </div>
            <div class="login_btn">
            	<button id="login" type="button" onclick = "checkUser();">登录</button>
          
            </div>
        </form>
    </div>
</div>

</body>
<script src="common/bs/jquery2.1.4/dist/jquery.js"></script>
<script type="text/javascript">
	function checkUser(){ 
	    var result = document.getElementById("userid").value; 
	    var password = document.getElementById("pwd").value;
	
	if(result == ""){ 
	    alert("用户名不能为空"); 
	    return false; 
	} 
	if(password == "" ){ 
	    alert("密码不能为空"); 
	    return false; 
	} 
	    document.getElementById("loginForm").submit(); 
	}
</script>

<!-- <script>
$(function(){
    $("#login").click(function(){
        login();
    })
    $("#pwd").keydown(function() {
        if (event.keyCode == "13") {
            login();
        }
    })


    function login(){
        var type = $("[name='identity']:checked").val();
        var id = $("#userid").val();
        var pwd = $("#pwd").val();

        if(id == '' || pwd==''){
            alert("用户名或密码不能为空！")
        }else if(type == "student"){
            var reg1 = /^student+[0-9]$/;
            if(!reg1.test(id) || pwd!="123456"){
                alert("用户名或密码输入有误！")
            }else{
                var stu_id = id.split('student')[1];
                window.location.href = "./student.html?stu_id=" + stu_id;
            }
        }else if(type == "teacher"){
            var reg = /^teacher+[0-9]$/;
            if(!reg.test(id) || pwd!="123456"){
                alert("用户名或密码输入有误！")
            }else{
                console.log(id)
                var tea_id = id.split('teacher')[1];
                window.location.href = "./teacher.html?tea_id=" + tea_id;
            }
        }else if(type == "leader"){
            if(id!="leader" || pwd!="123456"){
                alert("用户名或密码输入有误！")
            }else{
                window.location.href = "./leader.html";
            }
        }
    }
})
</script>
 -->
</html>