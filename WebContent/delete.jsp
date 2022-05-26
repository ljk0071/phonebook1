<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao"  %>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="java.util.List"  %>
<% 
	String id = request.getParameter("id");
	/*
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	//personvo만들 때 name hp company 넣어주고
	//dao.insert에다가 personvo를 넣어준다
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.Delete(Integer.parseInt(id));
	response.sendRedirect("./list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
</body>
</html>