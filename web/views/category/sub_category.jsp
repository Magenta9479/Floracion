<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Floración: 모두가 함께하는 통합형 프로젝트 크라우드 펀딩.</title>
<link href="../css/sub_category.css" type="text/css" rel="stylesheet">
<!--
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
-->

</head>

<body>
	<%@ include file="../../header.jsp"%>
	<div id="cover">
		<div id="cover_vid">
			<video src="../../img/art.mp4" autoplay loop />
		</div>

		<div id="cover_txt">
			<div id="cover_h">
				<h1>ART</h1>
			</div>
			<div id="cover_p">
				<p>
					“Everything you can imagine is real.” <br>― Pablo Picasso
				</p>
				<p>
					“그대가 상상할 수 있는 모든 것이 바로 현실이다.” <br>― 파블로 피카소
				</p>
			</div>
		</div>
	</div>

	<div class="container">
		<ul class="nav nav-pills">
			<li class="active"><a data-toggle="pill" href="#menu1">최신
					프로젝트</a></li>
			<li><a data-toggle="pill" href="#menu2">마감 임박 프로젝트</a></li>
			<li><a data-toggle="pill" href="#menu3">인기 프로젝트</a></li>
		</ul>

		<div class="projects_area">

			<div class="tab-content">
				<div id="menu1" class="tab-pane fade in active">

					<div class="container row center-block">
						<%
							for (int i = 0; i < 4; i++) {
						%>
						<a
							href="/Floracion/pfind?pcode=<%=pbList.get(i).getPcode()%>&what=<%=pbList.get(i).getWhat()%>">
							<div class="col-md-3">
								<div class="thumbnail">
									<img
										src="./uploadFile/<%=pbList.get(i).getLeader()%>\\<%=pbList.get(i).getMainImage()%>"
										alt="Lights" style="width: 100%; height: 30%;">
									<div class="caption">
										<a href=""><%=pbList.get(i).getCategory()%></a>
										<p><%=pbList.get(i).getContent()%></p>
										<h4>
											&#8361;
											<%=pbList.get(i).getcMoney()%>원
										</h4>
										<h5>일정 :</h5>
										<div class="progress">
											<div class="progress-bar progress-bar-striped active"
												role="progressbar" aria-valuenow=<%=goalPercent[i]%>
												aria-valuemin="0" aria-valuemax="100"
												style="width: <%=goalPercent[i]%>%"><%=goalPercent[i]%>%
											</div>
										</div>
									</div>
								</div>
							</div>
						</a>
						<%
							}
						%>
					</div>
					<div class="container row center-block">
						<%
							for (int i = 0; i < 4; i++) {
						%>
						<a href="/Floracion/views/project/project.jsp">
							<div class="col-md-3">
								<div class="thumbnail">
									<img src="./img/img_1.jpg" alt="Lights"
										style="width: 100%; height: 30%;">
									<div class="caption">
										<a href="">Category</a>
										<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum...</p>
										<h4>&#8361; 100,000원</h4>
										<h5>일정 :</h5>
										<div class="progress">
											<div class="progress-bar progress-bar-striped active"
												role="progressbar" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">40%</div>
										</div>
									</div>
								</div>

							</div>
						</a>
						<%
							}
						%>
					</div>
				</div>

				<div id="menu1" class="tab-pane fade in active">

					<div class="container row center-block">
						<%
							for (int i = 0; i < 4; i++) {
						%>
						<a
							href="/Floracion/pfind?pcode=<%=pbList.get(i).getPcode()%>&what=<%=pbList.get(i).getWhat()%>">
							<div class="col-md-3">
								<div class="thumbnail">
									<img
										src="./uploadFile/<%=pbList.get(i).getLeader()%>\\<%=pbList.get(i).getMainImage()%>"
										alt="Lights" style="width: 100%; height: 30%;">
									<div class="caption">
										<a href=""><%=pbList.get(i).getCategory()%></a>
										<p><%=pbList.get(i).getContent()%></p>
										<h4>
											&#8361;
											<%=pbList.get(i).getcMoney()%>원
										</h4>
										<h5>일정 :</h5>
										<div class="progress">
											<div class="progress-bar progress-bar-striped active"
												role="progressbar" aria-valuenow=<%=goalPercent[i]%>
												aria-valuemin="0" aria-valuemax="100"
												style="width: <%=goalPercent[i]%>%"><%=goalPercent[i]%>%
											</div>
										</div>
									</div>
								</div>
							</div>
						</a>
						<%
							}
						%>
					</div>
					<div class="container row center-block">
						<%
							for (int i = 0; i < 4; i++) {
						%>
						<a href="/Floracion/views/project/project.jsp">
							<div class="col-md-3">
								<div class="thumbnail">
									<img src="./img/img_1.jpg" alt="Lights"
										style="width: 100%; height: 30%;">
									<div class="caption">
										<a href="">Category</a>
										<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum...</p>
										<h4>&#8361; 100,000원</h4>
										<h5>일정 :</h5>
										<div class="progress">
											<div class="progress-bar progress-bar-striped active"
												role="progressbar" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">40%</div>
										</div>
									</div>
								</div>

							</div>
						</a>
						<%
							}
						%>
					</div>
				</div>

				<div id="menu1" class="tab-pane fade in active">

					<div class="container row center-block">
						<%
							for (int i = 0; i < 4; i++) {
						%>
						<a
							href="/Floracion/pfind?pcode=<%=pbList.get(i).getPcode()%>&what=<%=pbList.get(i).getWhat()%>">
							<div class="col-md-3">
								<div class="thumbnail">
									<img
										src="./uploadFile/<%=pbList.get(i).getLeader()%>\\<%=pbList.get(i).getMainImage()%>"
										alt="Lights" style="width: 100%; height: 30%;">
									<div class="caption">
										<a href=""><%=pbList.get(i).getCategory()%></a>
										<p><%=pbList.get(i).getContent()%></p>
										<h4>
											&#8361;
											<%=pbList.get(i).getcMoney()%>원
										</h4>
										<h5>일정 :</h5>
										<div class="progress">
											<div class="progress-bar progress-bar-striped active"
												role="progressbar" aria-valuenow=<%=goalPercent[i]%>
												aria-valuemin="0" aria-valuemax="100"
												style="width: <%=goalPercent[i]%>%"><%=goalPercent[i]%>%
											</div>
										</div>
									</div>
								</div>
							</div>
						</a>
						<%
							}
						%>
					</div>
					<div class="container row center-block">
						<%
							for (int i = 0; i < 4; i++) {
						%>
						<a href="/Floracion/views/project/project.jsp">
							<div class="col-md-3">
								<div class="thumbnail">
									<img src="./img/img_1.jpg" alt="Lights"
										style="width: 100%; height: 30%;">
									<div class="caption">
										<a href="">Category</a>
										<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
											ipsum... Lorem ipsum... Lorem ipsum...</p>
										<h4>&#8361; 100,000원</h4>
										<h5>일정 :</h5>
										<div class="progress">
											<div class="progress-bar progress-bar-striped active"
												role="progressbar" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">40%</div>
										</div>
									</div>
								</div>

							</div>
						</a>
						<%
							}
						%>
					</div>
				</div>



			</div>

		</div>
</body>

</html>
