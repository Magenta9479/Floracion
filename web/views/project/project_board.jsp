<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
      <title>프로젝트 게시판</title>
      <link href="../css/project_board.css" type="text/css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      </head>
      <body style="background: #F2ECE9;">
        <%@ include file="../../header.jsp" %>
        <div class="container">
          <div id="board_area">

            <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
              <div class="container bootstrap snippet">
                <div class="col-sm-8">
                  <div class="panel panel-white post panel-shadow">
                    <div class="post-heading">
                      <div class="pull-left image">
                        <img src="https://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image"></div>
                        <div class="pull-left meta">
                          <div class="title h5">
                            <a href="#">
                              <b>임현상</b>
                            </a>
                            님이 글을 작성하셨습니다.
                          </div>
                          <h6 class="text-muted time">1분전 작성</h6>
                        </div>
                      </div>

                      <%-- 게시글 --%>
                      <div class="post-description">
                        <p>이 사이트 엄청 허접하네요 ㅋㅋㅋㅋㅋㅋㅋ 뭐야 이게</p>
                        <p>이 사이트 엄청 허접하네요 ㅋㅋㅋㅋㅋㅋㅋ 뭐야 이게</p>
                        <p>이 사이트 엄청 허접하네요 ㅋㅋㅋㅋㅋㅋㅋ 뭐야 이게</p>
                        <p>이 사이트 엄청 허접하네요 ㅋㅋㅋㅋㅋㅋㅋ 뭐야 이게</p>
                        <p>이 사이트 엄청 허접하네요 ㅋㅋㅋㅋㅋㅋㅋ 뭐야 이게</p>

                        <div class="stats">
                          <a href="#" class="btn btn-default stat-item">
                            <i class="fa fa-thumbs-up icon"></i>52
                          </a>
                          <a href="#" class="btn btn-default stat-item">
                            <i class="fa fa-share icon"></i>12
                          </a>
                        </div>
                      </div>

                      <%-- 댓글란 --%>
                      <div class="post-footer">

                        <%-- 댓글 작성 --%>
                        <div class="input-group">
                          <input class="form-control" placeholder="코멘트 작성하기.." type="text">
                            <span class="input-group-addon">
                              <a href="#">
                                <i class="fa fa-edit"></i>
                              </a>
                            </span>
                          </div>
                          <%-- 댓글 작성 --%>

                          <ul class="comments-list">

                            <li class="comment">
                              <a class="pull-left" href="#">
                                <img class="avatar" src="https://bootdey.com/img/Content/user_2.jpg" alt="avatar"></a>
                                <div class="comment-body">
                                  <div class="comment-heading">
                                    <h4 class="user">윤차주</h4>
                                    <h5 class="time">5분전 작성</h5>
                                  </div>
                                  <p>현상씨 말 한번 잘하네요! 추천드립니다.</p>
                                  <p>현상씨 말 한번 잘하네요! 추천드립니다.</p>
                                  <p>현상씨 말 한번 잘하네요! 추천드립니다.</p>
                                  <p>현상씨 말 한번 잘하네요! 추천드립니다.</p>
                                  <p>현상씨 말 한번 잘하네요! 추천드립니다.</p>
                                </div>
                              </li>

                              <li class="comment">
                                <a class="pull-left" href="#">
                                  <img class="avatar" src="https://bootdey.com/img/Content/user_3.jpg" alt="avatar"></a>
                                  <div class="comment-body">
                                    <div class="comment-heading">
                                      <h4 class="user">빌 게이츠</h4>
                                      <h5 class="time">3분전 작성</h5>
                                    </div>
                                    <p>Shut up.</p>
                                  </div>
                                </li>

                                <li class="comment">
                                  <a class="pull-left" href="#">
                                    <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                    <div class="comment-body">
                                      <div class="comment-heading">
                                        <h4 class="user">강아지</h4>
                                        <h5 class="time">13분전 작성</h5>
                                      </div>
                                      <p>멍! 멍멍!</p>
                                    </div>
                                  </li>

                                  <li class="comment">
                                    <a class="pull-left" href="#">
                                      <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                      <div class="comment-body">
                                        <div class="comment-heading">
                                          <h4 class="user">강아지</h4>
                                          <h5 class="time">13분전 작성</h5>
                                        </div>
                                        <p>멍! 멍멍!</p>
                                      </div>
                                    </li>

                                    <li class="comment">
                                      <a class="pull-left" href="#">
                                        <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                        <div class="comment-body">
                                          <div class="comment-heading">
                                            <h4 class="user">강아지</h4>
                                            <h5 class="time">13분전 작성</h5>
                                          </div>
                                          <p>멍! 멍멍!</p>
                                        </div>
                                      </li>

                                      <li class="comment">
                                        <a class="pull-left" href="#">
                                          <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                          <div class="comment-body">
                                            <div class="comment-heading">
                                              <h4 class="user">강아지</h4>
                                              <h5 class="time">13분전 작성</h5>
                                            </div>
                                            <p>멍! 멍멍!</p>
                                          </div>
                                        </li>

                                        <li class="comment">
                                          <a class="pull-left" href="#">
                                            <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                            <div class="comment-body">
                                              <div class="comment-heading">
                                                <h4 class="user">강아지</h4>
                                                <h5 class="time">13분전 작성</h5>
                                              </div>
                                              <p>멍! 멍멍!</p>
                                            </div>
                                          </li>

                                          <li class="comment">
                                            <a class="pull-left" href="#">
                                              <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                              <div class="comment-body">
                                                <div class="comment-heading">
                                                  <h4 class="user">강아지</h4>
                                                  <h5 class="time">13분전 작성</h5>
                                                </div>
                                                <p>멍! 멍멍!</p>
                                              </div>
                                            </li>

                                            <li class="comment">
                                              <a class="pull-left" href="#">
                                                <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                                <div class="comment-body">
                                                  <div class="comment-heading">
                                                    <h4 class="user">강아지</h4>
                                                    <h5 class="time">13분전 작성</h5>
                                                  </div>
                                                  <p>멍! 멍멍!</p>
                                                </div>
                                              </li>

                                              <li class="comment">
                                                <a class="pull-left" href="#">
                                                  <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                                  <div class="comment-body">
                                                    <div class="comment-heading">
                                                      <h4 class="user">강아지</h4>
                                                      <h5 class="time">13분전 작성</h5>
                                                    </div>
                                                    <p>멍! 멍멍!</p>
                                                  </div>
                                                </li>

                                                <li class="comment">
                                                  <a class="pull-left" href="#">
                                                    <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                                    <div class="comment-body">
                                                      <div class="comment-heading">
                                                        <h4 class="user">강아지</h4>
                                                        <h5 class="time">13분전 작성</h5>
                                                      </div>
                                                      <p>멍! 멍멍!</p>
                                                    </div>
                                                  </li>

                                                  <li class="comment">
                                                    <a class="pull-left" href="#">
                                                      <img class="avatar" src="https://bootdey.com/img/Content/user_1.jpg" alt="avatar"></a>
                                                      <div class="comment-body">
                                                        <div class="comment-heading">
                                                          <h4 class="user">강아지</h4>
                                                          <h5 class="time">13분전 작성</h5>
                                                        </div>
                                                        <p>멍! 멍멍!</p>
                                                      </div>
                                                    </li>

                                                  </ul>

                                                </div>
                                                <%-- 댓글란 --%>

                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>

                                    </body>
                                  </html>
