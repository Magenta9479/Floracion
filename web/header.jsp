<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ page import="member.vo.*"%>
        <%
	Member member = (Member) session.getAttribute("member");
%>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

            <link rel="stylesheet" href="/Floracion/views/css/header.css">
            <nav class="navbar navbar-inverse navbar-fixed-top">
                <div class="container-fluid">
                    <ul class="nav navbar-nav navbar-left">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="/Floracion/main.jsp" id="home_logo">Floración</a>
                        </div>

                        <div class="input-group">
                            <form>
                                <input type="text" name="search" placeholder="프로젝트 검색..">
                            </form>
                        </div>
                    </ul>
                    <%
			if (member == null) {
		%>
                        <ul id="right" class="nav navbar-nav navbar-right">
                            <li><a href="views/Member/signIn.jsp"><span
					class="glyphicon glyphicon-user"></span> 회원가입</a></li>
                            <li><a href="views/Member/logIn.jsp" style="width: auto;"><span
					class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
                        </ul>
                        <% }else{ 
			if (member instanceof Bloomer && ((Bloomer)member).getLeader() != null) 
			{
		%>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="./views/Member/editSign.jsp"><span
					class="glyphicon glyphicon-user"></span> <%=member.getNick()%></a></li>
                                <li><a href='views/Member/logout.jsp' style="width: auto;"><span
					class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
                            </ul>
                            <% }else{ %>
                                <ul id="right" class="nav navbar-nav navbar-right">
                                    <li><a href="/Floracion/views/project/project_create_edit.jsp" class="glyphicon glyphicon-check">프로젝트생성하기</a></li>
                                    <li><a href="./views/Member/editSign.jsp"><span
					class="glyphicon glyphicon-user"></span> <%=member.getNick()%></a></li>
                                    <li><a href='views/Member/logout.jsp' style="width: auto;"><span
					class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
                                </ul>
                                <% }} %>
                </div>
            </nav>
