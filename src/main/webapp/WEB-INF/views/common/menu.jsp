<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<div class="accordion" id="accordionMenu">

  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#ch01" aria-expanded="false" aria-controls="ch01">
        Ch01. 개발 환경 구축
      </button>
    </h2>
    <div id="ch01" class="accordion-collapse collapse" data-bs-parent="#accordionMenu">
      <div class="accordion-body">
        <ul>
        	<li><a href="${pageContext.request.contextPath}/ch01/content">공통 레이아웃 작성</a></li>
        </ul>
      </div>
    </div>
  </div>
  
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#ch02" aria-expanded="false" aria-controls="ch02">
        Ch02. Controller(RequestMapping)
      </button>
    </h2>
    <div id="ch02" class="accordion-collapse collapse" data-bs-parent="#accordionMenu">
      <div class="accordion-body">
        <ul>
        	<li><a href="${pageContext.request.contextPath}/ch02/getMethod">GET 방식</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch02/postMethod">POST 방식</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch02/returnModelAndView">ModelAndView 리턴</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch02/returnVoid">void 리턴</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch02/returnObject">Object 리턴</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch02/mypage">MyPage(로그인 체크 여부 확인)</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch02/loginForm">로그인/로그아웃</a></li>
        </ul>
      </div>
    </div>
  </div>
  
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#ch03" aria-expanded="false" aria-controls="ch03">
        Ch03. Controller(매개변수)
      </button>
    </h2>
    <div id="ch03" class="accordion-collapse collapse" data-bs-parent="#accordionMenu">
      <div class="accordion-body">
        <ul>
        	<li><a href="${pageContext.request.contextPath}/ch03/receiveParamData?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-08-27">GET 방식 데이터 얻기</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch03/postMethodForm">POST 방식 폼 얻기</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch03/defaultValue?param1=문자열&param5=2024-08-27">파라미터 생략시 디폴트 값 설정</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch03/otherArgName?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-08-27">파라미터 이름과 매겨변수 이름이 다를경우</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch03/commandObject?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-08-27">DTO로 파라미터 값을 모두 받기</a></li>
        	<li><a href="${pageContext.request.contextPath}/ch03/ajaxParam">AJAX로 보낸 데이터를 DTO로 받기</a></li>
        </ul>
      </div>
    </div>
  </div>
  
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#ch04" aria-expanded="false" aria-controls="ch04">
        Ch04. Controller(폼 유효성 검사)
      </button>
    </h2>
    <div id="ch04" class="accordion-collapse collapse show" data-bs-parent="#accordionMenu">
      <div class="accordion-body">
        <ul>
        	<li><a href="${pageContext.request.contextPath}/ch04/loginForm">로그인 폼</a></li>
        </ul>
      </div>
    </div>
  </div>  
  
</div>
