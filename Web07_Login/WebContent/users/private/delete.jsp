<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 탈퇴할 회원의 아이디를 읽어온다.
	
	//2. DB에서 삭제한다.
	
	//3. 로그아웃 처리를 한다.
	
	//4. 응답한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/delete.jsp</title>
</head>
<body>
<div class="container">
	<p>
		<strong><%= %></strong> 님 탈퇴 처리 되었습니다.
		<a href="${pageContext.request.contextPath}/index.jsp">확인</a>
	</p>
</div>
</body>
</html>