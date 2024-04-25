<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-학원 소개" name="title"/>
</jsp:include>

</head>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

  <section class="heading-page header-text" id="top" style="background-image: url(/resource/assets/images/hd3.png);">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <!-- <h6>Get all details</h6> -->
          <h6>내일을 향해 나아가는 Daum IT</h6>
          <h2>학원 소개</h2>
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
                  <li id="introAca" class="active">학원 소개</li>
                  <li id="introTchr">교직원 소개</li>
                  <li id="introEmp">취업 현황</li>
                </ul>
              </div>

              <div class="meeting-single-item"> <!--디테일 칸-->
                <div class="thumb">
                  <img src="/resource/assets/images/academypic.jpg" alt="">
                </div>
                <div class="down-content">
                    <h4 style="font-size: 30px;">다음 IT</h4>
                  <p style="font-weight: bold;">차세대 핵심 인재 양성소의 중심이 되는 교육의 터</p>
                  <p class="description">
                    <!-- This is an edu meeting HTML CSS template provided by <a href="https://templatemo.com/" target="_blank" rel="nofollow">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout. If you need more free website templates like this one, please visit our website TemplateMo. Please tell your friends about our website. Thank you. If you want to get the latest collection of HTML CSS templates for your websites, you may visit <a rel="nofollow" href="https://www.toocss.com/" target="_blank">Too CSS website</a>. If you need a working contact form script, please visit <a href="https://templatemo.com/contact" target="_parent">our contact page</a> for more info. -->
                    다음IT는 최첨단 시설과 <span style="font-weight: bold;">실무중심의 차별화된 교육프로그램을 중심</span>으로 
                    미래유망 직종인 빅데이터, 정보보안과 IT분야에 뛰어난 인재양성을 목표로 하는데 있습니다.<br> 
                    더불어 실무 현장에서 가장 필요로 하는 능력을 갖춘 인재를 양성, 체계적이고 세분화된 커리큘럼을 
                    바탕으로 전문성을 갖춘 IT인재를 양성합니다. 그리고 바로 이점이 다음IT를 선택해야 되는 이유입니다.<br><br>
                    다음IT는 웹디자인 및 웹퍼블리싱, 출판편집디자인, 건축, 인테리어디자인, 영상편집, 건축설계 등 디자인 과정과
                    정보보안, 앱개발, 게임개발, 프로그래밍 등 IT 과정을 교육하며<br>실제 기업에서 필요로 하는 유능한 인재 양성을 위한 교육 서비스를 제공하고 있습니다
                    빅데이터, 인공지능(A.I), 사물인터넷(iOT), 블록체인, 핀테크, 스마트팩토리, 클라우드, 3D 프린터 등<br>4차 산업 시대 핵심 분야의 교육 과정과 더불어,
                    미래를 앞서가는 디지털 핵심 실무인재 양성을 위해 고용노동부가 주관하는 K-Digital Training 과정을 운영하고 있습니다
                  </p>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="hours">
                        <h5>운영시간</h5>
                        <p>월 - 금 : 07:00 AM - 19:00 PM<br>토 - 일 : 09:00 AM - 15:00 PM</p>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="location">
                        <h5>오시는 길</h5>
                        <p>대전광역시 중구 계룡로 825,
                          <br>(용두동, 희영빌딩 2층)
                        </p>
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="book now">
                        <h5>연락처</h5>
                        <p>070 - 0000 - 0000 (FAX)<br>032 - 2343 - 2343</p>
                      </div>
                    </div>
                    <div class="col-lg-12">
                      <div class="share">
                        <h5>Share:</h5>
                        <ul>
                          <li><a href="#">Facebook</a>,</li>
                          <li><a href="#">Twitter</a>,</li>
                          <li><a href="#">Linkedin</a>,</li>
                          <li><a href="#">Behance</a></li>
                        </ul>
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


</body>

</html>