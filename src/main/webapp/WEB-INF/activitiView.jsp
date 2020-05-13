<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>评价表审核</title>
    <link rel="stylesheet" href="common/css/base.css">
    <link rel="stylesheet" href="common/css/common.css">
    <link rel="stylesheet" href="css/assessment.css">
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
    <c:if test="${not empty hashMap2}">
   <form action="#" id="startInstance" style="position:relative;left:350px" id="gTemplate">
	    <table bgcolor=white border="2" cellspacing="0" width="50%" height="150">
	        <c:if test="${status==1}">
	        	<caption style="font-size:20px;text-align:center;">课程评价表</caption>
	        </c:if>
	        <c:if test="${status==2}">
	        	<caption style="font-size:20px;text-align:center;">实训评价表</caption>
	        </c:if>
	        <tr><th style="text-align:center;font-family:黑体;">一级指标</t> <th style="text-align:center;font-family:黑体;">二级指标</th></tr>
	                <c:forEach items="${hashMap2}" var="map">
	                <tr><td rowspan="${fn:length(map.value)}" style="width:160px;">${map.key.indicatorName}   ${map.key.weight}%</td><td>${map.value[0].indicatorName}   ${map.value[0].weight}%</td></tr>
	                    <c:forEach items="${map.value}" var="template" begin="1">
	                        <tr><td>${template.indicatorName}   ${template.weight}%</td></tr>
	                    </c:forEach>
	                </c:forEach>
	    </table>
	    <br>
	    </form>
	    <form action="#" id="handleTask" style="position:relative;left:350px">
		    <div>	
			    <textarea rows="5" cols="103" placeholder="意见" id="opinion" name="opinion"></textarea>
			    <!-- <input id="opinion" name="opinion"> -->
		    </div> 
		    <br>
		    <input type="hidden" name="status" value="${status}">
		    <input type="button" id="rejectBtn" onclick="reject();" style="font-size: 25px;font-weight: 700;text-align:center;position:relative;left:300px;" value="打回">
		    <input type="button" id="agreeBtn" onclick="agree();" style="font-size: 25px;font-weight: 700;text-align:center;position:relative;left:350px;" value="通过">
   		</form>
   </c:if>
</div>
<div class="footer">
</div>
</body>
<script src="common/bs/jquery2.1.4/dist/jquery.js"></script>
<script src="common/bs/angular/angular.js"></script>
<script src="js/assessment.js"></script>
<script type="text/javascript"  charset="utf-8">
	function agree(){
		var form = document.getElementById("handleTask");
		form.action="/cims/completeTask";
		form.method="post";
		form.submit();
	}
	function reject(){
		var form = document.getElementById("handleTask");
		form.action="/cims/rejectTask";
		form.method="post";
		form.submit();
	}
</script>
</html>
