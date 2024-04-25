<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-로그인" name="title"/>
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
                      <div style="background-color: #ffffff; height: 650px; color: #000000; text-align: center; margin-top: 200px; border-radius: 10px;">
                        <h6></h6>
                        <form action="/login" method="post">
                        <h1 style="padding-top: 80px; padding-bottom: 30px;">Log In</h1>
                        <div style="margin: 0 auto; width: 300px;">
                            <fieldset style="border: none; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); background-color: #ffffff; padding: 20px;">
                              <div >
                                <label for="username" style="display: block; text-align: left;">ID
                                  <input type="text" id="id" name="id" placeholder="User_ID" style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                                </label>
                              </div>
                              <div>
                                <label for="password" style="display: block; text-align: left;">PW
                                  <input type="password" id="password" name="password" placeholder="Password" style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                                </label>
                              </div>
                              <div id="check" style="margin: 30px; color: #ff0000;"></div>
                              <button id="loginBtn"type="submit" style="background-color: #ffffff; color: #000000; border: 2px solid #000000; font-size: 18px; font-weight: bold; padding: 10px 20px; cursor: pointer; transition: all 0.3s ease; border-radius: 5px; width: 100%; margin-top: 10px;">LOGIN</button>
                            </fieldset>
                          
                          <div class="Forgot" style="text-align: center; margin-top: 20px;">
                            <a href="forgot.html" id="forgot" style="text-decoration: none; color: #333333;">Forgot your password?</a>
                          </div>
                          <div class="Forgot" style="text-align: center; margin-top: 20px;">
                            <a href="signup.html" style="text-decoration: none; color: #333333;">Would you like to sign up?</a>
                          </div>
                        </div>
                        </form>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    <!-- Scripts 단 기능등 -->
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


<script>
  //로그인 정보 저장 후 로컬에 로그인정보저장

  const loginBtn = document.querySelector("#loginBtn");
  const pwInput = document.querySelector("#password");

/*   loginBtn.addEventListener('click', function () {
    const loginId = document.querySelector("#username").value;
    const loginPw = document.querySelector("#password").value;

    let isLoggedIn = false;

    for (let i = 0; i < memberList.length; i++) {
      if (memberList[i].id == loginId && memberList[i].password == loginPw) {
        if (!memberList[i].withdrawal) {

          isLoggedIn = true;

          const loginInfo = JSON.parse(sessionStorage.getItem("login"))
          if (loginInfo.power_code == true) {
            window.location.href = '/index'
          } else {
            window.location.href = 'index.html'
          }
          break;
        } else {
          isLoggedIn = true;
          // 생년월일 입력시 활성화
          if (confirm('비활성화 상태입니다. 활성화 상태로 전환하시겠습니까?')) {
            let birthInfo = memberList[i].birth;
            let userWithdrawal= memberList[i].withdrawal
            let userBirthInfo = prompt("생년월일을 입력해주세요.");
            if (userBirthInfo == birthInfo) {
              memberList[i].withdrawal = false;
              localStorage.setItem('member', JSON.stringify(memberList));
              location.reload(); 
              alert("활성화 되었습니다.");
            } else {
              location.reload(); 
              alert("생년월일을 입력하지 않았습니다. 원래 화면으로 돌아갑니다.");
            }
          } else {
            location.reload(); 
            alert("취소되었습니다. 원래 화면으로 돌아갑니다.");
          }
        }
      }
    }

    // 아이디 또는 비밀번호가 일치하지 않을 때 경고창 표시
    if (!isLoggedIn) {
      alert("아이디 또는 비밀번호가 다릅니다.");
      pwInput.value = "";
      pwInput.focus();
    }
  }); */

 /*  pwInput.addEventListener("keyup", function(event){
    if(!pwInput.value ==""){
      if(event.keyCode === 13){
        const loginId = document.querySelector("#username").value;
        const loginPw = document.querySelector("#password").value;

        // 로컬 스토리지에서 회원 정보 가져오기
        const memberList = JSON.parse(localStorage.getItem('member'));

        let isLoggedIn = false;

        for (let i = 0; i < memberList.length; i++) {
          if (memberList[i].id == loginId && memberList[i].password == loginPw) {
            if (!memberList[i].withdrawal) {

              sessionStorage.setItem("login", JSON.stringify(memberList[i]));
              isLoggedIn = true;

              const loginInfo = JSON.parse(sessionStorage.getItem("login"))
              if (loginInfo.power_code == true) {
                window.location.href = 'index-m.html'
              } else {
                window.location.href = 'index.html'
              }
              break;
            } else {
              isLoggedIn = true;
              // 생년월일 입력시 활성화
              if (confirm('비활성화 상태입니다. 활성화 상태로 전환하시겠습니까?')) {
                let birthInfo = memberList[i].birth;
                let userWithdrawal= memberList[i].withdrawal
                let userBirthInfo = prompt("생년월일을 입력해주세요.");
                if (userBirthInfo == birthInfo) {
                  memberList[i].withdrawal = false;
                  localStorage.setItem('member', JSON.stringify(memberList));
                  location.reload(); 
                  alert("활성화 되었습니다.");
                } else {
                  location.reload(); 
                  alert("생년월일을 입력하지 않았습니다. 원래 화면으로 돌아갑니다.");
                }
              } else {
                location.reload(); 
                alert("취소되었습니다. 원래 화면으로 돌아갑니다.");
              }
            }
          }
        }
        
        if (!isLoggedIn) {
          alert("아이디 또는 비밀번호가 다릅니다.");
          pwInput.value = "";
          pwInput.focus();
        }
      }
    }
  }) */

</script>

</body>

</body>

</html>