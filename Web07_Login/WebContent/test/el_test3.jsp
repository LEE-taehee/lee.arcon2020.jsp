<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/el_test3.jsp</title>
</head>
<body>
<h1>EL을 이용해서 GET방식 파라미터 or POST 방식 파라미터도 추출 할 수 있다.</h1>
<p> 번호: <strong>${param.num }</strong></p>
<p> 이름: <strong>${param.name }</strong></p>
<%-- EL을 사용하지 않는다면 아래의 작업과 같다 --%>
<%
	String num=request.getParameter("num");
	String name=request.getParameter("name");
%>
<p> 번호: <strong><%=num %></strong></p>
<p> 이름: <strong><%=name %></strong></p>

<h1>EL을 이용해서 쿠키 value도 추출 할 수 있다.</h1>
<p>쿠키에 savedMsg라는 키값으로 저장되어 있는지 여부: <strong>${not empty cookie.savedMsg }</strong></p>
<p>쿠키에 savedMsg라는 키값으로 저장된 값: <strong>${cookie.savedMsg.value }</strong></p>
</body>
</html>