<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Floración: 모두가 함께하는 통합형 프로젝트 크라우드 펀딩.</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="../css/project.css" type="text/css" rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="/Floracion/views/js/project/project_notice.js"></script>
</head>

<body>
	<%@ include file="../../header.jsp" %>
	<div id="form">
		<!--  사진, 동영상과 달력 칸-->
		<div id="media_calendar">

			<div id="image_slot">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
						<li data-target="#myCarousel" data-slide-to="4"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<video src="../../img/project.mp4" autoplay loop>
						</div>

						<div class="item">
							<img src="../../img/pjt_detail1.jpg">
						</div>

						<div class="item">
							<img src="../../img/pjt_detail2.jpg">
						</div>

						<div class="item">
							<img src="../../img/pjt_detail3.jpg">
						</div>

						<div class="item">
							<img src="../../img/pjt_detail4.jpg">
						</div>

					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

			</div>

			<div id="calendar">

				<div class="container" id="calendar_container"></div>
			</div>
		</div>

		<div id="board_area">

			<ul class="nav nav-pills">
				<li class="active"><a data-toggle="pill" href="#menu1">공지사항</a></li>
				<li><a data-toggle="pill" href="#menu2">자유게시판</a></li>
				<li><a data-toggle="pill" href="#menu3">프로젝트 게시판</a></li>
				<li><a data-toggle="pill" href="#menu4">프로젝트 설명</a></li>
				<li><a data-toggle="pill" href="#menu5">참여자 명단</a></li>
			</ul>

			<div class="tab-content">
					<div id="menu1" class="tab-pane fade in active">
					<h1>공지사항</h1>
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th width="10%">번호</th>
								<th width="50%">제목</th>
								<th width="10%">작성자</th>
								<th width="20%">작성일</th>
								<th width="10%">조회</th>
							</tr>
						</thead>
						<tbody id="fuck">


						</tbody>
					</table>
				</div>

				<div id="menu2" class="tab-pane fade">
					<h1>자유게시판</h1>
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th width="10%">번호</th>
								<th width="50%">제목</th>
								<th width="10%">작성자</th>
								<th width="20%">작성일</th>
								<th width="10%">조회</th>
							</tr>
						</thead>
						<tbody >
							<tr>
								<td>1</td>
								<td id="title">스타3 언제 발매하나요?</td>
								<td>스덕</td>
								<td>17/02/03</td>
								<td>21</td>
							<tr>
							<tr>
								<td>2</td>
								<td id="title">###***!!!1000% 수익 보장 완전 무료 정년 45세 보장 1000만원
									즉시 입금!!!***###</td>
								<td>쓰레기광고맨</td>
								<td>17/02/04</td>
								<td>321</td>
							<tr>
							<tr>
								<td>3</td>
								<td id="title">스타5 언제 발매하나요?</td>
								<td>스덕3</td>
								<td>17/02/03</td>
								<td>41</td>
							<tr>
						</tbody>
					</table>
				</div>

				<div id="menu3" class="tab-pane fade">
					<h1>프로젝트 게시판</h1>
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th width="10%">번호</th>
								<th width="50%">제목</th>
								<th width="10%">작성자</th>
								<th width="20%">작성일</th>
								<th width="10%">조회</th>
							</tr>
						</thead>
						<tbody >
							<tr>
								<td>1</td>
								<td id="title">스타3 언제 발매하나요?</td>
								<td>스덕</td>
								<td>17/02/03</td>
								<td>21</td>
							<tr>
							<tr>
								<td>2</td>
								<td id="title">###***!!!1000% 수익 보장 완전 무료 정년 45세 보장 1000만원
									즉시 입금!!!***###</td>
								<td>쓰레기광고맨</td>
								<td>17/02/04</td>
								<td>321</td>
							<tr>
							<tr>
								<td>3</td>
								<td id="title">스타5 언제 발매하나요?</td>
								<td>스덕3</td>
								<td>17/02/03</td>
								<td>41</td>
							<tr>
						</tbody>
					</table>
				</div>


				<div id="menu4" class="tab-pane fade">
					<h1>프로젝트 상세 설명</h1>
					<img src="../../img/pjt_context1.jpg">
					<p style="text-align: center">Echo Dot is a hands-free,
						voice-controlled device with a small built-in speaker—it can also
						connect to your speakers or headphones over Bluetooth or through a
						3.5 mm audio cable to deliver stereo sound to the speakers you
						choose. Dot connects to the Alexa Voice Service to play music,
						make calls, send and receive messages, provide information, news,
						sports scores, weather, and more—instantly. Echo Dot can hear you
						from across the room, even while music is playing. When you want
						to use Echo Dot, just say the wake word “Alexa” and Dot responds
						instantly. If you have more than one Echo or Echo Dot, Alexa
						responds intelligently from the Echo you're closest to with ESP
						(Echo Spatial Perception). Learn more about ESP</p>
					<img src="../../img/<pjt_context2></pjt_context2>.jpg">
				</div>

				<div id="menu5" class="tab-pane fade">
					<h1>프로젝트 참여자 명단</h1>
					<div class="container bootstrap snippet">
						<div class="row">
							<div class="col-lg-12">
								<div class="main-box no-header clearfix">
									<div class="main-box-body clearfix">
										<div class="table-responsive">
											<table class="table user-list">
												<thead>
													<tr>
														<th><span>참여자</span></th>
														<th><span>참가일</span></th>
														<th class="text-center"><span>상태</span></th>
														<th><span>이메일 주소</span></th>
														<th>&nbsp;</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><img
															src="https://bootdey.com/img/Content/user_1.jpg" alt="">
															<a href="#" class="user-link">이재훈</a> <span
															class="user-subhead">일반 참여자</span></td>
														<td>2017/07/17</td>
														<td class="text-center"><span
															class="label label-default">대기중</span></td>
														<td><a href="#">yourmom@naver.com</a></td>
														<td style="width: 20%;"><a href="#"
															class="table-link"> <span class="fa-stack"> <i
																	class="fa fa-square fa-stack-2x"></i> <i
																	class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
															</span>
														</a> <a href="#" class="table-link"> <span
																class="fa-stack"> <i
																	class="fa fa-square fa-stack-2x"></i> <i
																	class="fa fa-pencil fa-stack-1x fa-inverse"></i>
															</span>
														</a> <a href="#" class="table-link danger"> <span
																class="fa-stack"> <i
																	class="fa fa-square fa-stack-2x"></i> <i
																	class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
															</span>
														</a></td>
													</tr>
													<tr>
														<td><img
															src="https://bootdey.com/img/Content/user_3.jpg" alt="">
															<a href="#" class="user-link">임현상</a> <span
															class="user-subhead">관리자</span></td>
														<td>2017/06/11</td>
														<td class="text-center"><span
															class="label label-success">활동중</span></td>
														<td><a href="#">yomother@father.com</a></td>
														<td style="width: 20%;"><a href="#"
															class="table-link"> <span class="fa-stack"> <i
																	class="fa fa-square fa-stack-2x"></i> <i
																	class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
															</span>
														</a> <a href="#" class="table-link"> <span
																class="fa-stack"> <i
																	class="fa fa-square fa-stack-2x"></i> <i
																	class="fa fa-pencil fa-stack-1x fa-inverse"></i>
															</span>
														</a> <a href="#" class="table-link danger"> <span
																class="fa-stack"> <i
																	class="fa fa-square fa-stack-2x"></i> <i
																	class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
															</span>
														</a></td>
													</tr>
													<tr>
														<td><img
															src="https://bootdey.com/img/Content/user_2.jpg" alt="">
															<a href="#" class="user-link">김박최</a> <span
															class="user-subhead">후원자</span></td>
														<td>2017/05/12</td>
														<td class="text-center"><span
															class="label label-danger">탈퇴</span></td>
														<td><a href="#">hello@mother.com</a></td>
														<td style="width: 20%;"><a href="#"
															class="table-link"> <span class="fa-stack"> <i
																	class="fa fa-square fa-stack-2x"></i> <i
																	class="fa fa-search-plus fa-stack-1x fa-inverse"></i>
															</span>
														</a> <a href="#" class="table-link"> <span
																class="fa-stack"> <i
																	class="fa fa-square fa-stack-2x"></i> <i
																	class="fa fa-pencil fa-stack-1x fa-inverse"></i>
															</span>
														</a> <a href="#" class="table-link danger"> <span
																class="fa-stack"> <i
																	class="fa fa-square fa-stack-2x"></i> <i
																	class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
															</span>
														</a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<button id="show_more_btn">게시글 더 불러오기</button>

		</div>
	</div>




</body>

</html>
