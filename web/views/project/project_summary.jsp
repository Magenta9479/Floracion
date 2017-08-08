<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
      <title>Floración: 모두가 함께하는 통합형 프로젝트 크라우드 펀.</title>
      <link href="../css/project_summary.css" type="text/css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      </head>

      <body>

        <%@ include file="../../header.jsp" %>

        <div class="container">

          <div id="introduction_area">

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
                    <video src="../../img/project.mp4" autoplay loop></div>

                    <div class="item">
                      <img src="../../img/pjt_detail1.jpg"></div>

                      <div class="item">
                        <img src="../../img/pjt_detail2.jpg"></div>

                        <div class="item">
                          <img src="../../img/pjt_detail3.jpg"></div>

                          <div class="item">
                            <img src="../../img/pjt_detail4.jpg"></div>

                          </div>

                          <!-- Left and right controls -->
                          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>
                      </div>

                      <div id="summary">
                        <div id="summary_text">
                          <h5>프로젝트 명 : GTA VI: 울릉도</h5>
                          <br>
                            <h5>프로젝트 리더 : 아이유</h5>
                            <h5>프로젝트 시작일 : 17/08/02</h5>
                            <h5>프로젝트 종료일 : 17/08/32</h5>
                            <br></div>
                            <div class="progress progress-striped">
                              <div class="progress-bar progress-bar-custom active" role="progressbar" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100" style="width: 88%;">
                                88% 완료
                              </div>
                            </div>
                            <div id="button_area">
                              <a href="#" class="btn btn-lg btn-default" id="support_btn">
                                <span class="glyphicon glyphicon-heart"></span>
                                후원하기</a>
                              <a href="#" class="btn btn-lg btn-default" id="join_btn">
                                <span class="glyphicon glyphicon-play"></span>
                                참가하기</a>
                            </div>
                          </div>
                        </div>
                        <div id="board_area">

                          <ul class="nav nav-pills">
                            <li class="active">
                              <a data-toggle="pill" href="#menu1">상세설명</a>
                            </li>
                            <li>
                              <a data-toggle="pill" href="#menu2">F.A.Q.</a>
                            </li>
                          </ul>

                          <div class="tab-content">
                            <div id="menu1" class="tab-pane fade in active">
                              <h1>상세설명</h1>
                              <img src="../../img/pjt_context1.jpg">
                                <p style="text-align: center">Echo Dot is a hands-free, voice-controlled device with a small built-in speaker—it can also connect to your speakers or headphones over Bluetooth or through a 3.5 mm audio cable to deliver stereo sound to the speakers
                                  you choose. Dot connects to the Alexa Voice Service to play music, make calls, send and receive messages, provide information, news, sports scores, weather, and more—instantly. Echo Dot can hear you from across the room, even while music is playing.
                                  When you want to use Echo Dot, just say the wake word “Alexa” and Dot responds instantly. If you have more than one Echo or Echo Dot, Alexa responds intelligently from the Echo you're closest to with ESP (Echo Spatial Perception). Learn more about
                                  ESP</p>
                                <img src="../../img/pjt_context2.jpg"></div>

                                <div id="menu2" class="tab-pane fade">
                                  <h1>자주 묻는 질문</h1>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">Q. 돈 먹고 튈건가요?</div>
                                    <div class="panel-body">A. 물론입니다.</div>
                                  </div>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">Q. 엄마가 좋나요, 아빠가 좋나요?</div>
                                    <div class="panel-body">A. 노 코멘트.</div>
                                  </div>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">Q. 모금 실패시 환불 되나요?</div>
                                    <div class="panel-body">A. 물론 안됩니다.</div>
                                  </div>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">Q. 돈 먹고 튈건가요?</div>
                                    <div class="panel-body">A. 물론입니다.</div>
                                  </div>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">Q. 엄마가 좋나요, 아빠가 좋나요?</div>
                                    <div class="panel-body">A. 노 코멘트.</div>
                                  </div>
                                  <div class="panel panel-default">
                                    <div class="panel-heading">Q. 모금 실패시 환불 되나요?</div>
                                    <div class="panel-body">A. 물론 안됩니다.</div>
                                  </div>

                                </div>

                              </div>

                            </div>
                          </div>

                        </div>

                        <!--  숨겨진 로그인 창 -->

                        <div id="id01" class="modal">

                          <form class="modal-content animate" action="/action_page.php">
                            <div class="imgcontainer">
                              <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                            </div>

                            <div class="container">
                              <label>
                                <b>아이디</b>
                              </label>
                              <input type="text" placeholder="아이디를 입력해주세요" name="uname" required>
                                <label>
                                  <b>비밀번호</b>
                                </label>
                                <input type="password" placeholder="비밀번호를 입력해주세요" name="psw" required>

                                  <button type="submit">로그인</button>
                                  <input type="checkbox" checked="checked">
                                    로그인 정보를 기억합니다.
                                  </div>

                                  <div class="container" style="background-color: #f1f1f1">
                                    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">취소</button>
                                    <span class="psw">
                                      <a href="#">비밀번호</a>를 잊으셨나요?</span>
                                  </div>
                                </form>
                              </div>

                              <script>
                                // Get the modal
                                var modal = document.getElementById('id01');

                                // When the user clicks anywhere outside of the modal, close it
                                window.onclick = function (event) {
                                  if (event.target == modal) {
                                    modal.style.display = "none";
                                  }
                                }
                              </script>
                            </body>

                          </html>
