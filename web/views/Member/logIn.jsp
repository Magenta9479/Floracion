<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.vo.*"%>
<%
	String email=request.getParameter("email");
	Member member=(Member)session.getAttribute("member");
	
	if(session.getAttribute("member")!=null)
	{
		session.invalidate();
	}
%>
<!DOCTYPE html>
<html>

<head>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="../css/login.css" type="text/css">
<script src="../js/login.js"></script>

</head>

<body>

	<div id="id01" class="modal">
		<div class="modal-content animate">
			<div class="imgcontainer"><a id="home" href="/Floracion/main.jsp">Floración</a></div>
			
			<div style="text-align: center;">
			<%if(member instanceof HoneyBee){ %>
				<input type="radio" name="information" value="H" checked>후원자
				<input type="radio" name="information" value="B">참여자							
			<%}else{%>
				<input type="radio" name="information" value="H">후원자
				<input type="radio" name="information" value="B" checked>참여자	
			<%}%>				
			</div>
			
			<div class="container">
				<input type="text" placeholder="이메일" name="email" required>

				<input type="password" placeholder="비밀번호" name="pwd" required>
				<button type="button" class="cancelbtn" name="cancle" onclick="location.replace('/Floracion/main.jsp')">취소</button>
				<button name="login">로그인</button>				
			</div>

			<div class="line">
				<div class="text">
					<span>Or</span>
				</div>
			</div>

			<br> 다른 방법으로 로그인 찾기

			<div class="container"
				style="background-color: #f1f1f1; text-align: right;">
				<span class="psw">아직 Floración의 회원이 아니신가요? <a
					href="./signIn.jsp">회원 가입</a> <br>아이디 또는 비밀번호가 기억나지 않나요? <a
					href="./findInfo.jsp">회원 정보 찾기</a></span><br>

			</div>

		</div>
	</div>




</body>

</html>
