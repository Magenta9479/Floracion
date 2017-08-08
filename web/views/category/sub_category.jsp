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
                    <video src="../../img/art.mp4" autoplay loop/>
                </div>

                <div id="cover_txt">
                    <div id="cover_h">
                        <h1>ART</h1>
                    </div>
                    <div id="cover_p">
                        <p>“Everything you can imagine is real.” <br>― Pablo Picasso</p>
                        <p>“그대가 상상할 수 있는 모든 것이 바로 현실이다.” <br>― 파블로 피카소</p>
                    </div>
                </div>
            </div>

            <div class="container">
                <ul class="nav nav-pills">
                    <li class="active"><a data-toggle="pill" href="#menu1">최신 프로젝트</a></li>
                    <li><a data-toggle="pill" href="#menu2">마감 임박 프로젝트</a></li>
                    <li><a data-toggle="pill" href="#menu3">인기 프로젝트</a></li>
                </ul>

                <div class="projects_area">

                    <div class="tab-content">
                        <div id="menu1" class="tab-pane fade in active">

                            <div class="projects" id="no8">
                                <div class="projects_img">
                                    <img src="../../img/pjt8.jpg" alt="pjt8">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">회화</h4>
                                    <h4 class="txt_algn_right">파라스톤</h4><br>
                                    <p>Lorem ipsum dolor sit amet, consectetur iscimagna aliq magna aliq isci ipi litdipi litdipi litdipi l dipidipdipdipsasng s, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                                <div class="progress_area">
                                    <progress max="100" value="33"></progress>
                                    <p class="txt_algn_left">33% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 16일</p>
                                </div>
                            </div>

                            <div class="projects" id="no8">
                                <div class="projects_img">
                                    <img src="../../img/pjt9.jpg" alt="pjt9">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">조형</h4>
                                    <h4 class="txt_algn_right">익스펙테이션</h4><br>
                                    <p>책 사이로 보이는 나이 지긋한 그의 모습. 주세페 아르침볼도<br><br></p>
                                </div>
                                <div class="progress_area">

                                    <div class="progress">
                                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100" style="width:72%">
                                            72% 완료
                                        </div>
                                    </div>

                                    <p class="txt_algn_center">남은 프로젝트 기간 18일</p>

                                </div>
                            </div>

                            <div class="projects" id="no1">
                                <div class="projects_img">
                                    <img src="../../img/pjt1.jpg" alt="pjt1">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">음악</h4>
                                    <h4 class="txt_algn_right">Universal Music</h4><br>
                                    <p>팝 역사상 가장 위대한 밴드, '비틀즈'!! 드디어 발매되는 팝 역사상 가장 위대한 밴드 비틀즈의 전 앨범 리마스터 180그램 LP버전!<br></p>
                                </div>
                                <div class="progress_area">

                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-custom active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                            60% 완료
                                        </div>
                                    </div>

                                    <p class="txt_algn_center">남은 프로젝트 기간 13일</p>

                                </div>
                            </div>

                            <div class="projects" id="no2">
                                <div class="projects_img">
                                    <img src="../../img/pjt2.jpg" alt="pjt2">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">작품</h4>
                                    <h4 class="txt_algn_right">아트램프닷컴</h4><br>
                                    <p>인상화 화풍의 빛을 담아.</p>
                                </div>
                                <div class="progress_area">
                                    <progress max="100" value="33"></progress>
                                    <p class="txt_algn_left">33% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 28일</p>
                                </div>
                            </div>

                            <div class="projects" id="no3">
                                <div class="projects_img">
                                    <img src="../../img/pjt3.jpg" alt="pjt3">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">회화</h4>
                                    <h4 class="txt_algn_right">클라디우스 플래터</h4><br>
                                    <p>2,000개가 넘는 스케치를 수록한 건축 설계사전</p>
                                </div>
                                <div class="progress_area">
                                    <progress max="100" value="12"></progress>
                                    <p class="txt_algn_left">12% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 35일</p>
                                </div>
                            </div>

                            <div class="projects" id="no4">
                                <div class="projects_img">
                                    <img src="../../img/pjt4.jpg" alt="pjt4">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">만화</h4>
                                    <h4 class="txt_algn_right">시공 그래픽 노블</h4><br>
                                    <p>와치맨, 브이포벤데타 한글 번역, 드디어 출간!</p>
                                </div>
                                <div class="progress_area">
                                    <progress max="100" value="88"></progress>
                                    <p class="txt_algn_left">88% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 2일</p>
                                </div>
                            </div>
                        </div>

                        <div id="menu2" class="tab-pane fade">

                            <div class="projects" id="no5">
                                <div class="projects_img">
                                    <img src="../../img/pjt5.jpg" alt="pjt5">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">타이포그래피</h4>
                                    <h4 class="txt_algn_right">매거진 B</h4>
                                    <p>수없이 다양한 메시지들의 중립적인 전달 도구, Helvetica</p>
                                    <hr>
                                    <progress max="100" value="34"></progress>
                                    <p class="txt_algn_left">34% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 6일</p>
                                </div>
                            </div>
                            <div class="projects" id="no3">
                                <div class="projects_img">
                                    <img src="../../img/pjt3.jpg" alt="pjt3">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">회화</h4>
                                    <h4 class="txt_algn_right">클라디우스 플래터</h4>
                                    <p>2,000개가 넘는 스케치를 수록한 건축 설계사전</p>
                                    <hr>
                                    <progress max="100" value="12"></progress>
                                    <p class="txt_algn_left">12% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 35일</p>
                                </div>
                            </div>
                            <div class="projects" id="no1">
                                <div class="projects_img">
                                    <img src="../../img/pjt1.jpg" alt="pjt1">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">음악</h4>
                                    <h4 class="txt_algn_right">Universal Music</h4>
                                    <p>팝 역사상 가장 위대한 밴드, '비틀즈'!! 드디어 발매되는 팝 역사상 가장 위대한 밴드 비틀즈의 전 앨범 리마스터 180그램 LP버전!<br></p>
                                    <div class="progress_area">
                                        <hr>
                                        <progress max="100" value="80"></progress>
                                        <p class="txt_algn_left">80% 완료</p>
                                        <p class="txt_algn_right">남은 프로젝트 기간 13일</p>
                                    </div>
                                </div>
                            </div>
                            <div class="projects" id="no6">
                                <div class="projects_img">
                                    <img src="../../img/pjt6.jpg" alt="pjt6">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">조형물</h4>
                                    <h4 class="txt_algn_right">HELICONE LOLLIPOPTER</h4>
                                    <p>예술과 놀이, 그 경계선.<br></p>
                                    <div class="progress_area">
                                        <hr>
                                        <progress max="100" value="67"></progress>
                                        <p class="txt_algn_left">67% 완료</p>
                                        <p class="txt_algn_right">남은 프로젝트 기간 26일</p>
                                    </div>
                                </div>
                            </div>
                            <div class="projects" id="no2">
                                <div class="projects_img">
                                    <img src="../../img/pjt2.jpg" alt="pjt2">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">회화</h4>
                                    <h4 class="txt_algn_right">에드워드 호빵</h4>
                                    <p>산업화로 만들어진 현대의 도시 속에서 고독해진 인간의 존재를 대변하는 작품, 호퍼의 대표작</p>
                                    <hr>
                                    <progress max="100" value="33"></progress>
                                    <p class="txt_algn_left">33% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 28일</p>
                                </div>
                            </div>
                        </div>

                        <div id="menu3" class="tab-pane fade">

                            <div class="projects" id="no10">
                                <div class="projects_img">
                                    <img src="../../img/pjt10.jpg" alt="pjt10">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">회화</h4>
                                    <h4 class="txt_algn_right">요시모토 나라</h4>
                                    <p>달콤하게 끌어당기는 네 매력을 나는 보았지.<br><br></p>
                                    <hr>
                                    <progress max="100" value="73"></progress>
                                    <p class="txt_algn_left">73% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 15일</p>
                                </div>
                            </div>
                            <div class="projects" id="no7">
                                <div class="projects_img">
                                    <img src="../../img/pjt7.jpg" alt="pjt7">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">회화</h4>
                                    <h4 class="txt_algn_right">Jennifer MaraVilla</h4>
                                    <p>그림은 여행을 위한 이유이고, 여행은 그림을 그리기 위한 이유이다.<br><br></p>
                                    <hr>
                                    <progress max="100" value="33"></progress>
                                    <p class="txt_algn_left">95% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 2일</p>
                                </div>
                            </div>
                            <div class="projects" id="no2">
                                <div class="projects_img">
                                    <img src="../../img/pjt2.jpg" alt="pjt2">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">회화</h4>
                                    <h4 class="txt_algn_right">에드워드 호빵</h4>
                                    <p>산업화로 만들어진 현대의 도시 속에서 고독해진 인간의 존재를 대변하는 작품, 호퍼의 대표작</p>
                                    <hr>
                                    <progress max="100" value="33"></progress>
                                    <p class="txt_algn_left">33% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 28일</p>
                                </div>
                            </div>
                            <div class="projects" id="no3">
                                <div class="projects_img">
                                    <img src="../../img/pjt3.jpg" alt="pjt3">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">회화</h4>
                                    <h4 class="txt_algn_right">클라디우스 플래터</h4>
                                    <p>2,000개가 넘는 스케치를 수록한 건축 설계사전</p>
                                    <hr>
                                    <progress max="100" value="12"></progress>
                                    <p class="txt_algn_left">12% 완료</p>
                                    <p class="txt_algn_right">남은 프로젝트 기간 35일</p>
                                </div>
                            </div>
                            <div class="projects" id="no1">
                                <div class="projects_img">
                                    <img src="../../img/pjt1.jpg" alt="pjt1">
                                </div>
                                <div class="projects_txt">
                                    <h4 class="txt_algn_left">음악</h4>
                                    <h4 class="txt_algn_right">Universal Music</h4>
                                    <p>팝 역사상 가장 위대한 밴드, '비틀즈'!! 드디어 발매되는 팝 역사상 가장 위대한 밴드 비틀즈의 전 앨범 리마스터 180그램 LP버전!<br></p>
                                    <div class="progress_area">
                                        <hr>
                                        <progress max="100" value="80"></progress>
                                        <p class="txt_algn_left">80% 완료</p>
                                        <p class="txt_algn_right">남은 프로젝트 기간 13일</p>
                                    </div>
                                </div>
                            </div>

                        </div>



                    </div>

                </div>

    </body>

    </html>
