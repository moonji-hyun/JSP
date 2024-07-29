<%@page import="model1.board.BoardDAO"%>
<%@page import="model1.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp" %>   <!-- 로그인 여부 확인 -->    
<%
	String num = request.getParameter("num");   
	String title = request.getParameter("title");
	String content = request.getParameter("content");   // form의 값 저장
	
	BoardDTO boardDTO = new  BoardDTO();
	boardDTO.setNum(num);
	boardDTO.setTitle(title);
	boardDTO.setContent(content);  // 빈객체 생성하고 값 저장
	
	BoardDAO boardDAO = new BoardDAO(application); // 1단계, 2단계
	int affected = boardDAO.updateEdit(boardDTO);  // 3단계, 4단계
	boardDAO.close();  // 5단계
	
	// 성공/실패 여부 처리
	if(affected ==1){
		// 성공
		response.sendRedirect("View.jsp?num=" + boardDTO.getNum());   // View.jsp?num=3 의 형태로 돌아감
	}else{
		// 실패
		JSFunction.alertBack("수정실패", out);    // 메세지 출력 후 뒤로가기
	}
	
%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditProcess.jsp : dto를 받아서 update쿼리 처리 </title>
</head>
<body>

</body>
</html> -->