<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  
  <body>
  <!-- Sub Header -->
  <div class="sub-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-sm-8">
          <div class="left-content">
          </div>
        </div>
        <div class="col-lg-4 col-sm-4">
          <div class="right-icons">
            <ul>
              <c:choose>
				<c:when test="${not empty sessionScope.member}"><!-- member != null, member ne null -->
					<li id="userGreeting">
						<span id="loginName" style="color: white; font-size: 14px;">${sessionScope.member.name }님</span>
					</li>
					<li id="logoutLink"><a href="/logout">로그아웃</a></li>
					<li id="mypageLink"><a href="/mypage">마이페이지</a></li>
				</c:when>
				<c:otherwise>
					<li id="loginLink"><a href="/login">로그인</a></li>
              		<li id="signupLink"><a href="/signup">회원가입</a></li>
				</c:otherwise>	
			</c:choose>	
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="/index" class="logo" style="font-size: 46px;">
                        Daum IT
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="/index" id="homeA">Home</a></li>
                        <li class="has-sub">
                          <a href="/introduce" id="introduceA">학원소개</a>
                          <ul class="sub-menu">
                            <li><a href="/introduce">학원 소개</a></li>
                            <li><a href="/teacher">교직원 소개</a></li>
                            <li><a href="/employment">취업현황</a></li>
                          </ul>
                        </li>
                        <li><a href="/notice" id="noticeA">공지사항</a></li>
                        <li >
                            <a href="/community" id="communityA">커뮤니티</a>
                        </li>
                        <li  class="has-sub">
                          <a href="/FAQ" id="faqA">고객센터</a>
                          <ul class="sub-menu">
                            <li><a href="/FAQ">FAQ</a></li>
                            <li><a href="/counsel">문의 및 상담</a></li>
                            <li><a href="/location">오시는 길</a></li>
                          </ul>
                        </li> 
                        <li><a href="/att" id="calA">출결조회</a></li> 
                    </ul>        
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->


