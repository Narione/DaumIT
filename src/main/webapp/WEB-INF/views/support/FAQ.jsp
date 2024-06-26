<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-FAQ" name="title"/>
</jsp:include>
<link rel="stylesheet" href="/resource/assets/css/toggle.css">
</head>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

  <section class="heading-page header-text" id="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <h6>내일을 향해 나아가는 Daum IT</h6>
          <h2>자주묻는 질문</h2>
        </div>
      </div>
    </div>
  </section>

  <section class="meetings-page" id="meetings">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">

            <!-- 상단 바 -->
            <div class="col-lg-12">
              <div class="filters">
                <ul>
                  <li class="active faq1">FAQ</li>
                  <li class="chat">문의 및 상담</li>
                  <li class="map">오시는 길</li>
                </ul>
              </div>
            </div>

            <!-- 하위 요소들 -->
            <div class="faq-container" style="width: 80%;">
              <div class="faq">
                <h4 class="faq-title">내일배움카드 없이 과정을 신청할 수 있나요?</h4>
                <p class="faq-text">내일배움카드는 고용노동부가 주최하는 교육에 필요하므로, 내일배움카드가 필요 없는 교육도 일부 존재합니다.<br>국비지원교육, 국비 코딩부트캠프, K-디지털트레이닝 등이 고용노동부가 주최하는 교육에 속합니다.<br>
                  <br>저희 학원에서 시행되고 있는 모든 과정은 국비지원교육으로 수강하시려면 내일배움카드가 필요합니다.<br>가까운 고용노동센터, 혹은 HDR-NET에 방문하시면 더 자세한 정보를 찾으실 수 있습니다.
                </p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <div class="faq-container" style="width: 80%;">
              <div class="faq">
                <h4 class="faq-title">나이제한이나 수강 대상 등의 조건이 있나요?</h4>
                <p class="faq-text">국비 부트캠프는 대학 졸업예정자부터 34세 미만으로 모집하는경우가 많습니다.<br>국비 교육의 경우 취업연계가 많기 때문에 졸업 예정자 이상으로 모집하는게 일반적입니다.<br>그러나 교육기관마다 다르기 때문에, 반드시 신청 전 모집 요강을 확인하시는 것을 권장드립니다.</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <div class="faq-container" style="width: 80%;">
              <div class="faq">
                <h4 class="faq-title">수업이 어떤 방식으로 진행되나요?</h4>
                <p class="faq-text">모든 과정들은 오프라인 교육장에서 이루어집니다. 일부 온라인 강좌 또한 존재하지만,<br>수업 외의 학습시간에 보충자료로써 사용하기 때문에 온라인 강좌만으로 과정을 수료하기에는 어려움이 있습니다.<br>
                  온라인으로 진행하는 국비교육 또한 존재하나, 저희 학원에서는 진행하고 있지 않으니 참고하시어 신청해주시기 바랍니다.<br><br>과정의 대략적인 일정은 커리큘럼을 통해 열람하실 수 있습니다.</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <div class="faq-container" style="width: 80%;">
              <div class="faq">
                <h4 class="faq-title">중도에 포기하면 어떤 불이익이 생기나요?</h4>
                <p class="faq-text">국민내일배움카드를 사용해 수강하는 일반 국비지원 교육의  경우 포기 횟수에 따라 카드에서 잔액이 차감됩니다.<br>일반적으로 300만원 상당의 카드를 발급받게 되며, 여기서 신청한 교육을 중도 포기할 경우<br>발생되는 패널티는 아래와 같습니다.
                  <br><br>
                  1회 포기 시 20만원 차감<br>
                  2회 포기 시 50만원 차감<br>
                  3회 포기 시 100만원 차감
                  <br><br>
                  
                  더하여 중도 하차 시 관련된 또다른 국비교육을 연이어 신청하실 수 없습니다.
                  교육기간이 180일 이내인 과정의 경우는<br>시작 후 7일 이내로 패널티 없이 수강 철회가 가능하며, 180일 이상인 교육의 경우는 14일 이내로 수강 철회가 가능합니다.<br>
                  정확한 내용과 환불처리에 관련하여서는 고용노동부로 문의하시기 바랍니다.</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <div class="faq-container" style="width: 80%;">
              <div class="faq">
                <h4 class="faq-title">과정을 수료하면 취업이 보장되나요?</h4>
                <p class="faq-text">국비교육 취업연계 과정은 교육 후 교육생들이 취업할 수 있도록 지원해주는 과정으로, <span style="font-weight: bold;">취업이 보장되지는 않습니다.</span><br><br>
                  그러나 교육 과정 중 진행되는 일부 프로젝트나 과제물 등을 포트폴리오로 활용할 수는 있습니다.</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <div class="faq-container" style="width: 80%;">
              <div class="faq">
                <h4 class="faq-title">과정 수료 후 반드시 취업을 해야하나요?</h4>
                <p class="faq-text">국비교육은 취업을 지원하고 장려하는데에 의의를 두고 있으므로 <span style="font-weight: bold;">반드시 취업을 하실 필요성은 없습니다.</span><br><br>
                  취업 연계에 목적을 두지 않는 교육은 참여와 수료에 초점을 둡니다. 그러나 취업연계 목적이 없으므로, 취업을 지원하거나<br>별도의 프로그램을 진행하지 않습니다. 이런 교육의 경우 1~3개월 내외의 단기 교육으로 진행되는 경우가 많습니다.</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <div class="faq-container" style="width: 80%;">
              <div class="faq">
                <h4 class="faq-title">비전공자도 개발자가 될 수 있나요?</h4>
                <p class="faq-text">전공자와의 역량, 기초지식의 차이 등은 날 수는 있겠으나, 개발자로는 문제없이 업무를 수행할 수 있습니다. <br>
                  저희 학원에서 시행하는 국비교육은 기초 프로그래밍 언어부터 응용과정까지 포함하여 진행하고 있습니다.</p>
                <button class="faq-toggle">
                  <i class="fas fa-chevron-down"></i>
                  <i class="fas fa-times"></i>
                </button>
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
  
  	<!-- active.js -->
	<script>
	window.onload = function() {
        var faqA = document.getElementById("faqA");
        faqA.classList.add("active");
    };
	</script>

  <script>
    const toggleBtns= document.querySelectorAll('.faq-toggle');

    toggleBtns.forEach(toggleBtn => {
      toggleBtn.addEventListener('click', ()=>{
      toggleBtn.parentNode.classList.toggle('active')
      })
    });
  </script>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    

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
              scrollTop: reqSectionPos },
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
      const faqBt = document.querySelector(".faq1");
      const chatBt = document.querySelector(".chat");
      const mapBt = document.querySelector(".map");
      faqBt.addEventListener("click", function(){
        window.location.href= '/FAQ';
      });
      chatBt.addEventListener("click", function(){
        window.location.href= '/counsel';
      });
      mapBt.addEventListener("click", function(){
        window.location.href= '/location';
      });

    </script>
    <script>
      document.addEventListener("DOMContentLoaded", function() {
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
