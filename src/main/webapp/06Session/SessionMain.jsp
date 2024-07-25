<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionMain.jsp : web.xml에서 설정한 세션 정보 확인하기 </title>
</head>
<body>
	<h2> Session 설정 확인용</h2>
	<%
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:SS");  // 십:분:초
		
		long creatingTime = session.getCreationTime();  // 세션을 만든 시간
		String creatingTimeSTR = simpleDateFormat.format(new Date(creatingTime)); // long ->Str
		// 세션 생성시간을 변수화
		
		long lastTime = session.getLastAccessedTime();  // 마지막 요청시간
		String lastTimeSTR = simpleDateFormat.format(new Date(lastTime));  // long -> Str
		// 세션을 마지막으로 요청한 시간을 변수화
		
	%>
	<ul>
	<li>세션 유지 시간 설정값 : <%= session.getMaxInactiveInterval() %></li>  <!-- 톰켓에 설정한 유지시간 -->
	<li>세션 이름 : <%= session.getId() %></li>
	<li>최초 세션 생성 시간 : <%= creatingTimeSTR %></li>
	<li>마지막 요청 시간 : <%= lastTimeSTR %></li>
	</ul>
	
</body>
</html>