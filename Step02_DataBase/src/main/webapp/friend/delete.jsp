<%@page import="test.friend.dao.FriendDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int num=Integer.parseInt(request.getParameter("num"));
    	new FriendDao().delete(num);
    	String cPath=request.getContextPath();
    	response.sendRedirect(cPath+"/friend/list.jsp");
    %>
