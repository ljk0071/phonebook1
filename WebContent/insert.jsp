<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao"  %>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="java.util.List"  %>
<% 
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	/*
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	//personvo만들 때 name hp company 넣어주고
	//dao.insert에다가 personvo를 넣어준다
	PersonVo personVo = new PersonVo(name, hp, company);
	PhoneDao phonedao = new PhoneDao();
	System.out.println(personVo);
	phonedao.Insert(personVo);
	
	List<PersonVo> personList = phonedao.Select();
	response.sendRedirect("./list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
</head>
<body>
	
</body>
</html>