<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-교직원 소개" name="title"/>
</jsp:include>

</head>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
  <section class="heading-page header-text" id="top" style="background-image: url(/resource/assets/images/hd3.png);">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <!-- <h6>Get all details</h6> -->
          <h6>내일을 향해 나아가는 Daum IT</h6>
          <h2>교직원 소개</h2>
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
                  <li id="introTchr" class="active">교직원 소개</li>
                  <li id="introEmp">취업 현황</li>
                </ul>
              </div>

              <div class="col-lg-12" style="text-align: left;">
                <div class="row grid">
                    <div class="col-lg-4 templatemo-item-col all" style="width: 33%;">
                      <div class="meeting-item">
                        <div class="thumb">
                          <div class="price">
                            <span>HTML/CSS</span>
                          </div>
                          <img src="/resource/assets/images/t3.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                          <div class="date">
                            <i class="fa-brands fa-css3-alt" style="color: rgb(255, 79, 56);"></i>
                          </div>
                          <h4>김영일 강사</h4>
                          <p>HTML과 CSS를 사용한 웹디자인</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 templatemo-item-col all" style="width: 33%;">
                      <div class="meeting-item">
                        <div class="thumb">
                          <div class="price">
                            <span>Python</span>
                          </div>
                          <img src="/resource/assets/images/t1.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                          <div class="date">
                            <i class="fa-brands fa-python" style="color: rgb(54, 54, 54);"></i>
                          </div>
                          <h4>박이삼 강사</h4>
                          <p>Python을 활용한 알고리즘구조 이해 및 개발</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 templatemo-item-col all" style="width: 33%;">
                      <div class="meeting-item">
                        <div class="thumb">
                          <div class="price">
                            <span>JavaScript</span>
                          </div>
                          <img src="/resource/assets/images/t5.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                          <div class="date">
                            <i class="fa-brands fa-js" style="color: rgb(255, 209, 56);"></i>
                          </div>
                          <h4>사오유 강사</h4>
                          <p>JQuery/JavaScript를 활용한 웹개발</p>
                        </div>
                      </div>
                    </div>
                    </div>
                <div class="row grid">
                    <div class="col-lg-4 templatemo-item-col all" style="width: 33%;">
                      <div class="meeting-item">
                        <div class="thumb">
                          <div class="price">
                            <span>React</span>
                          </div>
                          <img src="/resource/assets/images/t6.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                          <div class="date">
                            <i class="fa-brands fa-react" style="color: rgb(56, 215, 255);"></i>
                          </div>
                          <h4>진한구 강사</h4>
                          <p>React를 활용한 동적 웹페이지 개발</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 templatemo-item-col all" style="width: 33%;">
                      <div class="meeting-item">
                        <div class="thumb">
                          <div class="price">
                            <span>Linux</span>
                          </div>
                          <img src="/resource/assets/images/t2.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                          <div class="date">
                            <i class="fa-brands fa-linux" style="color: rgb(75, 75, 75);"></i>
                          </div>
                          <h4>신심일 강사</h4>
                          <p>Linux를 활용한 서버 개발 및 유지보수</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 templatemo-item-col all" style="width: 33%;">
                      <div class="meeting-item">
                        <div class="thumb">
                          <div class="price">
                            <span>Kotlin/C++</span>
                          </div>
                          <img src="/resource/assets/images/t4.jpg" alt=""></a>
                        </div>
                        <div class="down-content">
                          <div class="date">
                            <i class="fa-brands fa-android" style="color: rgb(64, 204, 83);"></i>
                          </div>
                          <h4>심이의 강사</h4>
                          <p>JAVA/Kotlin/C++을 활용한 안드로이드 앱 개발</p>
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
        <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.
          <br>
          Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a>
          <br>
          Distibuted By: <a href="https://themewagon.com" target="_blank" title="Build Better UI, Faster">ThemeWagon</a>
        </p>
      </div>
  </section>


  <!-- Scripts -->
  
    <!-- active.js -->
	<script>
	window.onload = function() {
        var introduceA = document.getElementById("introduceA");
        introduceA.classList.add("active");
    };
	</script>
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
      window.location.href = "/employment";
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

</html>