<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao"  %>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="java.util.List"  %>
<% 
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	PersonVo personVo = new PersonVo(Integer.parseInt(id), name, hp, company);
	PhoneDao phonedao = new PhoneDao();
	phonedao.Update(personVo);
	
 	response.sendRedirect("./list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
</body>
</html>