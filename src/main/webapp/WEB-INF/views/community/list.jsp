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
            width: 96%;
            border-collapse: collapse;
            margin: 0px auto;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th{
            border: none;
            border-top: 2px solid #000;
        }

        /* 열 너비 조정 */
        th:nth-child(1),
        td:nth-child(1) {
            width: 8%;
            text-align: center;
            border-left: none;
            border-right: none;
        }

        th:nth-child(2),
        td:nth-child(2) {
            width: 52%;
            padding-left: 3%;
            border-left: none;
            border-right: none;
            text-align: left;
        }

        th:nth-child(2){
            text-align: center;
        }

        th:nth-child(3),
        td:nth-child(3) {
            width: 15%;
            text-align: center;
            border-right: none;
            border-left: none;
        }

        th:nth-child(4),
        td:nth-child(4) {
            width: 8%;
            text-align: center;
            border-right: none;
            border-left: none;
        }

        th:nth-child(5),
        td:nth-child(5) {
            width: 10%;
            text-align: center;
            border-right: none;
            border-left: none;
        }

        #pagingSpan a {
            padding: 10px;
        }

        #pagingSpan a:hover {
            color: #fc3;
            cursor: pointer;
        }

        a {
            color: black;
        }

        a:hover {
            color: #fc3;
        }

        .noticeLine{
            background-color: #f7f7f7;
        }

        .noticeLine a{
            color: red;
            font-weight: bold;
        }

        .red{
            display: inline-block;
            background-color: #ffe4e4;
            color: #e90000;
            font-weight: bold;
            width: 60px;
            border: 1px solid #e90000;
            border-radius: 4px;
            text-align: center;
            margin: 0px 2px;
            padding: auto auto;
            padding-top: 2px;
            font-size: 13px;
        }

        .commShow{
            font-family: 'TheJamsil5Bold';
            color: #ff5a5a;
            font-size: 12px;
            font-weight: bold;
        }
    </style>


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
        // 글쓰기 페이지로 이동하는 버튼

        let writeBtn = null;
        let memObject = null;
        let communityArr = [];
        const postsPerPage = 10; // 페이지당 게시물 수
        let currentPage = 1; // 현재 페이지(1: 초기값)
        const pageCount = 5;    //페이지 바에 나타나는 페이지 수


        let pageGroup;
        let numPages;
        let first;
        let last;

        //이전 페이지, 다음페이지 버튼
        let prevBtn = null;
        let nextBtn = null;
        


        // A $( document ).ready() block.
        $(document).ready(function () {
            console.log("ready!");

            //목록, 뒤로가기를 위한 스토리지 저장

            memObject = JSON.parse(localStorage.getItem('member'));


            //이전 페이지, 다음페이지 버튼
            prevBtn = document.querySelector("#prevBtn");
            nextBtn = document.querySelector("#nextBtn");
            let aSelected = document.querySelectorAll(".boardWatching");

            prevBtn.addEventListener('click', function () {
                if (Math.ceil(pageGroup) > 1) {
                    last = first - 1;
                    currentPage = last;
                    updatePage(currentPage);
                    createPaginationButtons();
                    let aSelected = document.querySelectorAll(".boardWatching");
                    registerClickEvents(aSelected);
                }
            });

            nextBtn.addEventListener('click', function () {
                if (Math.ceil(pageGroup) !== Math.ceil(numPages / pageCount)) {
                    first = first + pageCount;
                    currentPage = first;
                    updatePage(currentPage);
                    createPaginationButtons();
                    let aSelected = document.querySelectorAll(".boardWatching");
                    registerClickEvents(aSelected);
                }
            });
            // 초기 페이지 로드
            updatePage(currentPage);
            createPaginationButtons();
            registerClickEvents(aSelected);
            

            // updatePage(currentPage);
            // 게시글 띄우기
            const aPaging = document.querySelectorAll("span#pagingSpan a");
            

            // 페이징 링크에 대한 이벤트 리스너 추가
            aPaging.forEach(function (link, index) {

                
                link.addEventListener("click", function () {
                    console.log("aPaging Event 발생")

                    // 페이지가 변경될 때마다 게시글 링크를 다시 선택
                    let aSelected = document.querySelectorAll(".boardWatching");

                    // 새로운 게시글 링크에 대한 이벤트 리스너 다시 등록
                    registerClickEvents(aSelected);
                });
            });

            // 초기 게시글 링크에 대한 이벤트 리스너 등록
            registerClickEvents(document.querySelectorAll(".boardWatching"));

            const notice = JSON.parse(localStorage.getItem("notice"))
        const firstNotice = notice[notice.length-1]
        const secondNotice = notice[notice.length-2]

        let firstId;
            for (let j = 0; j < memObject.length; j++) {
                if (memObject[j].num == firstNotice.member_num) {
                    firstId = memObject[j].id;
                    break;
                }
            }

        let secondId;
        for (let j = 0; j < memObject.length; j++) {
            if (memObject[j].num == secondNotice.member_num) {
                secondId = memObject[j].id;
                break;
            }
        }

        const noticeShowing = document.querySelector("#boardTop")
        noticeShowing.innerHTML += `<tr class="noticeLine">
                                    <td><span class="red">공지</span></td>
                                    <td><a href="notice-board-watch.html?num=${firstNotice.num}" class="boardWatching">${firstNotice.title}</a></td>
                                    <td>${firstId}</td>
                                    <td>${firstNotice.hits}</td>
                                    <td>${firstNotice.createdate.substr(2,8)}</td>
                                </tr>
                                <tr class="noticeLine">
                                    <td><span class="red">공지</span></td>
                                    <td><a href="notice-board-watch.html?num=${secondNotice.num}" class="boardWatching">${secondNotice.title}</a></td>
                                    <td>${secondId}</td>
                                    <td>${secondNotice.hits}</td>
                                    <td>${secondNotice.createdate.substr(2,8)}</td>
                                </tr>`
        });

        




        function registerClickEvents(link) {
            link.forEach(function (el, idx) {
                el.addEventListener("click", function () {
                    let selector = "tbody tr:nth-child(" + (idx + 1) + ") td#num";
                    let element = document.querySelector(selector);
                    let selectedNum = element.textContent;
                    localStorage.setItem("watchNum", selectedNum);
                });
            });
        }

        // 페이지를 업데이트하는 함수
        function updatePage(pageNumber) {
            communityArr = JSON.parse(localStorage.getItem("community"));

            const reversedcommunityArr = communityArr.reverse();
            const tbody = document.querySelector("tbody");
            const startIndex = (pageNumber - 1) * postsPerPage;
            let endIndex = startIndex + postsPerPage - 1;

            if (pageNumber == numPages) {
                endIndex = communityArr.length - 1;
            }

            tbody.innerHTML = ''; // 기존의 게시물 삭제
            // 해당 페이지의 게시물을 표시
            let community = reversedcommunityArr;//JSON.parse(localStorage.getItem("community"));
            const comment = JSON.parse(localStorage.getItem("communityComment"))
            let maxLength = 42;

            const commCount = JSON.parse(localStorage.getItem("commentCount"))

            for (let i = startIndex; i <= endIndex; i++) {
                // 멤버 아이디 가져오기
                let memId;
                for (let j = 0; j < memObject.length; j++) {
                    if (memObject[j].num == community[i].member_num) {
                        memId = memObject[j].id;
                        break;
                    }
                }

                let count;
                for (let k = 0; k < commCount.length; k++) {
                    if (commCount[k].boardNum == community[i].num) {
                        count = commCount[k].count;
                        break;
                    }
                }

                if(community[i].title.length > maxLength){
                    community[i].title = community[i].title.substr(0, maxLength) + "...";
                }

                if(count>0){
                    if (!community[i].delete) {
                        tbody.innerHTML += `<tr>
                                    <td id='num'>${community[i].num}</td>
                                    <td><a href="community-board-watch.html?num=${community[i].num}" class="boardWatching">${community[i].title} <span class="commShow">[${count}]</span></a></td>
                                    <td>${memId}</td>
                                    <td>${community[i].hits}</td>
                                    <td>${community[i].createdate.substr(2,8)}</td>
                                </tr>`;
                    } else {
                        tbody.innerHTML += `<tr>
                                    <td style="text-decoration: line-through; color:red;" id='num'>${community[i].num}</td>
                                    <td style="text-decoration: line-through; color:red;"><a href="community-board-watch.html?num=${community[i].num}" class="boardWatching">${community[i].title} <span class="commShow">[${count}]</span></a></td>
                                    <td style="text-decoration: line-through; color:red;">${memId}</td>
                                    <td style="text-decoration: line-through; color:red;">${community[i].hits}</td>
                                    <td style="text-decoration: line-through; color:red;">${community[i].createdate.substr(2,8)}</td>
                                </tr>`;
                    }
                }else{
                    if (!community[i].delete) {
                        tbody.innerHTML += `<tr>
                                    <td id='num'>${community[i].num}</td>
                                    <td><a href="community-board-watch.html?num=${community[i].num}" class="boardWatching">${community[i].title}</a></td>
                                    <td>${memId}</td>
                                    <td>${community[i].hits}</td>
                                    <td>${community[i].createdate.substr(2,8)}</td>
                                </tr>`;
                    } else {
                        tbody.innerHTML += `<tr>
                                    <td style="text-decoration: line-through; color:red;" id='num'>${community[i].num}</td>
                                    <td style="text-decoration: line-through; color:red;"><a href="community-board-watch.html?num=${community[i].num}" class="boardWatching">${community[i].title}</a></td>
                                    <td style="text-decoration: line-through; color:red;">${memId}</td>
                                    <td style="text-decoration: line-through; color:red;">${community[i].hits}</td>
                                    <td style="text-decoration: line-through; color:red;">${community[i].createdate.substr(2,8)}</td>
                                </tr>`;
                    }
                }
            };

        }
        // 페이지 버튼 생성
        function createPaginationButtons() {
            const paginationContainer = document.getElementById('pagingSpan');
            paginationContainer.innerHTML = '';

            numPages = Math.ceil(communityArr.length / postsPerPage);
            pageGroup = Math.ceil(currentPage / pageCount);
            first = Math.max((pageGroup - 1) * pageCount + 1, 1);
            last = Math.min(first + pageCount - 1, numPages);
            if (pageGroup == 1) {
                first = 1;
            }

            for (let i = first; i <= last; i++) {
                const a = document.createElement('a');
                a.textContent = i;
                a.addEventListener('click', function () {
                    currentPage = i;
                    updatePage(currentPage);
                    createPaginationButtons();
                    //목록, 뒤로가기를 위한 스토리지 저장
                    localStorage.setItem("prevPage", currentPage);
                    let aSelected = document.querySelectorAll(".boardWatching");
                    registerClickEvents(aSelected);

                });
                if (i === currentPage) {
                    a.style.fontWeight = 'bold';
                }
                paginationContainer.appendChild(a);
            }
        }

        

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
            style="background-color: #ffffff; width: 100%; height: 800px; color: #000000;  border-radius: 10px; ">
            <div>
                <h2 style="padding: 40px; text-align: center;">God Daum <br><span style="font-size: 18px;">커뮤니티</span></h2>
            </div>
            <table>
                <thead id="boardTop">
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>조회수</th>
                        <th>작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- 필요한 만큼 행 추가 -->
                    <!-- <tr>
                        <td>10</td>
                        <td><a href="#">두 번째 글 제목</a></td>
                        <td>작성자2</td>
                        <td>50</td> 
                        <td>2024-03-16</td>
                    </tr>
                    </tr> -->
                </tbody>
            </table>
            <div style="text-align: right; margin-right: 40px;">
                <input type="button" id="writeBoard" value="글쓰기" class="btn btn-outline-dark">
            </div>
            <div style="text-align: center;" id="pagingDiv">
                <button class="btn btn-outline-dark" id="prevBtn">&lt;</button>
                <span id="pagingSpan"></span>
                <button class="btn btn-outline-dark" id="nextBtn">&gt;</button>
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



    <script>
    
	    writeBtn = document.querySelector("#writeBoard");
	    writeBtn.addEventListener("click", function () {
	        // 글쓰기 페이지 열기
	        window.location.href = '/community/insert';
	    });
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



</body>


</body>

</html>