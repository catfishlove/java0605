<%@page import="java.util.List"%>
<%@page import="test.friend.dto.FriendDto"%>
<%@page import="test.friend.dao.FriendDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    FriendDao dao=new FriendDao();
    List<FriendDto> list= dao.getList();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/friend/list.jsp</title>
</head>
<body>
	<a href="insertform.jsp">친구 추가</a>
	<a href="${pageContext.request.contextPath }/friend/insertform.jsp">친구 추가</a>
	<h3>친구 목록 입니다.</h3>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%for (FriendDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getPhone() %></td>
				<td><a href="${pageContext.request.contextPath }/friend/delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
			</tr>
		<%} %>	
		</tbody>
	</table>
</body>
</html>