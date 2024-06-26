<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Template Mo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Daum IT-커뮤니티</title>

    <!-- smartEditor -->
    <style type="text/css">
        body {
            margin: 10px;
        }
    </style>
    <link rel="stylesheet" href="/resource/smartEditor2/css/ko_KR/smart_editor2.css">
    <script src="/resource/smartEditor2/js/lib/jindo2.all.js" charset="utf-8"></script>
    <script src="/resource/smartEditor2/js/lib/jindo_component.js" charset="utf-8"></script>
    <script src="/resource/smartEditor2/js/service/SE2M_Configuration.js" charset="utf-8"></script>
    <!-- setting -->
    <script src="/resource/smartEditor2/js/service/SE2BasicCreator.js" charset="utf-8"></script>
    <script src="/resource/smartEditor2/js/smarteditor2.js" charset="utf-8"></script>
    <link rel="stylesheet" href="/resource/smartEditor2/css/ko_KR/smart_editor2_items.css">
    <!-- head 안에 추가 -->


    <!-- Bootstrap core CSS -->
    <link href="/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="/resource/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/resource/assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="/resource/assets/css/owl.css">
    <link rel="stylesheet" href="/resource/assets/css/lightbox.css">
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
            text-align: center;
        }

        th:nth-child(2),
        td:nth-child(2) {
            width: 52%;
        }

        th:nth-child(3),
        td:nth-child(3) {
            width: 15%;
            text-align: center;
        }

        th:nth-child(4),
        td:nth-child(4) {
            width: 10%;
            text-align: center;
        }

        th:nth-child(5),
        td:nth-child(5) {
            width: 15%;
            text-align: left;
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
                    </div>
                </div>
                <div class="col-lg-4 col-sm-4">
                    <div class="right-icons">
                        <ul>
                            <li id="loginLink"><a href="login.html">로그인</a></li>
                            <li id="signupLink"><a href="signup.html">회원가입</a></li>
                            <li id="userGreeting" style="display: none;"></li>
                            <li id="mypageLink" style="display: none;"><a href="mypage-m.html">마이페이지</a></li>
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
                        <a href="index-m.html" class="logo" style="font-size: 46px;">
                            Daum IT
                        </a>
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
                            <li><a href="notice-m.html">공지사항</a></li>
                            <li>
                                <a href="community-m.html" class="active">커뮤니티</a>
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
                        <a class='menu-trigger'>
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
                    <h2>커뮤니티</h2>
                </div>
            </div>
        </div>
    </section>

    <section class="meetings-page" id="meetings">
        <div class="container"
            style="background-color: #ffffff; width: 100%; height: 700px; color: #000000;  border-radius: 10px; ">

            <div id="smarteditor" style="padding: 10px;">
                <h3 style="margin-bottom: 15px; margin-top: 10px;">글쓰기</h3>
                <span style="font-weight: bold;">제목 </span> <input type="text" style="width: 40%; height: 22px;" id="titleInput">
                <textarea name="editortx" id="editortx1" cols="20" rows="10"
                    style="width: 100%; height: 412px;;"></textarea>
            </div>
            <div id="se2_sample" style="margin:10px 0;">
                <input type="button" onclick="save();" value="글쓰기 완료" class="btn btn-outline-dark">
            </div>

        </div>
        <div class="footer">
            <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.
                <br>
                Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a>
                <br>
                Distibuted By: <a href="https://themewagon.com" target="_blank"
                    title="Build Better UI, Faster">ThemeWagon</a>
            </p>
        </div>
    </section>


    <!-- smartEditor JS -->
    <script src="/resource/smartEditor2/js/service/HuskyEZCreator.js"></script>
    <script id="smartEditor">
        var oEditors = [];
        nhn.husky.EZCreator.createInIFrame({
            oAppRef: oEditors,
            elPlaceHolder: "editortx1",
            sSkinURI: "/resource/smartEditor2/SmartEditor2Skin.html",
            fCreator: "createSEditor2"
        });
    </script>

<script>

    function loadBoNum(){
        const board = JSON.parse(localStorage.getItem("community"))
        const lastBoard = board[board.length-1]
        const lastNum = lastBoard.num
        return lastNum;
    }

    function save() {
        oEditors.getById["editortx1"].exec("UPDATE_CONTENTS_FIELD", []);

        const titleV = document.querySelector("#titleInput")
        if(titleV.value.length == 0 || titleV.value == ""){
            alert(`제목을 입력하세요.`)
            titleV.focus();
            return;
        }

        //스마트 에디터 값을 텍스트컨텐츠로 전달
        var content = document.getElementById("smartEditor").value;
        const context = document.getElementById("editortx1").value;
        // 값을 불러올 땐 document.get으로 받아오기

        //로그인 사용자 정보 가져오기
        const isLoggedIn = sessionStorage.getItem("login");
        const userInfo = JSON.parse(isLoggedIn);
        const userNum = userInfo.num;
        const titleI = document.querySelector("#titleInput").value;
        //============================================================


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
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
            var
                direction = section.replace(/#/, ''),
                reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                reqSectionPos = reqSection.offset().top - 0;

            if (isAnimate) {
                $('body, html').animate({
                    scrollTop: reqSectionPos
                },
                    800);
            } else {
                $('body, html').scrollTop(reqSectionPos);
            }

        };

        var checkSection = function checkSection() {
            $('.section').each(function () {
                var
                    $this = $(this),
                    topEdge = $this.offset().top - 80,
                    bottomEdge = topEdge + $this.height(),
                    wScroll = $(window).scrollTop();
                if (topEdge < wScroll && bottomEdge > wScroll) {
                    var
                        currentId = $this.data('section'),
                        reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                    reqLink.closest('li').addClass('active').
                        siblings().removeClass('active');
                }
            });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
            e.preventDefault();
            showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
            checkSection();
        });
    </script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // 로그인유지

            // sessionStorage에서 로그인 정보 가져오기
        const isLoggedIn = sessionStorage.getItem("login");
        if (isLoggedIn) {
            const userInfo = JSON.parse(isLoggedIn);
            const userName = userInfo.name;
            const userGreeting = document.getElementById("userGreeting");

            // 로그인, 회원가입 링크 숨기기
            const loginLink = document.getElementById("loginLink");
            const signupLink = document.getElementById("signupLink");
            loginLink.style.display = "none";
            signupLink.style.display = "none";

            userGreeting.style.display = "inline-block";
            userGreeting.innerHTML = `<span style="color:white; font-weight: bold;">${userName}님</span>`;

            // 마이페이지 링크 표시
            const mypageLink = document.getElementById("mypageLink");
            mypageLink.style.display = "inline-block";
            mypageLink.innerHTML = "<a href='mypage-m.html' style='color: white; text-decoration: none;'>마이페이지</a>";
            //로그아웃 링크 표시
            const logoutLink = document.getElementById("logoutLink");
            logoutLink.style.display = "inline-block";
            logoutLink.innerHTML = "<a href='#'; style='color: white; text-decoration: none;'>로그아웃</a>";
            // 로그아웃 기능
            logoutLink.addEventListener("click", function(){
              sessionStorage.clear();
              window.location.href = "index.html";
            })
          }
        });
    </script>
</body>


</body>

</html>