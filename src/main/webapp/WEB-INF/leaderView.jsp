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
        <button ng-click="logout()" class="logout">退出</button>
    </div>
    
   <form action="" id="startInstance" style="position:relative;left:350px" id="gTemplate">
	    <table bgcolor=white border="2" cellspacing="0" width="50%" height="150">
	    	<c:if test="${status==1}">
	        	<caption style="font-size:20px;text-align:center;">课程评价表</caption>
	        </c:if>
	        <c:if test="${status==2}">
	        	<caption style="font-size:20px;text-align:center;">实训评价表</caption>
	        </c:if>
	        <tr><th style="text-align:center;font-family:黑体;height: 5px">一级指标</t> <th style="text-align:center;font-family:黑体;">二级指标</th></tr>
	                <c:forEach items="${hashMap3}" var="map">
	                <tr><td rowspan="${fn:length(map.value)}" style="width:160px;">${map.key.indicatorName}   ${map.key.weight}%</td><td>${map.value[0].indicatorName}   ${map.value[0].weight}%</td></tr>
	                    <c:forEach items="${map.value}" var="template" begin="1">
	                        <tr><td>${template.indicatorName}   ${template.weight}%</td></tr>
	                    </c:forEach>
	                </c:forEach>
	    </table>
	    <c:if test="${not empty flag}">
	    	<input type="button" onclick="window.location.href='/cims/startInstance?status=${status}'" style="font-size: 25px;font-weight: 700;text-align:center;position:relative;left:350px;" value="发表">
   		</c:if>
   		<c:if test="${empty flag}">
	   		<c:if test="${status=='1'}">
		   		<label>教研室主任意见：${director1}</label>
		   		<br>
		   		<label>院长意见：${president1}</label>
		   	</c:if>
		   	<c:if test="${status=='2'}">
		   		<label>教研室主任意见：${director2}</label>
		   		<br>
		   		<label>院长意见：${president2}</label>
		   	</c:if>
	   	</c:if>
   </form>
   
</div>
<div class="footer">
</div>
</body>
<script src="common/bs/jquery2.1.4/dist/jquery.js"></script>
<script src="common/bs/angular/angular.js"></script>
<script src="js/assessment.js"></script>
<script type="text/javascript">
	function submitTemplate(){ 
	    document.getElementById("startInstance").submit(); 
	}
</script>
</html>
