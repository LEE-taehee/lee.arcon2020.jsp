<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/regular_ex8.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<script>
	//아래의 두 정규 표현식은 같다.
	var reg1=/[0-9]/;
	var reg2=/[\d]/;
	
	//아래의 두 정규 표현식은 같다.
	var reg2=/[^0-9]/;
	var reg22=/[\D]/; // \d와 \D는 반대 개념
	
	//아래의 두 정규 표현식은 같다.
	var reg3=/[a-zA-Z0-9]/;
	var reg32=/[\w]/;
	
	//아래의 두 정규 표현식은 같다.
	var reg4=/^a-zA-Z0-9/;
	var reg42=/[\W]/;
	
	//공백(띄어쓰기, tab, 개행기호)를 찾는 정규 표현식
	var reg5=/[\s]/;
	//공백(띄어쓰기, tab, 개행기호)이 아닌 문자를 찾는 정규 표현식
	var reg6=/[\S]/;
	
	//new를 이용한 정규 표현식 객체 생성
	var reg7=/^[a-z].{4,9}$/;
	var reg72=new RegExp('^[a-z].{4,9}$');
	
	// abc '문자'를 global로 찾는 정규 표현식 객체
	var reg8=/abc/g;
	var reg82=new RegExp("abc", "g");
	
	var reg9=/[\w]+/; //특수문자가 아닌 글자를 하나 이상
	var reg92=new RegExp("^[\\w]+$");
</script>
</body>
</html>






