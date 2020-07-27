<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/ajax/my_form.jsp</title>
</head>
<body>
<form action="#" method="post" id="myForm">
	<input type="text" name="name" placeholder="이름 입력"/>
	<input type="text" name="phone" placeholder="전화번호 입력"/>
	<button type="submit">전송</button>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script>
$("#myForm").on("submit", function(){
	   var action=$(this).attr("action"); 
	   var method=$(this).attr("method"); 
	   var query=$(this).serialize();
	   console.log(query)
	   $.ajax({
	      method:method, 
	      url:action,
	      data:query,
	      success:function(data){
	         console.log(data);
	      }
	   });
	   
	   return false;
	});
</script>
</form>
</body>
</html>