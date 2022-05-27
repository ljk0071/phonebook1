<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@	page import="com.javaex.vo.PersonVo" %>
<%@	page import="java.util.List" %>
<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.SelectAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<body>

	<h1>전화번호부</h1>
	<h2>리스트</h2>
	
	<p>입력한 정보 내역입니다.</p>
	<%for(int i=0;i<personList.size();i++) {%>
	<table border="1">
		<tr>
			<td>이름(name)</td>
			<td><%=personList.get(i).name %></td>
		</tr>
		<tr>
			<td>핸드폰(hp)</td>
			<td><%=personList.get(i).hp %></td>
		</tr>
		<tr>
			<td>회사(company)</td>
			<td><%=personList.get(i).company %></td>
		</tr>
		<tr>
			<td><a href="./updateform.jsp?id=<%=personList.get(i).personId %>" target="blank">수정</a></td>
			<td><a href="./delete.jsp?id=<%=personList.get(i).personId %>">삭제</a></td>
		</tr>
	</table>
	<br>
	<%} %>
	 
	<br>
	
	<a href="./writeForm.jsp" target="blank">추가번호 등록</a>
	
	

</body>
</html>