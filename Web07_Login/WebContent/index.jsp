<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<div class="container">
	<c:if test="${not empty id }">
		<p>
			<a href="users/private/info.jsp">${id }</a> 님 로그인중...
			<a href="users/logout.jsp">로그 아웃</a>
		</p>
	</c:if>
	<h1>인덱스 페이지 입니다.</h1>
	<ul>
		<li><a href="users/signup_form.jsp">회원가입</a></li>
		<li><a href="users/loginform.jsp">로그인</a></li>
		<li><a href="test/buy.jsp?code=111">111번 상품 구입 테스트</a></li>
		<li><a href="ajax/test01.jsp">Ajax 테스트</a></li>
		<li><a href="ajax/test02.jsp">Ajax 테스트2</a></li>
		<li><a href="ajax/test03.jsp">Ajax 테스트3</a></li>
		<li><a href="file/list.jsp">자료실 목록 보기</a></li>
		<li><a href="gallery/test.jsp">이미지 업로드 테스트</a></li>
		<li><a href="gallery/test2.jsp">ajax 이미지 업로드 테스트</a></li>
		<li><a href="gallery/list.jsp">이미지 겔러리</a></li>
		<li><a href="test/editor.jsp">SmartEditor  테스트</a></li>
		<li><a href="cafe/list.jsp">카페 글 목록 보기</a></li>
		<li><a href="test/scroll.jsp">scroll 테스트</a></li>
		<li><a href="test/cookie_form.jsp">쿠키 test1</a></li>
		<li><a href="test/cookie_form2.jsp">쿠키 test2</a></li>
		<li><a href="test/cookie_form3.jsp">쿠키 test3</a></li>
		<li><a href="test/popup.jsp">팝업 test1</a></li>
		<li><a href="test/popup2.jsp">팝업 test2</a></li>
		<li><a href="test/el_test.jsp">EL test1</a></li>
		<li><a href="test/jstl_test.jsp">JSTL test1</a></li>
		<li><a href="test/regular_ex.jsp">regular_ex</a></li>
		<li><a href="fortune">오늘의 운세[MVC 테스트]</a></li>
		<li><a href="todo">할일 목록보기[MVC 테스트]</a></li>
		<li><a href="file">파일 정보보기[MVC 테스트]</a></li>
		<li><a href="file_list">파일 목록보기[MVC 테스트]</a></li>
	</ul>
</div>
</body>
</html>
