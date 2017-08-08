<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보찾기</title>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="../css/login.css" type="text/css">
<script src="../js/findInfo.js"></script>	
</head>
<body>
	<div id="id02" class="modal">
		<div class="modal-content animate">
			<div class="imgcontainer">
				Floración 
			</div>
			<div class="container">
				<div class="radio" style="text-align:center;margin-bottom:10%;">
					<input type="radio" name="information" value="H">후원자
					<input type="radio"	name="information" value="B" checked>참여자					
				</div>
				<span>가입 당시 사용했던 이메일을 입력해주세요</span>
				<input type="text" placeholder="이메일" name="findemail" required>
				<button type="button" name="buttonauth" class="auth">인증번호 받기</button>
				<input type="text" placeholder="인증번호" name="inputauth" required>
				
				<button type="button" id="re" style="background-color: red; float:right;">취소</button>
				<button type="submit" name="findMember">찾기</button>
				
			</div></div>
	</div>
</body>
</html>