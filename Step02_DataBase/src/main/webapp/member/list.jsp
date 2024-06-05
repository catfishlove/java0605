<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//MemberDao객체를 이용해서 회원 목록을 얻어온다. 
    	MemberDao dao=new MemberDao();
    	List<MemberDto> list=dao.getList();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/list.jsp</title>
</head>
<body>
	<h3>회원 목록 입니다.</h3>
	<table>
	
	</table>
</body>
</html>