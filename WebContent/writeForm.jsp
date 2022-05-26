<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WriteForm</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>등록폼</h2>
	<p>전화번호를 등록하려면<br>아래항목을 기입하고 "등록"버튼을 클릭하세요.</p>
	<form action="./insert.jsp" method="get" target="blank">
		<ol>
			<li>이름(name) <input type="text" name="name" value=""></li>
			<li>핸드폰(hp) <input type="text" name="hp" value=""></li>
			<li>회사(company) <input type="text" name="company" value=""></li>
		</ol>
		<button type="submit">등록</button>
	</form>
</body>
</html>