<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-문의 및 상담" name="title"/>
</jsp:include>

</head>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h6>내일을 향해 나아가는 Daum IT</h6>
					<h2>문의 및 상담</h2>
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
									<li class="active chat">문의 및 상담</li>
									<li class="map">오시는 길</li>
								</ul>
							</div>
						</div>

						<!-- 하위 요소들 -->
						<div class="col-lg-12">
							<div class="row grid">
								<!-- 요소 시작 -->
								<div class="col-lg-12 templatemo-item-col all faq">
									<div class="meeting-item">
										<div class="thumb" style="height: 35px; margin-bottom: 15px">
											<h4></h4>
										</div>
										<div class="down-content" style="padding-bottom: 90px">
											<h5
												style="text-align: center; font-size: 17px; margin-bottom: 35px">
												<span style="color: firebrick; font-weight: bold">빠른
													시일내</span>에 담당자가 연락드리도록 하겠습니다.
											</h5>
											<form style="text-align: center" id="counselF"
												name="counselfrm">
												<div
													style="width: 80%; border: 1px solid black; margin: 0 auto">
													<div style="margin: 10px">
														<dl
															style="text-align: left; display: block; margin-left: 10px;">
															<dt style="margin-bottom: 5px">교육과정</dt>
															<dd>
																<select name="c-counsel" id="selectC"
																	style="width: 70%; height: 40px; font-size: 14px;">
																	<option>원하시는 과정을 선택하세요.</option>
																	<option>[국비지원교육] 공공데이터를 활용한 웹 서비스 개발</option>
																	<option>[국비지원교육] 사물인터넷(IoT)를 활용한 백엔드 개발</option>
																	<option>[국비지원교육] 인공지능(AI)를 활용한 반응형(React) 개발</option>
																	<option>[국비지원교육] 자바(JAVA)기반 JSP/스프링 웹개발</option>
																	<option>[국비지원교육] 반응형/웹퍼블리셔/프론트엔드 웹 개발(웹디자인)</option>
																	<option>재직자/일반 - 디지털컨버전스 자바(JAVA)개발</option>
																	<option>재직자/일반 - 파이썬 프로그래밍을 활용한 빅데이터 향상과정</option>
																	<option>재직자/일반 - ERP정보관리사(회계2급) / (인사2급) 자격증
																		취득과정</option>
																</select>
															</dd>
														</dl>
													</div>
													<div class="row" style="margin: 10px">
														<dl style="text-align: left; display: block" class="col-2">
															<dt style="margin-bottom: 5px">이름</dt>
															<dd>
																<input type="text" name="c-name" id="name"
																	placeholder="성명"
																	style="padding: 0 10px; width: 100%; height: 40px; position: relative; left: 0; top: 0; border: 1px solid #ccc;" />
															</dd>
														</dl>
														<dl style="text-align: left; display: block" class="col-3">
															<dt style="margin-bottom: 5px">전화번호</dt>
															<dd>
																<input type="number" name="c-phone" id="phone"
																	placeholder="전화번호"
																	style="padding: 0 10px; width: 100%; height: 40px; position: relative; left: 0; top: 0; border: 1px solid #ccc;" />
															</dd>
														</dl>
														<dl style="text-align: left; display: block" class="col-6">
															<dt style="margin-bottom: 5px">이메일</dt>
															<dd>
																<input type="text" name="c-mail" id="mail"
																	placeholder="이메일"
																	style="padding: 0 5px; width: 100%; height: 40px; position: relative; left: 0; top: 0; border: 1px solid #ccc;" />
															</dd>
														</dl>
													</div>
													<div style="margin: 10px" class="row">
														<dl style="text-align: left; display: block" class="col-8">
															<dt style="margin-bottom: 5px">상담내용</dt>
															<dd>
																<textarea name="c-message" id="message" cols="50"
																	rows="10"
																	style="padding: 2px 10px; width: 100%; height: 100px; position: relative; left: 0; top: 0; border: 1px solid #ccc;"></textarea>
															</dd>
														</dl>
														<div class="col-2"
															style="padding-left: 5px; padding-right: 5px; width: 15%;">
															<input type="submit" id="submitBtn"
																style="position: relative; top: 33%; height: 70px; width: 100px;"
																class="btn btn-danger" value="상담 신청" />
														</div>
														<div id="kakao-talk-channel-chat-button"
															data-channel-public-id="_xfRtmG" data-title="consult"
															data-size="large" data-color="yellow" data-shape="pc"
															data-support-multiple-densities="true"
															style="width: 120px; height: 50px; position: relative; top: 55px;"
															class="col-2"></div>
													</div>
												</div>
											</form>
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
			<p>
				Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. <br />
				Design: <a href="https://templatemo.com" target="_parent"
					title="free css templates">TemplateMo</a> <br /> Distibuted By: <a
					href="https://themewagon.com" target="_blank"
					title="Build Better UI, Faster">ThemeWagon</a>
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

	<!-- kakaoTalk -->
	<script>
            window.kakaoAsyncInit = function () {
                Kakao.Channel.createChatButton({
                    container: '#kakao-talk-channel-chat-button',
                });
            };

            (function (d, s, id) {
                var js,
                    fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://t1.kakaocdn.net/kakao_js_sdk/2.7.0/kakao.channel.min.js';
                js.integrity = 'sha384-BSbysXza7dDuXIO1tS8Xj7Em8iygTWPkqxIJhWSA7ATH4plc58qTJmIJ19toGZ8g';
                js.crossOrigin = 'anonymous';
                fjs.parentNode.insertBefore(js, fjs);
            })(document, 'script', 'kakao-js-sdk');
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
        </script>
	<script>
            const faqBt = document.querySelector('.faq');
            const chatBt = document.querySelector('.chat');
            const mapBt = document.querySelector('.map');
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
            // 상담 제출하기
            const submitBtn = document.querySelector('#submitBtn');
            const form = document.querySelector('#counselF');
            submitBtn.addEventListener('click', function (e) {
                e.preventDefault();

                while (true) {
                    const select = document.querySelector('#selectC').value;

                    const name = document.querySelector('#name').value;
                    if (name == '' || name.length < 2) {
                        alert(`이름을 다시 한 번 확인해주세요.`);
                        document.querySelector('#name').focus();
                        break;
                    }

                    const phone = document.querySelector('#phone').value;
                    if (phone == '' || phone.length < 10) {
                        alert(`전화번호를 다시 한 번 확인해주세요.`);
                        document.querySelector('#phone').focus();
                        break;
                    }

                    const mail = document.querySelector('#mail').value;
                    if (mail == '' || !mail.includes(`@`)) {
                        alert(`이메일을 다시 한 번 확인해주세요.`);
                        document.querySelector('#mail').focus();
                        break;
                    }
                    const message = document.querySelector('#message').value;

                    const counsel = {
                        name: name,
                        phone: phone,
                        mail: mail,
                        select: select,
                        message: message,
                    };
                    saveToLocal(counsel);
                    form.submit();

                    alert(`정상적으로 접수되었습니다.`);
                    break;
                }
            });

            function saveToLocal(counsel) {
                let counsels = JSON.parse(localStorage.getItem('counsel')) || [];
                counsels.push(counsel);
                localStorage.setItem('counsel', JSON.stringify(counsels));
            }
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
