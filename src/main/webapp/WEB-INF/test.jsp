<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
</head>

<body>
<table bgcolor=white border="1" cellspacing="0" width="50%" height="150">
        <caption>纵向合并单元格</caption>
        <tr><th>一级指标</t> <th>二级指标</th></tr>
                <c:forEach items="${hashMap}" var="map">
                <tr><td rowspan=${fn:length(map.value)}><input type="checkbox" name="item" value="f${map.key.iid}">${map.key.indicatorName}<input name="${map.key.iid}" value=""></td><td><input type="checkbox" name="item">${map.value[0].indicatorName}<input name="${map.value[0].iid}" value=""></td></tr>
                    <c:forEach items="${map.value}" var="template" begin="1">
                        <tr><td><input type="checkbox" name="s${map.key.iid}">${template.indicatorName}<input name="${template.iid}" value=""></td></tr>
                    </c:forEach>
                </c:forEach>
    </table>
</body>
</html>