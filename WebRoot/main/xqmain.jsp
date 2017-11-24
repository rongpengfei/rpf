<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>详情页面</title>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
td{
width: 100px

}
</style>
</head>

<body>
	<c:if test="${null!=shop }">
		<table>
			<tr>

				<th style="width:50px">序号</th>

				<th>消费日期</th>
				<th>消费金额</th>
				<th>消费项目</th>
			</tr>
			<c:forEach items="${shop}" varStatus="num" var="shop">
				<tr>

					<td style="width:50px">${num.index+1 }</td>

					<td>${shop.money_time }日</td>
					<td>${shop.money }元整</td>
					<td>${shop.money_so }</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<c:if test="${null!=shopingdate }">
		<table>
			<tr>

				<th style="width:50px">序号</th>

				<th>消费日期</th>
				<th>消费金额</th>
			</tr>
			<c:forEach varStatus="num" items="${shopingdate }" var="shopingdate">
				<tr>
					<td style="width:50px">${num.index+1 }</td>
					<td>${shopingdate.money_time }日</td>
					<td>${shopingdate.money }元整</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<c:if test="${null!=shopingwe }">
		<table>
			<tr>
				<th style="width:50px">序号</th>
				<th>几几年</th>
				<th>第几周</th>
				<th>消费金额</th>
			</tr>
			<c:forEach varStatus="num" items="${shopingwe }" var="shopingwe">
				<tr>
					<td style="width:50px">${num.index+1 }</td>
					<td>${shopingwe.y }年</td>
					<td>第${shopingwe.w }周</td>
					<td>${shopingwe.money }元整</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<c:if test="${null!=shopingye }">
		<table>
			<tr>
				<th style="width:50px">序号</th>
				<th>几几年</th>
				<th>消费金额</th>
			</tr>
			<c:forEach varStatus="num" items="${shopingye }" var="shopingye">
				<tr>
					<td style="width:50px">${num.index+1 }</td>
					<td>${shopingye.y }年</td>
					<td>${shopingye.money }元整</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>
