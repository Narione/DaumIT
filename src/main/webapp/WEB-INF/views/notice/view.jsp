<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="Template Mo" />
        <link
            href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
            rel="stylesheet"
        />

        <title>Daum IT-공지사항</title>

        <!-- Bootstrap core CSS -->
        <link href="/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="/resource/assets/css/fontawesome.css" />
        <link rel="stylesheet" href="/resource/assets/css/templatemo-edu-meeting.css" />
        <link rel="stylesheet" href="/resource/assets/css/owl.css" />
        <link rel="stylesheet" href="/resource/assets/css/lightbox.css" />
        <!--

TemplateMo 569 Edu Meeting

https://templatemo.com/tm-569-edu-meeting

-->
        <style>
            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
                border-radius: 10px;
            }

            th,
            td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            th {
                background-color: #f2f2f2;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            /* 열 너비 조정 */
            th:nth-child(1),
            td:nth-child(1) {
                width: 8%;
            }

            th:nth-child(2),
            td:nth-child(2) {
                width: 52%;
            }

            th:nth-child(3),
            td:nth-child(3) {
                width: 15%;
            }

            th:nth-child(4),
            td:nth-child(4) {
                width: 10%;
            }

            th:nth-child(5),
            td:nth-child(5) {
                width: 15%;
            }

            .btn {
                text-align: left;
                background-color: #000;
                color: #fff;
                border-radius: 20%;
                width: 60px;
                height: 40px;
                text-align: center;
            }

            .btn:hover {
                color: #000;
                background-color: #fff;
                border: 1px solid #000;
            }

            .subT {
                font-weight: bold;
                font-size: 18px;
                margin-top: 8px;
            }

            .noneBtn {
                border: none;
                background: none;
                font-weight: bold;
                width: 50px;
                height: 30px;
            }

            .noneBtn:hover {
                border-radius: 20%;
                width: 50px;
                height: 30px;
                text-align: center;
                border: 1px solid #000;
            }

            .dateH {
                text-align: left;
                padding: 0;
                color: #969696;
                font-size: 14px;
                width: 120px;
                margin-top: 2px;
            }

            .commentDiv {
                border-bottom: 1px solid #ccc;
                padding: 10px 0;
            }

            .comDiv {
                margin: 5% auto;
                padding: 15px 5px;
                border: 1px solid #000;
                width: 95%;
                height: 130px;
                border-radius: 10px;
            }
        </style>
    </head>

    <body>
        <!-- Sub Header -->
        <div class="sub-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-sm-8">
                        <div class="left-content">
                            <!-- <p>This is an educational <em>HTML CSS</em> template by TemplateMo website.</p> -->
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-4">
                        <div class="right-icons">
                            <ul>
                                <li id="loginLink"><a href="login.html">로그인</a></li>
                                <li id="signupLink"><a href="signup.html">회원가입</a></li>
                                <li id="userGreeting" style="display: none"></li>
                                <li id="mypageLink" style="display: none"><a href="mypage-m.html">마이페이지</a></li>
                                <li id="logoutLink" style="display: none">로그아웃</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a href="index-m.html" class="logo" style="font-size: 46px"> Daum IT </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li><a href="index-m.html">Home</a></li>
                                <li class="has-sub">
                                    <a href="introduce-m.html">학원소개</a>
                                    <ul class="sub-menu">
                                        <li><a href="introduce-m.html">학원 소개</a></li>
                                        <li><a href="teacher-m.html">교직원 소개</a></li>
                                        <li><a href="employment-m.html">취업현황</a></li>
                                    </ul>
                                </li>
                                <li><a href="notice-m.html" class="active">공지사항</a></li>
                                <li>
                                    <a href="community-m.html">커뮤니티</a>
                                </li>
                                <li class="has-sub">
                                    <a href="FAQ-m.html">고객센터</a>
                                    <ul class="sub-menu">
                                        <li><a href="FAQ-m.html">FAQ</a></li>
                                        <li><a href="counsel-m.html">문의 및 상담</a></li>
                                        <li><a href="location-m.html">오시는 길</a></li>
                                    </ul>
                                </li>
                                <li><a href="calendar-m.html">출결조회</a></li>
                            </ul>
                            <a class="menu-trigger">
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <section class="heading-page header-text" id="top" style="background-image: url(/resource/assets/images/hd1.png);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h6>내일을 향해 나아가는 Daum IT</h6>
                        <h2>공지사항</h2>
                    </div>
                </div>
            </div>
        </section>

        <section class="meetings-page" id="meetings">
            <div
                class="container"
                style="
                    background-color: #ffffff;
                    width: 100%;
                    color: #000000;
                    border-radius: 10px;
                    padding-left: 5%;
                    padding-top: 3%;
                    padding-right: 5%;
                    padding-bottom: 25px;
                ">
                <div class="row" style="margin-bottom: 15px">
                    <div class="col-10" style="width: 85%">
                        <button id="showList" class="btn">목록</button>
                    </div>
                    <div class="col-1" style="text-align: right; padding-right: 0px; width: 70px">
                        <button id="updateContent" class="btn">수정</button>
                    </div>
                    <div class="col-1" style="width: 70px">
                        <button id="deleteBtn" class="btn">삭제</button>
                    </div>
                </div>

                <div id="titleContent" style="font-size: 30px; border-top: 2px solid #000; padding-top: 6px"></div>
                <div style="margin-left: 2px; margin-right: 2px">
                    <div id="idContent" style="padding: 0"></div>
                </div>
                <div
                    class="row"
                    style="border-bottom: 1px solid #000; padding-bottom: 6px; margin-left: 2px; margin-right: 2px"
                >
                    <div id="dateContent" class="col-2 dateH"></div>
                    <div id="hitsContent" class="col-2 dateH"></div>
                </div>
                <div id="content" style="padding: 20px 5px; height: 400px; border-bottom: 2px solid #000"></div>
            </div>
            <div class="footer">
                <p>
                    Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.
                    <br />
                    Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a>
                    <br />
                    Distibuted By:
                    <a href="https://themewagon.com" target="_blank" title="Build Better UI, Faster">ThemeWagon</a>
                </p>
            </div>
        </section>

        <!-- 조회수 업데이트 -->
        <script>
            window.addEventListener('DOMContentLoaded', function () {
                const updateC = document.querySelector('#updateContent');
                const boardN = JSON.parse(localStorage.getItem('watchNum'));
                const board = JSON.parse(localStorage.getItem('notice'));
                const boardContent = board[boardN - 1]; //현재 보고있는 페이지 board정보 모조리
                const setHitsC = {
                    num: boardContent.num,
                    title: boardContent.title,
                    hits: boardContent.hits + 1,
                    createdate: boardContent.createdate,
                    content: boardContent.content,
                    delete: boardContent.delete,
                    member_num: boardContent.member_num,
                };
                updateC.addEventListener('click', function () {
                    window.location.href = `/notice/update`;
                });
                changeToLocal(setHitsC, boardN - 1);

                // 로그인유지

                // sessionStorage에서 로그인 정보 가져오기
                const isLoggedIn = sessionStorage.getItem('login');
                if (isLoggedIn) {
                    const userInfo = JSON.parse(isLoggedIn);
                    const userName = userInfo.name;
                    const userGreeting = document.getElementById('userGreeting');

                    // 로그인, 회원가입 링크 숨기기
                    const loginLink = document.getElementById('loginLink');
                    const signupLink = document.getElementById('signupLink');
                    loginLink.style.display = 'none';
                    signupLink.style.display = 'none';

                    userGreeting.style.display = 'inline-block';
                    userGreeting.innerHTML = `<span style="color:white; font-weight: bold;">${userName}님</span>`;

                    // 마이페이지 링크 표시
                    const mypageLink = document.getElementById('mypageLink');
                    mypageLink.style.display = 'inline-block';
                    mypageLink.innerHTML =
                        "<a href='mypage-m.html' style='color: white; text-decoration: none;'>마이페이지</a>";
                    //로그아웃 링크 표시
                    const logoutLink = document.getElementById('logoutLink');
                    logoutLink.style.display = 'inline-block';
                    logoutLink.innerHTML = "<a href='#'; style='color: white; text-decoration: none;'>로그아웃</a>";
                    // 로그아웃 기능
                    logoutLink.addEventListener('click', function () {
                        sessionStorage.clear();
                        window.location.href = 'index.html';
                    });

                    //해당 글 작성자만 글 삭제 버튼 표시
                    const deleteBt = document.querySelector('#deleteBtn');
                }
            });

            function changeToLocal(context, index) {
                let notice = JSON.parse(localStorage.getItem('notice')) || [];
                notice[index].hits = context.hits;
                localStorage.setItem('notice', JSON.stringify(notice));
            }
        </script>

        <!-- Scripts -->
        <!-- Bootstrap core JavaScript -->
        <script src="/resource/vendor/jquery/jquery.min.js"></script>
        
        <script src="/resource/assets/js/isotope.min.js"></script>
        <script src="/resource/assets/js/owl-carousel.js"></script>
        <script src="/resource/assets/js/lightbox.js"></script>
        <script src="/resource/assets/js/tabs.js"></script>
        <script src="/resource/assets/js/isotope.js"></script>
        <script src="/resource/assets/js/video.js"></script>
        <script src="/resource/assets/js/slick-slider.js"></script>
        <script src="/resource/assets/js/custom.js"></script>
        <script>
            // 목록가기 버튼
            const showList = document.querySelector('#showList');
            showList.addEventListener('click', function () {
                window.location.href = '/notice';
            });

            // 글번호에 따른 글 내용 불러오기
            const titleContent = document.querySelector('#titleContent');
            const idContent = document.querySelector('#idContent');
            const dateContent = document.querySelector('#dateContent');
            const content = document.querySelector('#content');

            const notice = JSON.parse(localStorage.getItem('notice'));
            const urlParams = window.location.search;
            const urlSear = new URLSearchParams(urlParams);
            const pageNum = urlSear.get('num');

            memObject = JSON.parse(localStorage.getItem('member'));
            let memId;
            let memName;

            notice.forEach(function (el, idx) {
                for (let j = 0; j < memObject.length; j++) {
                    if (memObject[j].num == notice[idx].member_num) {
                        memId = memObject[j].id;
                        memName = memObject[j].name;
                        break;
                    }
                }

                if (notice[idx].num == pageNum) {
                    titleContent.innerHTML = `${notice[idx].title}`;
                    idContent.innerHTML = `작성자: ${memName} <span style="font-size: 13px">(${memId})</span>`;
                    dateContent.innerHTML = `${notice[idx].createdate}`;
                    hitsContent.innerHTML = `조회 ${notice[idx].hits}`;
                    content.innerHTML = notice[idx].content;
                }
            });

            //글 삭제하기
            const deleteBtn = document.querySelector('#deleteBtn');

            deleteBtn.addEventListener('click', function () {
                notice.forEach(function (el, idx) {
                    if (notice[idx].num == localStorage.getItem('watchNum')) {
                        // 가져온 객체의 'delete' 속성 값을 변경
                        notice[idx].delete = true;
                        // 변경된 객체를 다시 localStorage에 저장
                        localStorage.setItem('notice', JSON.stringify(notice));
                    }
                });
                window.location.href = 'notice-m.html';
            });
        </script>
    </body>
</html>
