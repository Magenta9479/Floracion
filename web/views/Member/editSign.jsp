<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.vo.*"%>
<%
	Member member = (Member) session.getAttribute("member");
	if(member==null)member=(Member)request.getAttribute("member");
		System.out.println(member);
	String leave=request.getParameter("leave");

	if (member instanceof Bloomer) {
		member = (Bloomer) member;
	} else {
		member = (HoneyBee) member;
	}
	int index = member.getClass().getName().lastIndexOf('.') + 1;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보수정</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="/Floracion/views/css/editSign.css" type="text/css">
<script src="/Floracion/views/js/editSign.js"></script>
</head>

<body>
	<script>
		if(<%=leave%>!=null&&<%=member.getLeaveDay()%>!=null)alert("탈퇴 신청이 완료되었습니다. \n오늘로부터 3일 뒤 회원 정보가 완전 삭제됩니다.");
	</script>
	<div class="outter">
		<h2>회원 정보수정</h2>
		<div style="border: 1px solid #ccc">
			<div class="container">
				<input type="text"
					value="<%=member.getClass().getName().charAt(index)%>" name="radio"
					style="display: none;"> <input type="text"
					value="<%=member.getEmail()%>" name="email" readonly> <input
					type="password" placeholder="비밀번호" name="psw" required> <input
					type="password" placeholder="비밀번호 확인" name="psw-repeat" required>
				<input type="text" placeholder="<%=member.getNick()%>" name="nick"
					required> <input type="text" placeholder="<%=member.getPhone()%>"
					name="phone" required>
				<input
					type="text" name="psw-repeat" value="관심 카테고리 : <%=member.getCategory1() %>, <%=member.getCategory2() %>, <%=member.getCategory3() %>" readonly required>
				
				<div class="clearfix">
					<button type="button" class="cancelbtn" name="cancle">취소</button>
					<button type="submit" class="signupbtn" name="edit">정보수정</button>
				</div>

			</div>
		</div>
		<button class="changeCate" name="changeCate">카테고리 수정</button>
		<%if(member.getLeaveDay()!=null){ %>
		<button class="leave" name="cancleLeave">탈퇴 취소</button>	
		<%}else{ %>
		<button class="leave" name="leaveMember">탈퇴</button>
		<%} %>
		
	</div>
	

</body>
</html>