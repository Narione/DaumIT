<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-취업 현황" name="title"/>
</jsp:include>

</head>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section class="heading-page header-text" id="top" style="background-image: url(/resource/assets/images/hd3.png);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- <h6>Get all details</h6> -->
                        <h6>내일을 향해 나아가는 Daum IT</h6>
                        <h2>취업 현황</h2>
                    </div>
                </div>
            </div>
        </section>

        <section class="meetings-page" id="meetings">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="filters">
                                    <ul>
                                        <li id="introAca">학원 소개</li>
                                        <li id="introTchr">교직원 소개</li>
                                        <li id="introEmp" class="active">취업 현황</li>
                                    </ul>
                                </div>

                                <div class="meeting-single-item">
                                    <div class="down-content" style="border-radius: 20px">
                                        <h4>취업 현황</h4>
                                        <p>최근 5년 이내 취업률 현황 통계</p>
                                        <canvas id="myChart" width="600" height="120"></canvas>
                                        <div class="row" style="margin-top: 28px">
                                            <div class="col-lg-4">
                                                <div class="hours" id="first" style="text-align: center">
                                                    <h5></h5>
                                                </div>
                                            </div>
                                            <div class="col-lg-4" style="text-align: center">
                                                <div class="location" id="second">
                                                    <h5>취업 성공을 축하드립니다.</h5>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="book now" id="third" style="text-align: center">
                                                    <h5></h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
        
        <!-- active.js -->
	<script>
	window.onload = function() {
        var introduceA = document.getElementById("introduceA");
        introduceA.classList.add("active");
    };
	</script>

        <!-- chart.js -->
        <script>
            let myCt = document.getElementById('myChart');
            let myChart = new Chart(myCt, {
                type: 'bar',
                data: {
                    labels: ['2020년 (72.5%)', '2021년 (78.2%)', '2022년 (72.8%)', '2023년 (79.2%)'],
                    datasets: [
                        {
                            label: '전체 교육과정 원생',
                            data: [135, 124, 118, 140],
                            backgroundColor: '#00C7E2',
                            maxBarThickness: 90,
                        },
                        {
                            label: '취업 성공',
                            data: [98, 97, 86, 111],
                            backgroundColor: '#FF7DA8',
                            maxBarThickness: 90,
                        },
                    ],
                },
            });
        </script>

        <script>
            addEventListener('DOMContentLoaded', function () {
                const member = JSON.parse(localStorage.getItem('member'));
                const filtered = member.filter(function (stu) {
                    return !(stu.worker_code == false);
                });
                display(filtered);
            });

            // 흩뿌리기
            const firstDiv = document.querySelector('#first');
            const secondDiv = document.querySelector('#second');
            const thirdDiv = document.querySelector('#third');
            function display(json) {
                for (let i = 0; i < 5; i++) {
                    const maskedName = maskName(json[i].name);
                    firstDiv.innerHTML += `<p>${maskedName}, &nbsp; ${json[i].worker_code}</p>`;
                }
                for (let i = 5; i < 10; i++) {
                    const maskedName = maskName(json[i].name);
                    secondDiv.innerHTML += `<p>${maskedName}, &nbsp; ${json[i].worker_code}</p>`;
                }
                for (let i = 10; i < 15; i++) {
                    const maskedName = maskName(json[i].name);
                    thirdDiv.innerHTML += `<p>${maskedName}, &nbsp; ${json[i].worker_code}</p>`;
                }
            }

            // 필터링
            function maskName(name) {
                const [surname, givenName] = name.split('');
                return `${surname}**`;
            }
        </script>

        <!-- Scripts -->
        <!-- Bootstrap core JavaScript -->
        <script src="/resource/vendor/jquery/jquery.min.js"></script>
        

        <script src="/resource/assets/js/isotope.min.js"></script>
        <script src="/resource/assets/js/owl-carousel.js"></script>
        <script src="/resource/assets/js/lightbox.js"></script>
        <script src="/resource/assets/js/tabs.js"></script>
        <script src="/resource/assets/js/video.js"></script>
        <script src="/resource/assets/js/slick-slider.js"></script>
        <script src="/resource/assets/js/custom.js"></script>
        <script>
            //according to loftblog tut
            $('.nav li:first').addClass('active');

            var showSection = function showSection(section, isAnimate) {
                var direction = section.replace(/#/, ''),
                    reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                    reqSectionPos = reqSection.offset().top - 0;

                if (isAnimate) {
                    $('body, html').animate(
                        {
                            scrollTop: reqSectionPos,
                        },
                        800
                    );
                } else {
                    $('body, html').scrollTop(reqSectionPos);
                }
            };

            var checkSection = function checkSection() {
                $('.section').each(function () {
                    var $this = $(this),
                        topEdge = $this.offset().top - 80,
                        bottomEdge = topEdge + $this.height(),
                        wScroll = $(window).scrollTop();
                    if (topEdge < wScroll && bottomEdge > wScroll) {
                        var currentId = $this.data('section'),
                            reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                        reqLink.closest('li').addClass('active').siblings().removeClass('active');
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

            // 메뉴바 이동(li태그에 id 주기)
            const introAca = document.querySelector("#introAca");
            const introTchr = document.querySelector("#introTchr");
            const introEmp = document.querySelector("#introEmp");

            introAca.addEventListener("click", function () {
              window.location.href = "/introduce";
            });
            introTchr.addEventListener("click", function () {
              window.location.href = "/teacher";
            });
            introEmp.addEventListener("click", function () {
              window.location.href = "$/employment";
            });
        </script>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
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
                }
            });
        </script>
    </body>
</html>
