<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<nav class="navbar navbar-dark bg-dark">
	<div class="ms-2">
		<a href="${pageContext.request.contextPath}" class="navbar-brand">
			<img width="40" src="${pageContext.request.contextPath}/resources/image/logo-spring.png"/>
			<span class="align-middle">전자정부프레임워크(Spring Framework)</span>
		</a>
	</div>
	
	<div class="me-2">
		<c:if test="${login == null}">
			<%-- <a class="btn btn-success btn-sm" href="${pageContext.request.contextPath}/ch08/login">로그인</a> --%>
			<a class="btn btn-success btn-sm" href="${pageContext.request.contextPath}/ch13/loginForm">로그인</a>
		</c:if>
		<c:if test="${login != null}">
			<img width="40" src="${pageContext.request.contextPath}/resources/image/login.png"/>
			<span class="text-white me-2">${login.mid}</span>
			<%-- <a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath}/ch08/logout">로그아웃</a> --%>
			<a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath}/ch13/logout">로그아웃</a>
		
		</c:if>
	</div>
</nav>	
			
			
