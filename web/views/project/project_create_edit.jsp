<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>프로젝트 시작</title>
        <link href="../css/project_create_edit.css" type="text/css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="../js/project_create.js" type="text/javascript"></script>

    </head>

    <body>
        <div class="container">

            <section style="background:#efefe9;">
                <div class="container">
                    <div class="row">
                        <div class="board">
                            <!-- <h2>Welcome to IGHALO!<sup>™</sup></h2>-->
                            <div class="board-inner">
                                <ul class="nav nav-tabs" id="myTab">
                                    <div class="liner"></div>
                                    <li class="active">
                                        <a href="#home" data-toggle="tab" title="1. 기본사항 입력하기">
                                            <span class="round-tabs one">
                            <i class="glyphicon glyphicon-user"></i>
                          </span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#profile" data-toggle="tab" title="2. 프로젝트 설명하기">
                                            <span class="round-tabs two">
                            <i class="glyphicon glyphicon-picture"></i>
                          </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#messages" data-toggle="tab" title="3. 프로젝트 분야 설정하기">
                                            <span class="round-tabs three">
                            <i class="glyphicon glyphicon-list"></i>
                          </span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#settings" data-toggle="tab" title="4. 프로젝트 목표 설정하기">
                                            <span class="round-tabs four">
                            <i class="glyphicon glyphicon-gift"></i>
                          </span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#doner" data-toggle="tab" title="5. 입력사항 검토하기">
                                            <span class="round-tabs five">
                            <i class="glyphicon glyphicon-check"></i>
                          </span>
                                        </a>
                                    </li>

                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">

                                    <div class="panel panel-default">

                                        <h3 class="head text-center">프로젝트 생성 기본 단계</h3>
                                        <div class="panel-heading">
                                            <h4>프로젝트 이름</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p>주제가 분명하고 후원자들의 이목을 사로잡을 수 있는 멋진 이름을 지어주세요.</p>
                                            <div class="form-group">
                                                <input type="text" name="pName" class="form-control" rows="1" id="comment" required>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4>프로젝트 설명</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p>프로젝트에 대해 간략하고 명확하게 설명해주세요.</p>
                                            <div class="form-group">
                                                <textarea name="pText" class="form-control" rows="2" id="comment"></textarea>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="tab-pane fade" id="profile">

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4>프로젝트 대표 이미지</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p>프로젝트를 대표할 이미지를 업로드해 주세요. (최적화된 가로, 세로 비율 2:1)</p>
                                            <label class="btn btn-default">
                            파일찾기
                            <input name="pImage" type="file" hidden></label>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4>프로젝트 대표 동영상</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p>프로젝트를 대표할 동영상을 업로드해 주세요. (최적화된 가로, 세로 비율 2:1)</p>
                                            <label class="btn btn-default">
                              파일찾기
                              <input name="pVideo" type="file" hidden></label>
                                        </div>
                                    </div>

                                </div>

                                <div class="tab-pane fade" id="messages">
                                    <div class="panel panel-default">

                                        <h3 class="head text-center">이 프로젝트는 어떤 분야에 속할까요?</h3>
                                        <p class="narrow text-center">
                                            프로젝트가 지향하는 분야를 선택해 주세요.
                                            <br>해당하는 분야가 없을 경우 '기타'로 표시해주세요.
                                        </p>

                                        <div class="panel-heading">
                                            <h4>프로젝트 카테고리</h4>
                                        </div>
                                        <div class="panel-body">
                                            <div class="dropdown">
                                                <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">카테고리 선택
                                    <span class="caret"></span>
                                  </button>
                                                <input type="hidden" class="category">
                                                <ul class="dropdown-menu">
                                                    <li class="dropdown-header">게임</li>
                                                    <li>
                                                        <a href="#">온라인게임</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">모바일게임</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">게임기</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">보드게임</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기타</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li class="dropdown-header">예술</li>
                                                    <li>
                                                        <a href="#">음악</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">공공예술</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">행위예술</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">조각</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">회화</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">공연</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">영상</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기타</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li class="dropdown-header">기술</li>
                                                    <li>
                                                        <a href="#">3D프린트</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">DIY</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">IoT</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">VR</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">로봇</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">웨어러블</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">하드웨어</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">워크샵</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">박람회</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기타</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li class="dropdown-header">출판</li>
                                                    <li>
                                                        <a href="#">학술</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">어린이</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">소설</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">비소설</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">외서</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">시</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">팟캐스트</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">수험서</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기타</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li class="dropdown-header">디자인</li>
                                                    <li>
                                                        <a href="#">인테리어</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">캘리그라피</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">그래픽디자인</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">설계</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">제품</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">조경</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기타</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li class="dropdown-header">패션</li>
                                                    <li>
                                                        <a href="#">악세사리</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">의류</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">신발</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">스포츠웨어</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">유아</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기타</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li class="dropdown-header">전문기술</li>
                                                    <li>
                                                        <a href="#">타투</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">가죽세공</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">보석세공</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">전통기술</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">양조</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기타</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li class="dropdown-header">운동</li>
                                                    <li>
                                                        <a href="#">다이어트</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">보더빌딩</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">요가</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">운동기구</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">자전거</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">대회</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">러닝</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">하이킹</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">워터스포츠</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기타</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li class="dropdown-header">자기계발</li>
                                                    <li>
                                                        <a href="#">자격증</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">공모전</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">스터디</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">토론</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">외국어</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">악기연주</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">기타</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="settings">

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4>프로젝트 목표 금액</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p>후원 목표 금액 (최소 5000원 이상)을 적어주세요. 목표 금액은 추후에 수정 가능합니다.</p>
                                            <div class="form-group col-xs-3">
                                                <input name="pGMoney" class="form-control input-sm" id="inputsm" min="0" value="5000" dir="rtl" type="text" onkeypress='return event.charCode >= 48 && event.charCode <= 57'></div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4>프로젝트 목표 날짜</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p>프로젝트 시작 날짜와 종료 날짜를 정해주세요. 종료일은 시작일로부터 최대 60일까지입니다.</p>
                                            <br>

                                            <div class="form-group row">
                                                <label for="example-date-input" class="col-2 col-form-label">Date</label>
                                                <div class="col-10">
                                                    <input name="pSDate" class="form-control" type="date" value="2017-08-19" id="example-date-input"></div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="example-date-input" class="col-2 col-form-label">Date</label>
                                                <div class="col-10">
                                                    <input name="pEDate" class="form-control" type="date" value="2017-08-19" id="example-date-input"></div>
                                            </div>

                                        </div>
                                    </div>

                                </div>

                                <div class="tab-pane fade" id="doner">
                                    <div class="text-center">
                                        <i class="img-intro icon-checkmark-circle"></i>
                                    </div>
                                    <h3 class="head text-center">프로젝트 정보 입력이 완료 되었습니다!</h3>
                                    <p class="narrow text-center">
                                        이제까지 입력한 사항을 확인 뒤 아래 버튼을 눌러 프로젝트 생성을 완료하세요.
                                        <br>
                                        <br>프로젝트 정보 수정은 이후에도 가능합니다.
                                        <br>
                                        <br>프로젝트가 다른 사용자들에게 보이기까지는
                                        <br>등록 요청 후 최대 3일까지 걸릴 수 있습니다.
                                    </p>

                                    <p class="text-center">
                                        <a href="" class="btn btn-success btn-outline-rounded green" type="submit">
                                                        생성 완료 및 등록 요청하기<span style="margin-left:10px;" class="glyphicon glyphicon-ok"></span>
                                                      </a>
                                    </p>

                                </div>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>

        </div>

    </body>

    </html>
