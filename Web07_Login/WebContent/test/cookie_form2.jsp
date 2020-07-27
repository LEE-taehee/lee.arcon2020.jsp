<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/cookie_form2.jsp</title>
</head>
<body>
<h1>쿠키 테스트</h1>
<p>
	클라이언트의 웹브라우저에 특정 key값으로 문자열을 저장 할 수 있다.
	저장 할 수 있는 문자열은 Base64인코딩 형식의 64가지의 문자열을 저장 할 수 있다.
	(톰캣 8.5는 자동으로 처리되어서 인코딩할 필요가 없다.)
</p>
<form action="cookie_save@.jsp" method="post">
	<label for="msg">웹브라우저(client side)에 저장할 문자열</label>
	<input type="text" name="msg" id="msg"/>
	<button type="submit">저장</button>
</form>
</body>
</html>