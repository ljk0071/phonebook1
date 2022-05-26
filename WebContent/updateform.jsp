<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao"  %>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="java.util.List"  %>
<% 
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateForm</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>수정폼</h2>
	<p>전화번호를 수정하려면<br>아래항목을 기입하고 "수정"버튼을 클릭하세요.</p>
	<form action="./update.jsp" method="get" target="blank">
		<ol>
			<li>회원번호(id) <input type="text" name="id" value=<%=id %>></li>
			<li>이름(name) <input type="text" name="name" value=""></li>
			<li>핸드폰(hp) <input type="text" name="hp" value=""></li>
			<li>회사(company) <input type="text" name="company" value=""></li>
		</ol>
		<button type="submit">수정</button>
	</form>
</body>
</html>