<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

	<head>
		<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
				<link rel="stylesheet" href="views/css/main.css">
					<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
						<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
						<title>Floración: 모두가 함께하는 통합형 프로젝트 크라우드 펀딩.</title>
					</head>

					<body>
						<%@ include file="header.jsp"%>
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">

									<video src="./img/main1.mp4" autoplay loop>
										<div class="carousel-caption">
											<h3>“Everything you can imagine is real.”
												<br>― Pablo Picasso</h3>
												<h3>“그대가 상상할 수 있는 모든 것이 바로 현실이다.”
													<br>― 파블로 피카소</h3>
													</div>

											</div>

											<div class="item">
												<img src="./img/main02.jpg" alt="Los Angeles">

												</div>

												<div class="item">
													<img src="./img/main03.jpg" alt="Los Angeles">
														<div class="carousel-caption">
															<h3>LA</h3>
															<p>Even though the traffic was a mess, we had the best time.</p>
														</div>
													</div>
												</div>

												<!-- Left and right controls -->
												<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
													<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
													<span class="sr-only">Previous</span>
												</a>
												<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
													<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
													<span class="sr-only">Next</span>
												</a>
											</div>

											<div class="container center-block">

												<div class="row">
													<table>
														<tr>

															<td>
																<div class="module">
																	<img class="thumb_pics" src="./img/art.png" alt="예술">
																		<h2 href="./views/category/sub_category.jsp">예술</h2>
																	</div>
																</td>

																<td>
																	<div class="module">
																		<img class="thumb_pics" src="./img/book.jpg" alt="출판">
																			<h2>출판</h2>
																		</div>
																	</td>

																	<td>
																		<div class="module">
																			<img class="thumb_pics" src="./img/design.jpg" alt="디자인">
																				<h2>디자인</h2>
																			</div>
																		</td>

																		<td>
																			<div class="module">
																				<img class="thumb_pics" src="./img/fashion.jpg" alt="패션">
																					<h2>패션</h2>
																				</div>
																			</td>

																			<td>
																				<div class="module">
																					<img class="thumb_pics" src="./img/self_improvement.jpg" alt="자기계발">
																						<h2>자기계발</h2>
																					</div>
																				</td>

																			</tr>
																		</table>
																	</div>

																			<div class="row">
																				<table>
																					<tr>

																						<td>
																							<div class="module">
																								<img class="thumb_pics" src="./img/skill.jpg" alt="전문기술">
																									<h2>전문기술</h2>
																								</div>
																							</td>

																							<td>
																								<div class="module">
																									<img class="thumb_pics" src="./img/sport.jpg" alt="스포츠">
																										<h2>스포츠</h2>
																									</div>
																								</td>

																								<td>
																									<div class="module">
																										<img class="thumb_pics" src="./img/tech.jpg" alt="기술">
																											<h2>기술</h2>
																										</div>
																									</td>

																									<td>
																										<div class="module">
																											<img class="thumb_pics" src="./img/game.jpg" alt="게임">
																												<h2>게임</h2>
																											</div>
																										</td>

																										<td>
																											<div class="module">
																												<img class="thumb_pics" src="./img/fashion1.JPG" alt="패션1">
																													<h2>패션1</h2>
																												</div>
																											</td>

																										</tr>
																									</table>
																								</div>
																							</div>


																							<br>


																											<div id="categoryList">
																												<ul class="nav nav-tabs">
																													<li class="active">
																														<a data-toggle="tab" href="#menu1">최신 프로젝트</a>
																													</li>
																													<li>
																														<a data-toggle="tab" href="#menu2">인기 프로젝트</a>
																													</li>
																													<li>
																														<a data-toggle="tab" href="#menu3">마감임박 프로젝트</a>
																													</li>
																												</ul>
																											</div>


																											<br>
																												<br>

																													<div class="tab-content">
																														<div id="menu1" class="tab-pane fade in active">
																															<div class="container row center-block">
																																<a href="/Floracion/views/project/project.jsp">
																																	<div class="col-md-3">
																																		<div class="thumbnail">
																																			<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																				<div class="caption">
																																					<a href="">Category</a>
																																					<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																						ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																					<h4>&#8361; 100,000원</h4>
																																					<h5>일정 :</h5>
																																					<div class="progress">
																																						<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																					</div>
																																				</div>
																																			</div>

																																		</div>
																																	</a>
																																	<div class="col-md-3">
																																		<div class="thumbnail">
																																			<a href="#">
																																				<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																					<div class="caption">
																																						<a href="">Category</a>
																																						<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																							ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																						<h4>&#8361; 100,000원</h4>
																																						<h5>일정 :</h5>
																																						<div class="progress">
																																							<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																						</div>
																																					</div>
																																				</a>
																																			</div>
																																		</div>
																																		<div class="col-md-3">
																																			<div class="thumbnail">
																																				<a href="#">
																																					<img src="./img/img_1.jpg" alt="Lights" style="width: 100%"></a>
																																					<a href="#">
																																						<div class="caption">
																																							<a href="">Category</a>
																																							<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																								ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																							<h4>&#8361; 100,000원</h4>
																																							<h5>일정 :</h5>
																																							<div class="progress">
																																								<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																							</div>
																																						</div>
																																					</a>
																																				</div>
																																			</div>
																																			<div class="col-md-3">
																																				<div class="thumbnail">
																																					<a href="#">
																																						<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																							<div class="caption">
																																								<a href="">Category</a>
																																								<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																									ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																								<h4>&#8361; 100,000원</h4>
																																								<h5>일정 :</h5>
																																								<div class="progress">
																																									<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																								</div>
																																							</div>
																																						</a>
																																					</div>
																																				</div>
																																			</div>
																																			<div class="container row center-block">
																																				<div class="col-md-3">
																																					<div class=""></div>
																																					<div class="thumbnail">
																																						<a href="#">
																																							<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																								<div class="caption">
																																									<a href="">Category</a>
																																									<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																										ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																									<h4>&#8361; 100,000원</h4>
																																									<h5>일정 :</h5>
																																									<div class="progress">
																																										<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																									</div>
																																								</div>
																																							</a>
																																						</div>
																																					</div>
																																					<div class="col-md-3">
																																						<div class="thumbnail">
																																							<a href="#">
																																								<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																									<div class="caption">
																																										<a href="">Category</a>
																																										<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																										<h4>&#8361; 100,000원</h4>
																																										<h5>일정 :</h5>
																																										<div class="progress">
																																											<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																										</div>
																																									</div>
																																								</a>
																																							</div>
																																						</div>
																																						<div class="col-md-3">
																																							<div class="thumbnail">
																																								<a href="#">
																																									<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																										<div class="caption">
																																											<a href="">Category</a>
																																											<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																												ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																											<h4>&#8361; 100,000원</h4>
																																											<h5>일정 :</h5>
																																											<div class="progress">
																																												<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																											</div>
																																										</div>
																																									</a>
																																								</div>
																																							</div>
																																							<div class="col-md-3">
																																								<div class="thumbnail">
																																									<a href="#">
																																										<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																											<div class="caption">
																																												<a href="">Category</a>
																																												<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																													ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																												<h4>&#8361; 100,000원</h4>
																																												<h5>일정 :</h5>
																																												<div class="progress">
																																													<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																												</div>
																																											</div>
																																										</a>
																																									</div>
																																								</div>
																																							</div>
																																						</div>
																																						<div id="menu2" class="tab-pane fade">
																																							<div class="container row center-block">
																																								<div class="col-md-3">
																																									<div class="thumbnail">
																																										<a href="#">
																																											<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																												<div class="caption">
																																													<a href="">Category</a>
																																													<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																														ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																													<h4>&#8361; 100,000원</h4>
																																													<h5>일정 :</h5>
																																													<div class="progress">
																																														<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																													</div>
																																												</div>
																																											</a>
																																										</div>
																																									</div>
																																									<div class="col-md-3">
																																										<div class="thumbnail">
																																											<a href="#">
																																												<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																													<div class="caption">
																																														<a href="">Category</a>
																																														<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																															ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																														<h4>&#8361; 100,000원</h4>
																																														<h5>일정 :</h5>
																																														<div class="progress">
																																															<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																														</div>
																																													</div>
																																												</a>
																																											</div>
																																										</div>
																																										<div class="col-md-3">
																																											<div class="thumbnail">
																																												<a href="#">
																																													<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																														<div class="caption">
																																															<a href="">Category</a>
																																															<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																															<h4>&#8361; 100,000원</h4>
																																															<h5>일정 :</h5>
																																															<div class="progress">
																																																<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																															</div>
																																														</div>
																																													</a>
																																												</div>
																																											</div>
																																											<div class="col-md-3">
																																												<div class="thumbnail">
																																													<a href="#">
																																														<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																															<div class="caption">
																																																<a href="">Category</a>
																																																<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																	ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																<h4>&#8361; 100,000원</h4>
																																																<h5>일정 :</h5>
																																																<div class="progress">
																																																	<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																</div>
																																															</div>
																																														</a>
																																													</div>
																																												</div>
																																											</div>
																																											<div class="container row center-block">
																																												<div class="col-md-3">
																																													<div class=""></div>
																																													<div class="thumbnail">
																																														<a href="#">
																																															<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																<div class="caption">
																																																	<a href="">Category</a>
																																																	<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																		ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																	<h4>&#8361; 100,000원</h4>
																																																	<h5>일정 :</h5>
																																																	<div class="progress">
																																																		<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																	</div>
																																																</div>
																																															</a>
																																														</div>
																																													</div>
																																													<div class="col-md-3">
																																														<div class="thumbnail">
																																															<a href="#">
																																																<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																	<div class="caption">
																																																		<a href="">Category</a>
																																																		<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																			ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																		<h4>&#8361; 100,000원</h4>
																																																		<h5>일정 :</h5>
																																																		<div class="progress">
																																																			<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																		</div>
																																																	</div>
																																																</a>
																																															</div>
																																														</div>
																																														<div class="col-md-3">
																																															<div class="thumbnail">
																																																<a href="#">
																																																	<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																		<div class="caption">
																																																			<a href="">Category</a>
																																																			<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																				ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																			<h4>&#8361; 100,000원</h4>
																																																			<h5>일정 :</h5>
																																																			<div class="progress">
																																																				<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																			</div>
																																																		</div>
																																																	</a>
																																																</div>
																																															</div>
																																															<div class="col-md-3">
																																																<div class="thumbnail">
																																																	<a href="#">
																																																		<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																			<div class="caption">
																																																				<a href="">Category</a>
																																																				<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																					ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																				<h4>&#8361; 100,000원</h4>
																																																				<h5>일정 :</h5>
																																																				<div class="progress">
																																																					<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																				</div>
																																																			</div>
																																																		</a>
																																																	</div>
																																																</div>
																																															</div>
																																														</div>
																																														<div id="menu3" class="tab-pane fade">
																																															<div class="container row center-block">
																																																<div class="col-md-3">
																																																	<div class="thumbnail">
																																																		<a href="#">
																																																			<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																				<div class="caption">
																																																					<a href="">Category</a>
																																																					<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																						ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																					<h4>&#8361; 100,000원</h4>
																																																					<h5>일정 :</h5>
																																																					<div class="progress">
																																																						<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																					</div>
																																																				</div>
																																																			</a>
																																																		</div>
																																																	</div>
																																																	<div class="col-md-3">
																																																		<div class="thumbnail">
																																																			<a href="#">
																																																				<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																					<div class="caption">
																																																						<a href="">Category</a>
																																																						<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																							ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																						<h4>&#8361; 100,000원</h4>
																																																						<h5>일정 :</h5>
																																																						<div class="progress">
																																																							<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																						</div>
																																																					</div>
																																																				</a>
																																																			</div>
																																																		</div>
																																																		<div class="col-md-3">
																																																			<div class="thumbnail">
																																																				<a href="#">
																																																					<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																						<div class="caption">
																																																							<a href="">Category</a>
																																																							<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																								ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																							<h4>&#8361; 100,000원</h4>
																																																							<h5>일정 :</h5>
																																																							<div class="progress">
																																																								<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																							</div>
																																																						</div>
																																																					</a>
																																																				</div>
																																																			</div>
																																																			<div class="col-md-3">
																																																				<div class="thumbnail">
																																																					<a href="#">
																																																						<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																							<div class="caption">
																																																								<a href="">Category</a>
																																																								<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																									ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																								<h4>&#8361; 100,000원</h4>
																																																								<h5>일정 :</h5>
																																																								<div class="progress">
																																																									<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																								</div>
																																																							</div>
																																																						</a>
																																																					</div>
																																																				</div>
																																																			</div>
																																																			<div class="container row center-block">
																																																				<div class="col-md-3">
																																																					<div class="thumbnail">
																																																						<a href="#">
																																																							<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																								<div class="caption">
																																																									<a href="">Category</a>
																																																									<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																										ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																									<h4>&#8361; 100,000원</h4>
																																																									<h5>일정 :</h5>
																																																									<div class="progress">
																																																										<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																									</div>
																																																								</div>
																																																							</a>
																																																						</div>
																																																					</div>
																																																					<div class="col-md-3">
																																																						<div class="thumbnail">
																																																							<a href="#">
																																																								<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																									<div class="caption">
																																																										<a href="">Category</a>
																																																										<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																											ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																										<h4>&#8361; 100,000원</h4>
																																																										<h5>일정 :</h5>
																																																										<div class="progress">
																																																											<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																										</div>
																																																									</div>
																																																								</a>
																																																							</div>
																																																						</div>
																																																						<div class="col-md-3">
																																																							<div class="thumbnail">
																																																								<a href="#">
																																																									<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																										<div class="caption">
																																																											<a href="">Category</a>
																																																											<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																												ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																											<h4>&#8361; 100,000원</h4>
																																																											<h5>일정 :</h5>
																																																											<div class="progress">
																																																												<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																											</div>
																																																										</div>
																																																									</a>
																																																								</div>
																																																							</div>
																																																							<div class="col-md-3">
																																																								<div class="thumbnail">
																																																									<a href="#">
																																																										<img src="./img/img_1.jpg" alt="Lights" style="width: 100%">
																																																											<div class="caption">
																																																												<a href="">Category</a>
																																																												<p>Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem
																																																													ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum... Lorem ipsum...</p>
																																																												<h4>&#8361; 100,000원</h4>
																																																												<h5>일정 :</h5>
																																																												<div class="progress">
																																																													<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">40%</div>
																																																												</div>
																																																											</div>
																																																										</a>
																																																									</div>
																																																								</div>
																																																							</div>
																																																						</div>
																																																					</div>

																																																					<%@ include file="./footer.jsp"%>

																																																				</body>

																																																			</html>
