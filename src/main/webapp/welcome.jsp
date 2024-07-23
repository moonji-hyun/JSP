<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- @지시어 : jsp 시그니쳐 필수, 확장자가 jsp이면 무조건 들어가야함 -->
<%!	/* !는 선언부 : 변수 선언, 메서드 선언, =은 표현식 : 변수내용출력(계산x), <% 는 스크립틀릿 : 원시적인 java코드*/
String str1 = "JSP";
String str2 = "안녕하세요!!!!"; // 필드처럼 변수 선언
%>   <!-- 자바코드 --> 
<!DOCTYPE html><!-- html5 시작 -->
<html>	<!-- html문서 시작 -->
<head>	<!-- head 시작(문서의 각종 설정 정보 -->
<meta charset="UTF-8">	<!-- 문서의 메타 정보 -->
<title>HelloJSP</title>	<!-- 브라우저의 제목 -->
</head>	<!-- head 끝 -->
<body>	<!-- 브라우저의 페이지 안쪽 -->
	<h2>처음 만들어 보는 <%= str1 %></h2> <!-- h태그는 제목태그로 글자 크기가 1(큼) ~ 6(작음)  -->
	<p>  <!-- 문단 태그 println -->
		<%
		out.println(str2 + str1 + "입니다. 지금부터 시작 합시다.");
		%>
	</p>
	
</body>
</html>	<!-- html문서 끝 -->