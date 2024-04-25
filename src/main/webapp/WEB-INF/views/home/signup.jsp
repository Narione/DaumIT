<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-회원가입" name="title"/>
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
                      <div style="background-color: #ffffff; height: 1000px; color: #000000; text-align: center; margin-top: 240px; border-radius: 10px; display: flex; justify-content: center; align-items: center;">
                        <div style="width: 400px;">
                          <h6></h6>
                          <h1 style="padding: 10px;">Sign Up</h1>
                          <form action="/signup" name="signupFrm" id="signupF" method="post">
                            <fieldset style="border: none; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); background-color: #ffffff; padding: 10px;">
                              <div style="margin: 10px;">
                                <label for="username" style="display: block; text-align: left;">아이디
                                  <input type="text" id="username" name="id" placeholder="User_ID" style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                                </label>
                                <span id="idW" style="color: red;"></span>
                                <div style="text-align: right">
                                  <p><button id="chbutton" type="button" style="background-color: #ffffff; color: #000000; border: 2px solid #000000; cursor: pointer; transition: all 0.3s ease; border-radius: 5px;" >중복체크버튼</button></p>
                                </div>
                              </div>
                              <div style="margin: 10px;">
                                <label for="password" style="display: block; text-align: left;">비밀번호
                                  <input type="password" id="password" name="password" placeholder="Password" style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                                </label>
                                <span id="pwW" style="color: red;"></span>
                              </div>
                              <div style="margin: 10px;">
                                <label for="confirm_password" style="display: block; text-align: left;">비밀번호 확인
                                  <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm Password" style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                                </label>
                                <span id="cpwW" style="color: red;"></span>
                              </div>
                              <div style="margin: 10px;">
                                <label for="name" style="display: block; text-align: left;">이름
                                <input type="text" id="name" name="name" placeholder="Name" style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                                </label>
                                <span id="nW" style="color: red;"></span>
                              </div>
                              <div style="margin: 10px;">
                                <label for="birth" style="display: block; text-align: left;">생년월일
                                <input type="text" id="birth" name="birth" placeholder="YYYYMMDD" style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                                </label>
                                <span id="bW" style="color: red;"></span>
                              </div>

                              <div style="margin: 10px;">
                                <label for="gender" style="display: block; text-align: left;">성별
                                  <select id="gender" name="gender" style="width: 100%; padding: 8px; margin-top: 5px; margin-bottom: 10px; border: 1px solid #cccccc; border-radius: 5px; box-sizing: border-box;">
                                    <option value="남성">남성</option>
                                    <option value="여성">여성</option>
                                    <option value="그 외 성별">그 외 성별</option>
                                  </select>
                                </label>
                              </div>
                          
                              <button type="button" id="signup" style="background-color: #ffffff; color: #000000; border: 2px solid #000000; font-size: 18px; font-weight: bold; padding: 10px 20px; cursor: pointer; transition: all 0.3s ease; border-radius: 5px; width: 100%; margin-top: 10px;" ">sign Up</button>
                            </fieldset>
                          </form>
                          <div class="Forgot" style="text-align: center; margin-top: 20px;">
                            <a href="#" style="text-decoration: none; color: #333333;">Already have an account? Log in here</a>
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
</body>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script> 
    <script>
    	$(document).ready(function(){
    		/* $("#username").on("keyup", function(){
    			if ($("#username").val().length <4 ){
    				console.log("길이부족")
    			}
    		}); */
    		
    		$("#chbutton").on("click" , function(e){
    			e.preventDefault();
    			$.ajax({
    				url :"/checkId",   
    				data : {"id" : $("#username").val()},
    				success : function(data){
    					if(data){
    						alert("중복된 아이디가 있습니다. 다시 입력해주세요.");
    					}else{
    						alert("사용가능 합니다.")
    					}
    					
    					
    				}
    				
    			}); 
    		});
    	});	
    	
    </script>
    
    <!-- 유효성 검사 -->
    <script>
    const signupBtn = document.querySelector("#signup");
    
    signupBtn.addEventListener('click', function(e) {
        // 회원 정보 입력 받기
        const id = document.querySelector('#username').value;
        const pw = document.querySelector('#password').value;
        const checkPw = document.querySelector('#confirm_password').value;
        const name = document.querySelector('#name').value;
        const birth = document.querySelector('#birth').value;
        const gender = document.querySelector('#gender').value;
        

        // 회원 정보 유효성 검사
        if (id.length < 5) {
          document.getElementById('idW').innerText = '5자 이상의 영문 아이디를 입력하세요.';
        }else{
        	document.getElementById('idW').innerText = '';
        }
        if (pw.length < 5) {
        	document.getElementById('pwW').innerText = '5~16자의 대/소문자, 숫자를 사용해주세요.';
        }else{
        	document.getElementById('pwW').innerText = '';
        }
        if (pw !== checkPw) {
          document.getElementById('cpwW').innerText = '비밀번호를 올바르게 입력했는지 확인하세요.';
        }else{
        	document.getElementById('cpwW').innerText = '';
        }
        if (name.length < 2) {
          document.getElementById('nW').innerText = '올바른 이름을 입력해주세요.';
        }else{
        	document.getElementById('nW').innerText = '';
        }
        if (birth.length < 8) {
          document.getElementById('bW').innerText = '올바른 생년월일을 입력해주세요.';
        }else{
        	document.getElementById('bW').innerText = '';
        }
    	
        if(id.length >=5 && pw.length >= 5 && pw == checkPw && name.length >=2 && birth.length>=8){
	    	document.getElementById('signupF').submit();
        }
    });
    
    
    </script>

     <!-- 기능 -->
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
  <!--   <script>
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
      const memberL = JSON.parse(localStorage.getItem("member"))
      let memCount = memberL.length;
      function checkUsername() {
        const username = document.getElementById('username').value;
        const members = JSON.parse(localStorage.getItem('member')) || [];

        // 회원 아이디 중복 체크
        const isDuplicate = members.some(member => member.id === username);

        if (isDuplicate) {
          document.getElementById('idW').innerText = '이미 사용 중인 아이디입니다.';
        } else {
          document.getElementById('idW').innerText = '';
        }
      }

      function saveToLocal(user) {
        let members = JSON.parse(localStorage.getItem('member')) || [];
        members.push(user);
        localStorage.setItem('member', JSON.stringify(members));
        console.log(memCount)
      }

      const signup = document.querySelector('#signup');
      signup.addEventListener('click', function(e) {
        memCount++;
        
        e.preventDefault();

        // 회원 정보 입력 받기
        const id = document.querySelector('#id').value;
        const pw = document.querySelector('#password').value;
        const checkPw = document.querySelector('#confirm_password').value;
        const name = document.querySelector('#name').value;
        const birth = document.querySelector('#birth').value;
        const gender = document.querySelector('#gender').value;

        // 회원 정보 유효성 검사
        if (id.length < 5) {
          document.getElementById('idW').innerText = '5자 이상의 영문 아이디를 입력하세요.';
          return;
        }
        if (pw.length < 5) {
          document.getElementById('pwW').innerText = '5~16자의 대/소문자, 숫자를 사용해주세요.';
          return;
        }
        if (pw !== checkPw) {
          document.getElementById('cpwW').innerText = '비밀번호를 올바르게 입력했는지 확인하세요.';
          return;
        }
        if (name.length < 2) {
          document.getElementById('nW').innerText = '올바른 이름을 입력해주세요.';
          return;
        }
        if (birth.length < 8) {
          document.getElementById('bW').innerText = '올바른 생년월일을 입력해주세요.';
          return;
        }

        // 회원 정보 저장
        const member = {
          num: memCount,
          id: id,
          password: pw,
          name: name,
          gender: gender,
          birth: birth,
          worker_code: false,
          power_code: false,
          createdate: "20240321",
          withdrawal: false
        };
        saveToLocal(member);

        // 회원가입 완료 후 로그인 페이지로 이동
        window.location.href = 'login.html';
      });
    </script> -->
    

</html>