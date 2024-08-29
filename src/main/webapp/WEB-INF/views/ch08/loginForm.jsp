<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- include 지시자의 역할: 외부의 파일의 내용을 가져와서 삽입시켜줌 --%>    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">로그인 양식</div>
	<div class="card-body">
		<c:if test="${login == null}">
			<form class="m-2" method="post" action="login">
				<div class="form-group mb-2">
				    <label for="mid">아이디</label>
				    <input type="text" class="form-control" id="mid" name="mid">
				</div>
				
				<div class="form-group mb-2">
				    <label for="mpassword">패스워드</label>
				    <input type="password" class="form-control" id="mpassword" name="mpassword">
				</div>
				
				<!-- 제출 버튼: 양식의 데이터를 서버로 보내겠다. -->
				<button type="submit" class="btn btn-info btn-sm">로그인</button> 
			</form>		
		</c:if>
		
		<c:if test="${login != null}">
			<a href="logout" class="btn btn-success btn-sm">로그아웃</a>
		</c:if>
		
	</div>
</div>

<%-- include 액션의 역할: 외부의 JSP를 실행하고 그 결과를 삽입시켜줌 --%>
<jsp:include page="/WEB-INF/views/common/bottom.jsp"/>





