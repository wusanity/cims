<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>评价指标选取</title>
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
   <form action="/cims/gTemplate" id="gTemplate" style="position:relative;left:350px" id="gTemplate">
    	<input type="hidden" name="type" value="${type}"/>
	    <table bgcolor=white border="2" cellspacing="0" width="50%" height="150">
	        <caption style="font-size:20px;text-align:center;">${str}</caption>
	        <tr><th style="text-align:center;font-family:黑体;">一级指标</t> <th style="text-align:center;font-family:黑体;">二级指标</th></tr>
	                <c:forEach items="${hashMap}" var="map">
	                <tr><td rowspan=${fn:length(map.value)} style="width:160px;"><input type="checkbox" name="fItem" value="${map.key.iid}">${map.key.indicatorName} <input name="${map.key.iid}" value="" style="width: 37px;">%</td><td><input type="checkbox" name="sItem" value="${map.value[0].iid}">${map.value[0].indicatorName}<input name="${map.value[0].iid}" value="" style="width: 37px;">%</td></tr>
	                    <c:forEach items="${map.value}" var="template" begin="1">
	                        <tr><td><input type="checkbox" name="sItem" value="${template.iid}" >${template.indicatorName} <td></tr>
	                    </c:forEach>
	                </c:forEach>
	    </table>
	    <input type="button" onclick="submitTemplate();" style="font-size: 25px;font-weight: 700;text-align:center;position:relative;left:350px;" value="提交">
   </form>
</div>
<div class="footer">
    <!--<p>本页面由周口师范14级网络工程1班中央戏精学院大力支持</p>-->
</div>
</body>
<script src="common/bs/jquery2.1.4/dist/jquery.js"></script>
<script src="common/bs/angular/angular.js"></script>
<script src="js/assessment.js"></script>
<script type="text/javascript">
	function submitTemplate(){ 
	    document.getElementById("gTemplate").submit(); 
	}
</script>
</html>