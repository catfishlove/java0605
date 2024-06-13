<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 writer, content, pwd 를 추출한다
	String writer=request.getParameter("writer");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
	
	//2. DB 에 저장한다
	//글정보를 GuestDto 에 담는다.
	GuestDto dto=new GuestDto();
	dto.setWriter(writer);
	dto.setContent(content);
	dto.setPwd(pwd);
	//GuestDao 객체의 참조값 얻어오기
	GuestDao dao=GuestDao.getInstance();
	boolean isSuccess=dao.insert(dto);
	
	//3. 응답한다 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/insert.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
	<h3>알림</h3>
	<%if(isSuccess){ %>
		<p class="alert alert-success"> 
		<strong><%=writer %></strong>님의 정보를 저장했습니다.
			<a class="alert-link" href="${pageContext.request.contextPath }/guest/list.jsp">목록보기</a>
		</p>
	<%}else{ %>
		<p class="alert alert-danger">
			 방명록 저장 실패!
			<a class="alert-link" href="${pageContext.request.contextPath }/guest/insertform.jsp">다시 작성</a>
		</p>
	<%} %>
</div>
</body>
</html>





