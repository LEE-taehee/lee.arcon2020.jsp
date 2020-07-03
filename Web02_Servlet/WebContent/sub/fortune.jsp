<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fortune.jsp</title>
</head>
<body>
<%
	//샘플 운세 5개를 미리 배열에 준비하기
	String[] fortunes= {"동쪽으로 가면 귀인을 만나요",
			"로또가 당첨 될거에요","금전운 상승","일복터짐","연애운상승"};
	//Random 객체
	Random ran=new Random();
	//랜덤 객체 
	int ranNum=ran.nextInt(5);
%>
<p>오늘의 운세: <%=fortunes[ranNum] %></p>
</body>
</html>