<%@page import="java.util.List"%>
<%@page import="attendence.AttNumVO"%>
<%@page import="java.io.Console"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.Calendar,java.util.Date,java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/common/head.jsp">
	<jsp:param value="Daum IT-출석부" name="title"/>
</jsp:include>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap')
	;

#cal {
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 10vh;
}

#leftbtn, #rightbtn {
	border: none;
	outline: none;
	background-color: transparent;
	padding: 0;
	cursor: pointer;
}

.wrapper {
	background: #fff;
	padding: 25px;
}

.wrapper .nav {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 30px;
}

.wrapper .nav .current-date {
	font-size: 24px;
	font-weight: 600;
}

.wrapper .nav button {
	width: 38px;
	height: 38px;
	font-size: 30px;
	color: #878787;
}

.calendar ul {
	display: flex;
	list-style: none;
	flex-wrap: wrap;
	text-align: center;
}

.calendar .weeks li {
	font-weight: 500;
}

.calendar ul li {
	width: calc(100%/ 7);
	position: relative;
}

.calendar .days li {
	z-index: 1;
	margin-top: 20px;
}

.days li.inactive {
	color: #aaa;
}

.days li.active {
	color: #1e07ec;
}

.calendar .days li::before {
	position: absolute;
	content: '';
	height: 40px;
	width: 40px;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 50%;
	z-index: -1;
}

/* .days div.active::before {
        background: #008aff;
    } */
.days li {
	position: relative;
	z-index: 1;
	margin-top: 30px;
}

.days li button {
	width: 100%;
	height: 100%;
	background: transparent;
	border: none;
}

    } */
.days li .attendance-info {
	position: absolute;
	bottom: -20px;
	left: 0;
	width: 100%;
	display: flex;
	justify-content: space-between;
	font-size: 12px;
	color: #aaa;
}

.days li .attendance-info div {
	flex: 1;
	text-align: center;
	padding: 2px;
}

.days li.active .attendance-info {
	color: #fff;
}
.weekend {
            color: red;
        }
</style>

</head>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<%
							LocalDate requestDate = (LocalDate) request.getAttribute("requestDate");/* .toString(), DateTimeFormatter.ofPattern("yyyy-MM-dd")); */
							int currYear = requestDate.getYear();
							int currMonth = requestDate.getMonthValue();
							
							String[] months = {"1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"};
							String currentDate = currYear + "년 " + months[currMonth-1];
	
							
						%>

	<section class="heading-page header-text" id="top"
		style="background-image: url(/resource/assets/images/hd2.png);">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h6>내일을 향해 나아가는 Daum IT</h6>
					<h2>출결조회</h2>
				</div>
			</div>
		</div>
	</section>

	<section class="meetings-page" id="meetings">
	
	<form action="/att" method="get">
		<div class="container"
			style="background-color: #ffffff; width: 100%; height: 1200px; color: #000000; border-radius: 10px; text-align: center;">
			<div class="wrapper">
				<div class="nav">
				
					<button id="leftbtn" class="material-icons">&lt;</button>
					<p class="current-date">
	                <%= currentDate %>
	            </p>
					<button id="rightbtn" class="material-icons">&gt;</button>
				</div>
				<div class="calendar">
					<ul class="weeks">
						<li>일</li>
						<li>월</li>
						<li>화</li>
						<li>수</li>
						<li>목</li>
						<li>금</li>
						<li>토</li>
					</ul>
					<ul class="days">
						
							
						<%
							int lastDateofMonth = java.time.YearMonth.of(currYear, currMonth).lengthOfMonth();
							int firstDayofMonth = java.time.LocalDate.of(currYear, currMonth, 1).getDayOfWeek().getValue() % 7;
							int lastDayofMonth = java.time.LocalDate.of(currYear, currMonth, lastDateofMonth).getDayOfWeek().getValue() % 7;
							int lastDateofLastMonth = java.time.YearMonth.of(currYear, currMonth-1).lengthOfMonth();
							
							String curruntMonths ="";
							if (currMonth<10){
								curruntMonths ="0"+(currMonth+"");
							}else{
								curruntMonths =currMonth+"";
							}
							%>
							<input type="hidden" name="startDate" value="<%=(currYear+"")+curruntMonths +"01"%>">
							<input type="hidden" name="lastDate" value="<%=(currYear+"")+curruntMonths +(lastDateofMonth+"")%>">
							<%
							for (int i = lastDateofLastMonth - firstDayofMonth + 1; i <= lastDateofLastMonth; i++) {
								%>
								<li class="inactive"><%=i%></li>
								<%
							}
			%>
					<c:forEach items="${AN}" var="an" varStatus="status">
						<li class="inactive">
							<c:choose>
								<c:when test="${an.totalNum > 0 }">
									<button class="" style="height:25px" data-value="${an.days }>">${status.count}</button>
									<div style="text-align: center;"><button class="updatebtn" style="border: solid 1px black;">총원: ${an.totalNum }명</button></div>
									<div style="text-align: center;">출석: ${an.attNum }명</div>
									<div style="text-align: center; color: red;">결석: ${an.absNum }명</div>
								</c:when>
								<c:otherwise>
									<button class="" style="height:25px" data-value="${an.days }">${status.count}</button>
									<div style="text-align: center;">&nbsp;</div>
									<div style="text-align: center;">&nbsp;</div>
									<div style="text-align: center; color: red;">&nbsp;</div>
								</c:otherwise>
							</c:choose>
						</li>
					</c:forEach>
			
			
			
			<%
							for (int i = 1; i <= 6 - lastDayofMonth; i++) {
						%>
								<li class="inactive"><%=i%></li>
						<%
							}
						%>
								
						

					</ul>
				</div>
			</div>

			<div style="text-align: right; padding-right: 70px;">
				<button id="stuListWeb"
					style="background-color: #4118ab; border: none; color: white; padding: 10px 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 24px; margin: 4px 2px; cursor: pointer; border-radius: 5px; transition-duration: 0.4s;">회원
					관리</button>
				<button id="jobAdd"
					style="background-color: #4118ab; border: none; color: white; padding: 10px 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 24px; margin: 4px 2px; cursor: pointer; border-radius: 5px; transition-duration: 0.4s;">취업
					관리</button>
			</div>
		</div>
	</form>
		<div class="footer">
			<p>
				Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. <br>
				Design: <a href="https://templatemo.com" target="_parent"
					title="free css templates">TemplateMo</a> <br> Distibuted By:
				<a href="https://themewagon.com" target="_blank"
					title="Build Better UI, Faster">ThemeWagon</a>
			</p>
		</div>
		
	</section>
	
	
		<!-- active.js -->
	<script>
	window.onload = function() {
        var calA = document.getElementById("calA");
        calA.classList.add("active");
    };
	</script>


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
    $(document).ready(function() {
        // 날짜 버튼에 대한 클릭 이벤트 추가
        $('.days li button').click(function(e) {
        	e.preventDefault();
            // 해당 버튼의 data-value 속성 값 가져오기
            var dateValue = $(this).data('value');
            // URL 생성하여 해당 날짜로 이동
            // window.location.href = "/att/attend?dataKey=" + dateValue;
            var newWindow = window.open("/att/attend?dataKey=" + dateValue, "", "width=1200,height=1000");
       		 // 새 창이 차단되었는지 확인
	        if (!newWindow || newWindow.closed || typeof newWindow.closed == 'undefined') {
	            // 차단되었을 경우 메시지 표시
	            alert("팝업 차단기능이 활성화되어 있습니다. 팝업 창을 허용해주세요.");
	        }
        });
    });
	</script>
    
   

</body>



</html>