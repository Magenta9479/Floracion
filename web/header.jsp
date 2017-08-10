<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.vo.*"%>
<!DOCTYPE html>
<html>

<script>
	// Get the modal
	var modal = document.getElementById('id01');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
<%String email = request.getParameter("email");
			Member member = (Member) session.getAttribute("member");
			int num = Integer.parseInt(request.getParameter("id"));
			System.out.println(num);%>
	
</script>

<head>
<script src="/Floracion/views/js/login.js"></script>
</head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="/Floracion/views/css/header.css">
<nav class="navbar-fixed-top">
	<div class="container-fluid">
		<%-- <ul class="nav navbar-nav navbar-left"> --%>

		<a class="navbar-brand" href="/Floracion/pmain?num=1" id="home_logo">Floración</a>
		<ul class="navbar-nav">
			<li class="nav-item">
				<div class="input-group">
					<form>
						<input type="text" name="search" placeholder="프로젝트 검색..">
					</form>
				</div>
			</li>
		</ul>


		<%
			if (member == null) {
		%>

		<div class="navbar_btn_group">
			<li class="nav-item"><a
				href="/Floracion/views/Member/signIn.jsp"> <span
					class="glyphicon glyphicon-user"></span> 회원가입
			</a></li>

			<li class="nav-item">
				<button
					onclick="document.getElementById('id01').style.display='block'"
					style="width: auto;">
					<span class="glyphicon glyphicon-log-in"></span> 로그인
				</button>
			</li>
		</div>



		<%
			} else {
				if (member instanceof Bloomer && ((Bloomer) member).getLeader() != null) {
		%>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/Floracion//views/Member/editSign.jsp"> <span
					class="glyphicon glyphicon-user"></span> <%=member.getNick()%></a></li>
			<li><a href='/Floracion/views/Member/logout.jsp'
				style="width: auto;"> <span class="glyphicon glyphicon-log-in"></span>
					로그아웃
			</a></li>
		</ul>
		<%
			} else {
					if (num != 1) {
		%>
		<ul id="right" class="nav navbar-nav navbar-right">
			<li><a href="/Floracion/views/project/project_create_edit.jsp"
				class="glyphicon glyphicon-check">프로젝트생성하기</a></li>
			<li><a href="/Floracion/views/Member/editSign.jsp"> <span
					class="glyphicon glyphicon-user"></span> <%=member.getNick()%></a></li>
			<li><a href='/Floracion/views/Member/logout.jsp'
				style="width: auto;"> <span class="glyphicon glyphicon-log-in"></span>
					로그아웃
			</a></li>
		</ul>
		<%
			} else {
		%>
		<ul id="right" class="nav navbar-nav navbar-right">
			<li><a href="/Floracion/views/project/project_create_edit.jsp"
				class="glyphicon glyphicon-check">프로젝트생성하기</a></li>
			<li><a href="/Floracion/views/Member/editSign.jsp"> <span
					class="glyphicon glyphicon-user"></span> <%=member.getNick()%></a></li>
			<li><a href='/Floracion/views/Member/logout.jsp'
				style="width: auto;"> <span class="glyphicon glyphicon-log-in"></span>
					로그아웃
			</a></li>
		</ul>
		<%
			}
				}
			}
		%>


		<div id="id01" class="modal">

			<%-- <form class="modal-content animate" action=""> --%>

			<div class="container">

				<div class="imgcontainer">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="close" title="Close Modal">&times;</span> <img
						src="img/user1.JPG" alt="Avatar" class="avatar">
				</div>

				<%
					if (member instanceof HoneyBee) {
				%>
				<input type="radio" name="information" value="H" checked>후원자
				<input type="radio" name="information" value="B">참여자
				<%
					} else {
				%>
				<input type="radio" name="information" value="H">후원자 <input
					type="radio" name="information" value="B" checked>참여자
				<%
					}
				%>

				<input type="text" placeholder="이메일" name="email" required>
				<input type="password" placeholder="비밀번호" name="pwd" required>
				<button name="login">로그인</button>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<span class="psw"> <a href="#">비밀번호</a>를 잊으셨나요?
				</span>
			</div>
			<%-- </form> --%>
		</div>
	</div>

	<script>
		// Get the modal
		var modal = document.getElementById('id01');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>

</nav>