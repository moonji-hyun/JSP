<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 방법 1 : 회원인증 정보 삭제(세션에 저장된 아이디와 이름을 제거)
session.removeAttribute("UserId");
session.removeAttribute("UserName");

// 방법 2 : 모든 속성 한꺼번에 삭제
session.invalidate();

// 속성 삭제 후 페이지 이동
response.sendRedirect("LoginForm.jsp");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout.jsp here</title>
</head>
<body>

</body>
</html>