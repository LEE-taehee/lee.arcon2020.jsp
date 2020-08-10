<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
<%
	request.setAttribute("price", 35000);
%>
</head>
<body>
	<fmt:formatNumber value="${price }" type="currency" currencySymbol="$"/>원
</body>
</html>