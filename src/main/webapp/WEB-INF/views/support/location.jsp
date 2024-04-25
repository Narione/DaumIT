<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-오시는 길" name="title"/>
</jsp:include>

<style>
  .locationA{
    background-color: #fff;
    text-align: center;
  }

  .bus-list{
    background-color: #f3f3f3;
    padding: 15px 10px;
    border-radius: 10px;
    margin-top: 10px;
  }

  .blue{
    display: inline-block;
    background-color: #386DE8;
    color: #fff;
    font-weight: 500;
    width: 40px;
    border-radius: 4px;
    text-align: center;
    margin: 2px 2px;
    padding: auto auto;
    padding-top: 2px;
  }

  .subM{
    font-weight: bold;
    font-size: 16px;
    margin-right: 15px;
  }

  .subTi{
    display: inline-block;
    font-weight: bold;
    font-size: 30px;
    margin-left: 3px;
  }

</style>
</head>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

  <section class="heading-page header-text" id="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <h6>내일을 향해 나아가는 Daum IT</h6>
          <h2>오시는 길</h2>
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
                  <li class="faq">FAQ</li>
                  <li class="chat">문의 및 상담</li>
                  <li class="active map">오시는 길</li>
                </ul>
              </div>
            </div>

            <!-- 하위 요소들 -->
            <div class="container">
              <div>

                <!-- 요소 시작 -->
                <div class="col-lg-12 templatemo-item-col all faq">
                  <div class="meeting-item">
                    <div class="thumb">
                      <h4 style="text-align: center;">다음 아이티 오시는 길</h4>
                      <p class="locationA">대전광역시 중구 계룡로 825 (용두동, 희영빌딩 2층)<br>오룡역 8번출구 도보5분</p>
                      <p style="color: #fff; background-color: #fff;">000</p>
                      <div id="map" style="width:100%;height:400px;"></div>
                    </div>
                    <div class="down-content">
                      <!-- 버스 -->
                      <i class="fa-solid fa-bus" style="font-size: 28px; margin-left: 3px;"></i>
                      <h3 class="subTi">버스</h3>
                      <div class="bus-list">
                        <p style="margin-bottom: 7px; margin-left: 4px;"><span class="subM">정류장</span> 중구청-오룡역5번출구 방면</p>
                        <span class="blue">101</span>
                        <span class="blue">103</span>
                        <span class="blue">315</span>
                        <span class="blue">614</span>
                        <span class="blue">618</span>
                        <span class="blue">622</span>
                      </div>
                      <p class="locationB" style="margin: 5px 25px; font-size: 15px;">정류장 하차 후 <span style="font-weight: bold;">오룡역 방면</span>으로 도보 약 1분 거리</p>
                      <div class="bus-list">
                        <p style="margin-bottom: 7px; margin-left: 4px;"><span class="subM">정류장</span> 용문역-서대전네거리역4번출구 방면</p>
                        <span class="blue">103</span>
                        <span class="blue">614</span>
                        <span class="blue">618</span>
                      </div>
                      <p class="locationB" style="margin: 5px 25px; font-size: 15px; margin-bottom: 25px;">정류장 하차 후 <span style="font-weight: bold;">서대전네거리역 방면</span>으로 도보 약 5분 거리</p>
                      <!-- 지하철 -->
                      <i class="fa-solid fa-train-subway" style="font-size: 28px; margin-left: 3px;"></i>
                      <h3 class="subTi">지하철</h3>
                      <div class="bus-list">
                        <p style="margin-bottom: 3px; margin-left: 4px;"><span class="subM">대전 1호선</span>오룡역</p>
                      </div>
                      <p class="locationB" style="margin: 5px 25px; font-size: 15px;">오룡역 하차 후 <span style="font-weight: bold;">8번출구</span>에서 도보 약 5분 거리</p>
                    </div>
                  </div>
                </div>
                <!-- 요소 끝 -->


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

  <!-- kakaoMap -->
  <script>
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = {
      center: new kakao.maps.LatLng(36.326696135322784, 127.40789918659118),
      level: 3
    };
    var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    // 마커가 표시될 위치입니다 
    var markerPosition = new kakao.maps.LatLng(36.326696135322784, 127.40789918659118);

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
      position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);

    // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
    // marker.setMap(null);    

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
    const faqBt = document.querySelector(".faq");
    const chatBt = document.querySelector(".chat");
    const mapBt = document.querySelector(".map");
    faqBt.addEventListener("click", function () {
      window.location.href = '/FAQ';
    });
    chatBt.addEventListener("click", function () {
      window.location.href = '/counsel';
    });
    mapBt.addEventListener("click", function () {
      window.location.href = '/location';
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
              window.location.href = "index-m.html";
            })
          }
    });
  </script>
</body>


</body>

</html>