<%@page import="utils.CookieManager"%>
<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	String save_check = request.getParameter("save_check");
	
	if("kkw".equals(user_id) && "1234".equals(user_pw)){// id와 pw가 같으면
		if(save_check != null && save_check.equals("Y")){
			// 아이디 저장하기 체크이면!! -> 쿠키 만들기
			CookieManager.makeCookie(response, "loginId", user_id, 86400); // 쿠키 생성
			
		}else{
			// 아이디 저장하기 체크가 안되면!! -> 쿠키 지우기
			CookieManager.deleteCookie(response, "loginId");  //쿠키 삭제
			
		}
		JSFunction.alertLocation("로그인 성공!", "IdSaveMain.jsp", out); // 로그인 성공하면 IdSaveMain로 보내기
	
	}else{// id와 pw가 다르면
		JSFunction.alertBack("로그인 실패 - id/pw가 다릅니다", out);		
	}

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdSaveProcess.jsp : 로그인처리(성공, 실패+쿠키+알러트)</title>
</head>
<body>

</body>
</html>