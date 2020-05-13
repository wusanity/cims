<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>自定义指标</title>
    <link rel="stylesheet" href="common/css/base.css">
    <link rel="stylesheet" href="common/css/common.css">
    <link rel="stylesheet" href="css/assessment.css">
    <style>
       .choice{
           position: relative;
       }
       .choice .radio{
           position: relative;
           display: inline-block;
           font-weight: 400;
           color: #0c4757;
           padding-left: 25px;
           cursor: pointer;
       }
       .choice .radio input{
           position: absolute;
           left: -9999px;
       }
       .choice .radio i{
           display: block;
           position: absolute;
           top: 6px;
           left: 0;
           width: 15px;
           height: 15px;
           outline: 0;
           border: 1px solid #47a8c0;
           background: #9cd9e8;
           border-radius: 50%;
           transition: border-color .3s
           -webkit-transition: border-color .3s;
       }
       .choice .radio input:checked+i{
           border-color: #0c4757;
       }
       .choice .radio input+i:after{
           position: absolute;
           content: '';
           top: 3px;
           left: 3px;
           width: 9px;
           height: 9px;
           border-radius: 50%;
           background-color: #47a8c0;
           opacity: 0;
           transition: opacity .1s;
           -webkit-transition: opacity .1s;
       }
       .choice .radio input:checked+i:after{
           opacity: 1;
       }
       input{
           border: 1px solid #ccc;
           padding: 7px 0px;
           border-radius: 3px;
           padding-left:5px;
           -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
           box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
           -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
           -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
           transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
       }
       input:focus{
           border-color: #66afe9;
           outline: 0;
           -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
           box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
       }
       input[type="checkbox"] {
           width: 20px;
           height: 20px;
           display: inline-block;
           text-align: center;
           vertical-align: middle;
           line-height: 18px;
           margin-right: 10px;
           position: relative;
       }

       input[type="checkbox"]::before {
           content: "";
           position: absolute;
           top: 0;
           left: 0;
           background: #fff;
           width: 100%;
           height: 100%;
           border: 1px solid #d9d9d9;
           border-radius: 4px;
       }

       input[type="checkbox"]:checked::before {
           content: "\2713";
           background-color: #fff;
           position: absolute;
           top: 0;
           left: 0;
           width: 100%;
           border: 1px solid #7D7D7D;
           border-radius:4px;
           color: #7D7D7D;
           font-size: 20px;
           font-weight: bold;
       }
   </style>
</head>
<body >
<div class="header">
    <img src="common/images/logo2.jpg" alt="logo" class="logo">
    <h1>武汉商学院</h1>
    <img src="common/images/good_study.jpg" alt="描述" class="desc">
</div>
<div class="content" >
    <div class="userinfo">
        <p>当前用户: <span>${userInfo.tname}</span></p>
        <button id="logout" onclik="window.location.href='/cims/logout'" class="logout">退出</button>
    </div>
    <div style="position:relative;left:550px;top: 100px">
        <form method="post" action="/cims/addIndex" id="addIndex">
            <div class="choice">
                类型：
                <label class="radio">实训教学<input type="radio" name="radio" value="1" checked><i></i></label>
                <label class="radio">期末考核<input type="radio" value="2" name="radio"><i></i></label>
                <label class="radio">课程教学<input type="radio" value="3" name="radio"><i></i></label>
                <label class="radio">作业环节<input type="radio" value="4" name="radio"><i></i></label>
            </div>
            <br>
            一级指标：<input type="text" name="first" id="first" style="width:340px;" onblur="CheckUserName()"><span id="span01"></span><br/><br/>
            二级指标：<a href="#" id="AddMoreTextBox" >添加二级指标</a>
            <br/>
            <br>
            <div id="InputsWrapper">
                <input type="checkbox" style="vertical-align:12px;" name="checkbox"><textarea rows="3" cols="52" name="second_1"></textarea>
                <br>
                <br>
                <input type="checkbox" style="vertical-align:12px;" name="checkbox"><textarea rows="3" cols="52" name="second_2"></textarea>
                <br>
                <br>
                <input type="checkbox" style="vertical-align:12px;" name="checkbox"><textarea rows="3" cols="52" name="second_3"></textarea>
                <br>
                <br>
            </div>
            <input type="button" onclick="submitTemplate();" style="font-size: 25px;font-weight: 700;text-align:center;position:relative;left:180px;" value="提交">
        </form>
    </div>
</div>
<div class="footer">
    <!--<p>本页面由周口师范14级网络工程1班中央戏精学院大力支持</p>-->
</div>
</body>
<script src="common/bs/jquery2.1.4/dist/jquery.js"></script>
<script src="common/bs/angular/angular.js"></script>
<script src="js/assessment.js"></script>
<script src="js/check.js"></script>
<script type="text/javascript">
	function submitTemplate(){ 
	    document.getElementById("addIndex").submit(); 
	}
    $(document).ready(function () {
        var InputCount=3;
        $("#AddMoreTextBox").click(function (e)
        {
            InputCount++;
            $("#InputsWrapper").append('<label></label><input type="checkbox" style="vertical-align:12px;" name="checkbox"><textarea rows="3" cols="52" name="second_' + InputCount + '"/><br/><br/>');
        });
    });
</script>
</script>
</html>