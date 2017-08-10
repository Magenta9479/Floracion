<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Floración 회원가입</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/Floracion/views/css/signin.css" type="text/css">
<script src="/Floracion/views/js/signin.js"></script>
<script type="text/javascript" src="/Floracion/views/js/jquery-3.2.1.min.js"></script>
</head>

<body>

	<div class="outter">
		<h2>Floración 회원가입</h2>
		<div style="border: 1px solid #ccc">
			<div class="container">
				<div class="radio">
					<input type="radio" name="information" value="H">후원자 <input
						type="radio" name="information" value="B" checked>참여자
				</div>
				<input type="text" placeholder="이메일" name="email" required>
				<button type="button" name="buttonauth" class="auth">인증</button>
				<input type="text" placeholder="인증번호" name="inputauth"
					style="display: none;"> <input type="password"
					placeholder="비밀번호" name="psw" required> <input
					type="password" placeholder="비밀번호 확인" name="psw-repeat" required>
				<input type="text" placeholder="닉네임" name="nick" required> <input
					type="text" placeholder="연락처" name="phone" required>
				<p>
					계정 생성은 본사의 <a href="#">개인정보 약관</a>에 동의함을 의미합니다.
				</p>

				<div class="clearfix">
					<button type="button" class="cancelbtn" name="cancle" onclick="location.replace('/Floracion/pmain?num=1')">취소</button>
					<button type="submit" class="signupbtn" name="signup">회원가입</button>
				</div>


				<br>

				<div class="line">
					<div class="text">
						<span>Or</span>
					</div>
				</div>

				<br> 다른 방법으로 로그인 찾기

			</div>

		</div>
	</div>

</body>
</html>