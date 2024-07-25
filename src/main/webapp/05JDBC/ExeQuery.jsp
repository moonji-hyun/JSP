<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ExeQuery.jsp : 정적 쿼리문으로 회원 조회</title>
</head>
<body>
	<h2> 회원 목록 조회 테스트 (executeQuery() 사용) </h2>
	<%
	JDBConnect jdbc = new JDBConnect(); // db에 연결 1,2단계
	
	String sql = "SELECT id, pass, name, regdate FROM member";
	Statement stmt  = jdbc.connection.createStatement(); // 쿼리문 생성  3단계
	
	ResultSet rs = stmt.executeQuery(sql);  // 쿼리문 수행 4단계
	while(rs.next()){ // ResultSet은 결과의 집합이기때문에 next()로 가져옴
		String id = rs.getString(1);
		String pw = rs.getString(2);
		String name = rs.getString("name");
		java.sql.Date regdate = rs.getDate("regdate");
		
		out.println(String.format("%s %s %s %s", id, pw, name, regdate) + "<br>");
		
	} // ResultSet에 있는 데이터를 한줄씩 가져와 출력하고 줄바꿈
	jdbc.close(); // 5단계
	%>
	
	
</body>
</html>