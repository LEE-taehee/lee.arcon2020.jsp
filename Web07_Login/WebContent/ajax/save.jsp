<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=request.getParameter("name");
	String phone=request.getParameter("phone");
	System.out.println(name + "|" + phone);
	//작업의 성공여부라고 가정하자
	boolean result=true;
	//클라이언트에게 응답할 문자열이라고 가정하자
%>
{"isSuccess":<%=result %>,"name":"<%=name %>"}