<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-My Page" name="title"/>
</jsp:include>

</head>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

  <!-- ***** Main Banner Area Start ***** -->

  <section class="section main-banner" id="top" data-section="section1">
    <video autoplay muted loop id="bg-video">
      <!-- 배경이미지 설정단 -->
      <source src="/resource/assets/images/course-video.mp4" type="video/mp4" />
    </video>

    <div class="video-overlay header-text">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div
              style="background-color: #ffffff; height: 90%; color: #000000; text-align: center; margin-top: 240px; border-radius: 10px; display: flex; justify-content: center; align-items: center;">
              <div style="width: 400px;">
                <h6></h6>
                <h1 style="padding: 15px;">My Page</h1>
                <form action="#" name="signupFrm" id="signupF" action="/mypage" method="post">
                  <fieldset
                    style="border: none; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); background-color: #ffffff; padding: 10px;">
                    <div style="margin: 10px;">
                      <div style="display: block; text-align: left;">아이디
                        <div id="userid" style="width: 100%; padding: 5px; margin-bottom: 25px; text-align: center;"><p>${member.id }</p></div>
                      </div>
                    </div>
                    <div style="margin: 10px;">
                      <label for="password" style="display: block; text-align: left;">비밀번호 변경
                        <input type="password" id="modified_password" name="password" placeholder="변경할 비밀번호를 입력하세요."
                          style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                      </label>
                      <p id="pW" style="color: red;"></p>
                    </div>
                    <div style="margin: 10px;">
                      <label for="confirm_password" style="display: block; text-align: left;">비밀번호 확인
                        <input type="password" id="confirm_password" name="confirm_password"
                          placeholder="위 비밀번호를 다시 한번 입력하세요."
                          style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                      </label>
                      <p id="pwW" style="color: red;"></p>
                    </div>
                    <div style="margin: 10px;">
                      <div style="display: block; text-align: left;">이름
                        <div id="username" style="width: 100%; padding: 5px; margin-bottom: 25px; text-align: center;">
                      		<p>${member.name }</p>
                        </div>
                      </div>
                    </div>
                    <div style="margin: 10px;">
                      <div style="display: block; text-align: left;">생년월일
                        <div id="birth" style="width: 100%; padding: 5px; margin-bottom: 25px; text-align: center;"><p>${member.birth}</p></div>
                      </div>
                    </div>
                    <div style="margin: 10px;">
                      <div style="display: block; text-align: left;">성별
                        <div id="gender" style="width: 100%; padding: 5px; margin-bottom: 25px; text-align: center;"><p>${member.gender}</p></div>
                      </div>
                    </div>
                    <div style="margin: 10px;">
                      <div style="display: block; text-align: left;">취업
                        <div id="wor" style="width: 100%; padding: 5px; margin-bottom: 25px; text-align: center;"><p>${member.workerCode}</p></div>
                      </div>
                    </div>



                    <div id="check" style="margin: 30px; color: #ff0000;"></div>
                    <button id="saveBtn" type="submit"
                      style="background-color: #ffffff; color: #000000; border: 2px solid #000000; font-size: 18px; font-weight: bold; padding: 10px 20px; cursor: pointer; transition: all 0.3s ease; border-radius: 5px; width: 100%; margin-top: 10px;">
                      Save</button>
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer">
    </div>
  </section>



  <!-- Scripts 단 기능등 -->
  
  
  <script>
  //비밀번호 확인 일치 여부
	const passwordForm = document.querySelector("#signupF")
	const pwW = document.querySelector("#pwW");
  	const pW = document.querySelector("#pW")
	const password = document.querySelector("#modified_password");
	const confirmPassword = document.querySelector("#confirm_password");
	passwordForm.addEventListener("submit", function (e) {
		e.preventDefault();
		pW.textContent = '';
        pwW.textContent = '';
        if (password.value.length < 5) {
            pW.textContent = '5~16자의 대/소문자, 숫자를 사용해주세요.';
            return;
        }
        
        if (password.value !== confirmPassword.value) {
            pwW.textContent = "비밀번호가 일치하지 않습니다.";
            return;
        }
        this.submit();
		
	})
	
	const wor = document.querySelector("#wor");
	//미취업 입력
	if(wor.innerText==""){
		 wor.innerText = "미취업"
	}
  	
  
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
  </script>

</body>


</html>